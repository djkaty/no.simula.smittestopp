package com.microsoft.azure.sdk.iot.device.transport;

import com.microsoft.azure.sdk.iot.device.ProxySettings;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocketFactory;

public class HttpProxySocketFactory extends SSLSocketFactory {
    public final SSLSocketFactory delegate;
    public final ProxySettings proxySettings;

    public interface SSLSocketFactoryNonDelegatedFunctions {
        Socket createSocket();
    }

    public HttpProxySocketFactory(SSLSocketFactory sSLSocketFactory, ProxySettings proxySettings2) {
        this.delegate = sSLSocketFactory;
        this.proxySettings = proxySettings2;
    }

    public Socket createSocket(String str, int i2) {
        return this.delegate.createSocket(str, i2);
    }

    public String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    public String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }

    public Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
        return this.delegate.createSocket(str, i2, inetAddress, i3);
    }

    public Socket createSocket(InetAddress inetAddress, int i2) {
        return this.delegate.createSocket(inetAddress, i2);
    }

    public Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        return this.delegate.createSocket(inetAddress, i2, inetAddress2, i3);
    }

    public Socket createSocket(Socket socket, InputStream inputStream, boolean z) {
        return this.delegate.createSocket(socket, inputStream, z);
    }

    public Socket createSocket(Socket socket, String str, int i2, boolean z) {
        return this.delegate.createSocket(socket, str, i2, z);
    }

    public Socket createSocket() {
        return new ProxiedSSLSocket(this.delegate, new Socket(this.proxySettings.getHostname(), this.proxySettings.getPort()), this.proxySettings.getUsername(), this.proxySettings.getPassword());
    }
}
