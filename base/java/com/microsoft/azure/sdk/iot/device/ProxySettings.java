package com.microsoft.azure.sdk.iot.device;

import java.net.InetSocketAddress;
import java.net.Proxy;

public class ProxySettings {
    public char[] password;
    public Proxy proxy;
    public String username;

    public ProxySettings(Proxy proxy2, String str, char[] cArr) {
        if (proxy2 == null) {
            throw new IllegalArgumentException("Proxy cannot be null");
        } else if (proxy2.type() != Proxy.Type.DIRECT) {
            this.proxy = proxy2;
            if (str != null && str.isEmpty()) {
                throw new IllegalArgumentException("Username cannot be an empty string");
            } else if (cArr == null || cArr.length != 0) {
                this.username = str;
                this.password = cArr;
            } else {
                throw new IllegalArgumentException("Password cannot be an empty string");
            }
        } else {
            throw new IllegalArgumentException("Proxy settings cannot be configured to be DIRECT");
        }
    }

    public String getHostname() {
        if (this.proxy.address() instanceof InetSocketAddress) {
            return ((InetSocketAddress) this.proxy.address()).getHostName();
        }
        throw new UnsupportedOperationException("Could not get port from saved proxy");
    }

    public char[] getPassword() {
        return this.password;
    }

    public int getPort() {
        if (this.proxy.address() instanceof InetSocketAddress) {
            return ((InetSocketAddress) this.proxy.address()).getPort();
        }
        throw new UnsupportedOperationException("Could not get port from saved proxy");
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public String getUsername() {
        return this.username;
    }

    public ProxySettings(Proxy proxy2) {
        this(proxy2, (String) null, (char[]) null);
    }
}
