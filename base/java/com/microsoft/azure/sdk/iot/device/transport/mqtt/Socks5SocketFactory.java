package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.SocketFactory;

public class Socks5SocketFactory extends SocketFactory {
    public final InetAddress mProxyHost;
    public final int mProxyPort;

    public class Socks5Socket extends Socket {
        public static final int ATYP_DOMAINNAME = 3;
        public static final int ATYP_IPV4 = 1;
        public static final int ATYP_IPV6 = 4;
        public static final int CMD_CONNECT = 1;
        public String mLocalHost;
        public InetAddress mLocalIP;
        public Proxied mProxied;
        public InetSocketAddress mTarget;

        public class Proxied {
            public String mHost;
            public InetAddress mIp;
            public int mPort;

            public Proxied(InputStream inputStream) {
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                dataInputStream.readUnsignedByte();
                if (dataInputStream.readUnsignedByte() == 0) {
                    dataInputStream.readUnsignedByte();
                    int readUnsignedByte = dataInputStream.readUnsignedByte();
                    if (readUnsignedByte == 1) {
                        byte[] bArr = new byte[4];
                        dataInputStream.readFully(bArr);
                        this.mHost = String.format("%s.%s.%s.%s", new Object[]{Integer.valueOf(bArr[0] & 255), Integer.valueOf(bArr[1] & 255), Integer.valueOf(bArr[2] & 255), Integer.valueOf(bArr[3] & 255)});
                    } else if (readUnsignedByte == 3) {
                        byte[] bArr2 = new byte[dataInputStream.readUnsignedByte()];
                        dataInputStream.readFully(bArr2);
                        this.mHost = new String(bArr2);
                    } else if (readUnsignedByte != 4) {
                        throw new IOException();
                    } else {
                        throw new IOException();
                    }
                    this.mPort = dataInputStream.readUnsignedShort();
                    if (readUnsignedByte != 3) {
                        try {
                            this.mIp = InetAddress.getByName(this.mHost);
                        } catch (UnknownHostException unused) {
                        }
                    }
                } else {
                    throw new IOException();
                }
            }
        }

        public Socks5Socket() {
        }

        public void connect(SocketAddress socketAddress, int i2) {
            this.mTarget = (InetSocketAddress) socketAddress;
            if (isLocal()) {
                super.connect(new InetSocketAddress(getDirectInetAddress(), this.mTarget.getPort()), 1000);
            } else {
                connectViaProxy(i2);
            }
        }

        public void connectViaProxy(int i2) {
            super.connect(new InetSocketAddress(Socks5SocketFactory.this.mProxyHost, Socks5SocketFactory.this.mProxyPort), i2);
            sendConnectCommand();
            Proxied proxied = new Proxied(getInputStream());
            this.mProxied = proxied;
            if (!proxied.mHost.equals("0.0.0.0")) {
                Proxied proxied2 = this.mProxied;
                this.mLocalHost = proxied2.mHost;
                this.mLocalIP = proxied2.mIp;
                return;
            }
            InetAddress access$100 = Socks5SocketFactory.this.mProxyHost;
            this.mLocalIP = access$100;
            this.mLocalHost = access$100.getHostName();
        }

        public byte[] getConnectCmd() {
            byte[] bytes = this.mTarget.getHostName().getBytes();
            int length = bytes.length + 7;
            byte[] bArr = new byte[length];
            bArr[0] = 5;
            bArr[1] = 1;
            bArr[2] = 0;
            bArr[3] = 3;
            bArr[4] = (byte) bytes.length;
            System.arraycopy(bytes, 0, bArr, 5, bytes.length);
            bArr[length - 2] = (byte) (this.mTarget.getPort() >> 8);
            bArr[length - 1] = (byte) this.mTarget.getPort();
            return bArr;
        }

        public InetAddress getDirectInetAddress() {
            String hostName;
            InetSocketAddress inetSocketAddress = this.mTarget;
            if (inetSocketAddress != null && (hostName = inetSocketAddress.getHostName()) != null) {
                return InetAddress.getByName(hostName);
            }
            throw new IOException();
        }

        public InetAddress getLocalAddress() {
            if (isLocal()) {
                return super.getLocalAddress();
            }
            if (this.mLocalIP == null) {
                try {
                    this.mLocalIP = InetAddress.getByName(this.mLocalHost);
                } catch (UnknownHostException unused) {
                }
            }
            return this.mLocalIP;
        }

        public int getLocalPort() {
            return isLocal() ? super.getLocalPort() : this.mProxied.mPort;
        }

        public boolean isLocal() {
            try {
                InetAddress directInetAddress = getDirectInetAddress();
                if (directInetAddress == null || !directInetAddress.isSiteLocalAddress()) {
                    return false;
                }
                return true;
            } catch (IOException unused) {
                return false;
            }
        }

        public void sendConnectCommand() {
            InputStream inputStream = getInputStream();
            OutputStream outputStream = getOutputStream();
            try {
                outputStream.write(new byte[]{5, 1, 0});
                outputStream.flush();
                int read = inputStream.read();
                int read2 = inputStream.read();
                if (read < 0 || read2 != 0) {
                    close();
                    throw new IOException();
                } else {
                    outputStream.write(getConnectCmd());
                }
            } catch (SocketException | UnknownHostException e2) {
                close();
                throw new IOException(e2);
            }
        }
    }

    public Socks5SocketFactory(String str, int i2) {
        this.mProxyHost = InetAddress.getByName(str);
        this.mProxyPort = i2;
    }

    public Socket createSocket() {
        return new Socks5Socket();
    }

    public Socket createSocket(InetAddress inetAddress, int i2) {
        return createSocket(inetAddress.getHostName(), i2, (InetAddress) null, 0);
    }

    public Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return createSocket(inetAddress.getHostName(), i2, inetAddress2, i3);
    }

    public Socket createSocket(String str, int i2) {
        return createSocket(str, i2, (InetAddress) null, 0);
    }

    public Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        Socket createSocket = createSocket();
        if (inetAddress != null) {
            createSocket.bind(new InetSocketAddress(inetAddress, i3));
        }
        createSocket.connect(new InetSocketAddress(str, i2));
        return createSocket;
    }
}
