package com.microsoft.azure.proton.transport.proxy;

import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.util.Arrays;
import java.util.Objects;
import k.f.b;
import k.f.c;

public class ProxyConfiguration implements AutoCloseable {
    public static final b LOGGER = c.a((Class<?>) ProxyConfiguration.class);
    public static final ProxyConfiguration SYSTEM_DEFAULTS = new ProxyConfiguration();
    public final ProxyAuthenticationType authentication;
    public final PasswordAuthentication credentials;
    public final Proxy proxyAddress;

    public ProxyConfiguration() {
        this.authentication = null;
        this.credentials = null;
        this.proxyAddress = null;
    }

    public ProxyAuthenticationType authentication() {
        return this.authentication;
    }

    public void close() {
        PasswordAuthentication passwordAuthentication = this.credentials;
        if (passwordAuthentication != null) {
            Arrays.fill(passwordAuthentication.getPassword(), 0);
        }
    }

    public PasswordAuthentication credentials() {
        return this.credentials;
    }

    public boolean hasUserDefinedCredentials() {
        return this.credentials != null;
    }

    public boolean isProxyAddressConfigured() {
        Proxy proxy = this.proxyAddress;
        return (proxy == null || proxy.address() == null) ? false : true;
    }

    public Proxy proxyAddress() {
        return this.proxyAddress;
    }

    public ProxyConfiguration(ProxyAuthenticationType proxyAuthenticationType, Proxy proxy, String str, String str2) {
        Objects.requireNonNull(proxyAuthenticationType);
        this.proxyAddress = proxy;
        this.authentication = proxyAuthenticationType;
        if (str == null || str2 == null) {
            if (LOGGER.a()) {
                LOGGER.c("username or password is null. Using system-wide authentication.");
            }
            this.credentials = null;
            return;
        }
        this.credentials = new PasswordAuthentication(str, str2.toCharArray());
    }
}
