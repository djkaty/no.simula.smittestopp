package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import k.f.b;
import k.f.c;
import lombok.NonNull;

public class ProxiedSSLSocket extends SSLSocket {
    public static final String HTTP = "HTTP/";
    public static final String HTTP_VERSION_1_1 = "HTTP/1.1";
    public static final b log = c.a((Class<?>) ProxiedSSLSocket.class);
    public char[] proxyPassword;
    public final Socket proxySocket;
    public String proxyUsername;
    public final SSLSocketFactory socketFactory;
    public SSLSocket sslSocket;

    public class HttpConnectResponseReader {
        public boolean alreadyRead = false;
        @NonNull
        public Charset byteEncoding;
        @NonNull
        public InputStream inputStream;

        public HttpConnectResponseReader(@NonNull InputStream inputStream2, @NonNull Charset charset) {
            if (inputStream2 == null) {
                throw new NullPointerException("inputStream is marked non-null but is null");
            } else if (charset != null) {
                this.inputStream = inputStream2;
                this.byteEncoding = charset;
            } else {
                throw new NullPointerException("byteEncoding is marked non-null but is null");
            }
        }

        public boolean isCRLF(List<Integer> list) {
            if (list.size() >= 4 && list.get(0).intValue() == 13 && list.get(1).intValue() == 10 && list.get(2).intValue() == 13 && list.get(3).intValue() == 10) {
                return true;
            }
            return false;
        }

