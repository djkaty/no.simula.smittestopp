package com.microsoft.appcenter.http;

import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public class TLS1_2SocketFactory extends SSLSocketFactory {
    public static final String[] ENABLED_PROTOCOLS = {"TLSv1.2"};
    public static final String TLS1_2_PROTOCOL = "TLSv1.2";
    public final SSLSocketFactory delegate;

    public TLS1_2SocketFactory() {
        SSLSocketFactory sSLSocketFactory = null;
        try {
            SSLContext instance = SSLContext.getInstance("TLSv1.2");
            instance.init((KeyManager[]) null, (TrustManager[]) null, (SecureRandom) null);
            sSLSocketFactory = instance.getSocketFactory();
        } catch (KeyManagementException | NoSuchAlgorithmException unused) {
        }
        this.delegate = sSLSocketFactory == null ? HttpsURLConnection.getDefaultSSLSocketFactory() : sSLSocketFactory;
    }

    private SSLSocket forceTLS1_2(Socket socket) {
        SSLSocket sSLSocket = (SSLSocket) socket;
        sSLSocket.setEnabledProtocols(ENABLED_PROTOCOLS);
        return sSLSocket;
    }

    public String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    public String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }

    public SSLSocket createSocket() {
        return forceTLS1_2(this.delegate.createSocket());
    }

    public SSLSocket createSocket(String str, int i2) {
        return forceTLS1_2(this.delegate.createSocket(str, i2));
    }

    public SSLSocket createSocket(InetAddress inetAddress, int i2) {
        return forceTLS1_2(this.delegate.createSocket(inetAddress, i2));
    }

    public SSLSocket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        return forceTLS1_2(this.delegate.createSocket(str, i2, inetAddress, i3));
    }

    public SSLSocket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return forceTLS1_2(this.delegate.createSocket(inetAddress, i2, inetAddress2, i3));
    }

    public SSLSocket createSocket(Socket socket, String str, int i2, boolean z) {
        return forceTLS1_2(this.delegate.createSocket(socket, str, i2, z));
    }
}