        public String readHttpConnectResponse() {
            if (!this.alreadyRead) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                LinkedList linkedList = new LinkedList();
                while (!isCRLF(linkedList)) {
                    int read = this.inputStream.read();
                    if (read != -1) {
                        byteArrayOutputStream.write(read);
                        if (linkedList.size() == 4) {
                            linkedList.poll();
                        }
                        linkedList.offer(Integer.valueOf(read));
                    } else {
                        this.inputStream.close();
                        throw new IOException("Unexpected EOF from proxy");
                    }
                }
                String str = new String(byteArrayOutputStream.toByteArray(), this.byteEncoding);
                byteArrayOutputStream.close();
                this.alreadyRead = true;
                return str;
            }
            throw new IOException("Http connect response has already been read");
        }
    }

    public interface ProxiedSSLSocketNonDelegatedFunctions {
        void close();

        void connect(SocketAddress socketAddress);

        void connect(SocketAddress socketAddress, int i2);
    }

    public ProxiedSSLSocket(SSLSocketFactory sSLSocketFactory, Socket socket, String str, char[] cArr) {
        this.socketFactory = sSLSocketFactory;
        this.proxySocket = socket;
        this.proxyUsername = str;
        this.proxyPassword = cArr;
    }

    private void doTunnelHandshake(Socket socket, String str, int i2) {
        String str2;
        Object obj;
        byte[] bArr;
        String str3 = str;
        Charset charset = StandardCharsets.UTF_8;
        OutputStream outputStream = socket.getOutputStream();
        String str4 = str3 + ":" + i2;
        if (this.proxyUsername == null || this.proxyPassword == null) {
            str2 = String.format("CONNECT %s %s\r\nHost: %s\r\n\r\n", new Object[]{str4, HTTP_VERSION_1_1, str4});
        } else {
            byte[] bytes = String.format("%s:%s", new Object[]{this.proxyUsername, new String(this.proxyPassword)}).getBytes(charset);
            if (bytes == null || bytes.length == 0) {
                obj = HTTP_VERSION_1_1;
                bArr = bytes;
            } else {
                k.a.a.a.b.b bVar = new k.a.a.a.b.b(0, k.a.a.a.b.b.f1536j, false);
                int length = bytes.length;
                int i3 = bVar.b;
                long j2 = (long) (((length + i3) - 1) / i3);
                int i4 = bVar.f1543c;
                obj = HTTP_VERSION_1_1;
                long j3 = j2 * ((long) i4);
                int i5 = bVar.f1544d;
                if (i5 > 0) {
                    long j4 = (long) i5;
                    j3 = ((((j4 + j3) - 1) / j4) * ((long) bVar.f1545e)) + j3;
                }
                byte[] bArr2 = bytes;
                if (j3 <= ((long) Integer.MAX_VALUE)) {
                    bArr = bVar.b(bArr2);
                } else {
                    throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + j3 + ") than the specified maximum size of " + Integer.MAX_VALUE);
                }
            }
            str2 = String.format("CONNECT %s %s\r\nHost: %s\r\nProxy-Authorization: Basic %s\r\n\r\n", new Object[]{str4, obj, str4, new String(bArr)});
        }
        outputStream.write(str2.getBytes(charset));
        outputStream.flush();
        String[] split = new HttpConnectResponseReader(socket.getInputStream(), charset).readHttpConnectResponse().split(ProxyHandlerImpl.NEW_LINE);
        int i6 = 0;
        while (split[i6].isEmpty()) {
            i6++;
        }
        String str5 = split[i6];
        if (str5.startsWith(HTTP)) {
            String[] split2 = str5.split(" ");
            if (split2.length >= 2) {
                try {
                    int parseInt = Integer.parseInt(split2[1]);
                    if (parseInt <= 199 || parseInt >= 300) {
                        socket.close();
                        throw new IOException(String.format("Unable to tunnel through %s:%d. Expected proxy response to CONNECT to return status code 2XX but status code was %d", new Object[]{str3, Integer.valueOf(i2), Integer.valueOf(parseInt)}));
                    }
                    log.d("HTTP proxy responded to connect request with status {}, so the proxy connect was successful", (Object) Integer.valueOf(parseInt));
                } catch (NumberFormatException unused) {
                    socket.close();
                    throw new IOException(String.format("Unable to tunnel through %s:%d. Expected proxy response to CONNECT to contain a status code but status code could not be parsed. Response was %s", new Object[]{str3, Integer.valueOf(i2), str5}));
                }
            } else {
                socket.close();
                throw new IOException(String.format("Unable to tunnel through %s:%d. Expected proxy response to CONNECT to contain a space between http version and status code, but was %s", new Object[]{str3, Integer.valueOf(i2), str5}));
            }
        } else {
            socket.close();
            throw new IOException(String.format("Unable to tunnel through %s:%d.  Expected first response line to start with %s, but proxy returns \"%s\"", new Object[]{str3, Integer.valueOf(i2), HTTP, str5}));
        }
    }

    public void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.sslSocket.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    public void bind(SocketAddress socketAddress) {
        this.sslSocket.bind(socketAddress);
    }

    public void close() {
        this.proxySocket.close();
        this.sslSocket.close();
    }

    public void connect(SocketAddress socketAddress) {
        connect(socketAddress, 0);
    }

    public SocketChannel getChannel() {
        return this.sslSocket.getChannel();
    }

    public boolean getEnableSessionCreation() {
        return this.sslSocket.getEnableSessionCreation();
    }

    public String[] getEnabledCipherSuites() {
        return this.sslSocket.getEnabledCipherSuites();
    }

    public String[] getEnabledProtocols() {
        return this.sslSocket.getEnabledProtocols();
    }

    public SSLSession getHandshakeSession() {
        return this.sslSocket.getHandshakeSession();
    }

    public InetAddress getInetAddress() {
        return this.sslSocket.getInetAddress();
    }

    public InputStream getInputStream() {
        return this.sslSocket.getInputStream();
    }

    public boolean getKeepAlive() {
        return this.sslSocket.getKeepAlive();
    }

    public InetAddress getLocalAddress() {
        return this.sslSocket.getLocalAddress();
    }

    public int getLocalPort() {
        return this.sslSocket.getLocalPort();
    }

    public SocketAddress getLocalSocketAddress() {
        return this.sslSocket.getLocalSocketAddress();
    }

    public boolean getNeedClientAuth() {
        return this.sslSocket.getNeedClientAuth();
    }

    public boolean getOOBInline() {
        return this.sslSocket.getOOBInline();
    }

    public OutputStream getOutputStream() {
        return this.sslSocket.getOutputStream();
    }

    public int getPort() {
        return this.sslSocket.getPort();
    }

    public int getReceiveBufferSize() {
        return this.sslSocket.getReceiveBufferSize();
    }

    public SocketAddress getRemoteSocketAddress() {
        return this.sslSocket.getRemoteSocketAddress();
    }

    public boolean getReuseAddress() {
        return this.sslSocket.getReuseAddress();
    }

    public SSLParameters getSSLParameters() {
        return this.sslSocket.getSSLParameters();
    }

    public int getSendBufferSize() {
        return this.sslSocket.getSendBufferSize();
    }

    public SSLSession getSession() {
        return this.sslSocket.getSession();
    }

    public int getSoLinger() {
        return this.sslSocket.getSoLinger();
    }

    public int getSoTimeout() {
        return this.sslSocket.getSoTimeout();
    }

    public String[] getSupportedCipherSuites() {
        return this.sslSocket.getSupportedCipherSuites();
    }

    public String[] getSupportedProtocols() {
        return this.sslSocket.getSupportedProtocols();
    }

    public boolean getTcpNoDelay() {
        return this.sslSocket.getTcpNoDelay();
    }

    public int getTrafficClass() {
        return this.sslSocket.getTrafficClass();
    }

    public boolean getUseClientMode() {
        return this.sslSocket.getUseClientMode();
    }

    public boolean getWantClientAuth() {
        return this.sslSocket.getWantClientAuth();
    }

    public boolean isBound() {
        return this.sslSocket.isBound();
    }

    public boolean isClosed() {
        return this.sslSocket.isClosed();
    }

    public boolean isConnected() {
        return this.sslSocket.isConnected();
    }

    public boolean isInputShutdown() {
        return this.sslSocket.isInputShutdown();
    }

    public boolean isOutputShutdown() {
        return this.sslSocket.isOutputShutdown();
    }

    public void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.sslSocket.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    public void sendUrgentData(int i2) {
        this.sslSocket.sendUrgentData(i2);
    }

    public void setEnableSessionCreation(boolean z) {
        this.sslSocket.setEnableSessionCreation(z);
    }

    public void setEnabledCipherSuites(String[] strArr) {
        this.sslSocket.setEnabledCipherSuites(strArr);
    }

    public void setEnabledProtocols(String[] strArr) {
        this.sslSocket.setEnabledProtocols(strArr);
    }

    public void setKeepAlive(boolean z) {
        this.sslSocket.setKeepAlive(z);
    }

    public void setNeedClientAuth(boolean z) {
        this.sslSocket.setNeedClientAuth(z);
    }

    public void setOOBInline(boolean z) {
        this.sslSocket.setOOBInline(z);
    }

    public void setPerformancePreferences(int i2, int i3, int i4) {
        this.sslSocket.setPerformancePreferences(i2, i3, i4);
    }

    public void setReceiveBufferSize(int i2) {
        this.sslSocket.setReceiveBufferSize(i2);
    }

    public void setReuseAddress(boolean z) {
        this.sslSocket.setReuseAddress(z);
    }

    public void setSSLParameters(SSLParameters sSLParameters) {
        this.sslSocket.setSSLParameters(sSLParameters);
    }

    public void setSendBufferSize(int i2) {
        this.sslSocket.setSendBufferSize(i2);
    }

    public void setSoLinger(boolean z, int i2) {
        this.sslSocket.setSoLinger(z, i2);
    }

    public void setSoTimeout(int i2) {
        this.sslSocket.setSoTimeout(i2);
    }

    public void setTcpNoDelay(boolean z) {
        this.sslSocket.setTcpNoDelay(z);
    }

    public void setTrafficClass(int i2) {
        this.sslSocket.setTrafficClass(i2);
    }

    public void setUseClientMode(boolean z) {
        this.sslSocket.setUseClientMode(z);
    }

    public void setWantClientAuth(boolean z) {
        this.sslSocket.setWantClientAuth(z);
    }

    public void shutdownInput() {
        this.sslSocket.shutdownInput();
    }

    public void shutdownOutput() {
        this.sslSocket.shutdownOutput();
    }

    public void startHandshake() {
        this.sslSocket.startHandshake();
    }

    public void connect(SocketAddress socketAddress, int i2) {
        log.b("Sending tunnel handshake to HTTP proxy");
        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
        doTunnelHandshake(this.proxySocket, inetSocketAddress.getHostName(), inetSocketAddress.getPort());
        log.b("Handshake to HTTP proxy succeeded");
        this.sslSocket = (SSLSocket) this.socketFactory.createSocket(this.proxySocket, inetSocketAddress.getHostName(), inetSocketAddress.getPort(), true);
    }
}
