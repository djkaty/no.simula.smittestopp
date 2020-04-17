package com.microsoft.azure.proton.transport.proxy.impl;

import com.microsoft.azure.proton.transport.proxy.ProxyConfiguration;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URL;
import java.util.List;
import java.util.Objects;

public class ProxyAuthenticator {
    public static final String PROMPT = "Event Hubs client web socket proxy support";
    public final ProxyConfiguration configuration;

    public ProxyAuthenticator() {
        this(ProxyConfiguration.SYSTEM_DEFAULTS);
    }

    public static boolean isPasswordAuthenticationHasValues(PasswordAuthentication passwordAuthentication) {
        if (passwordAuthentication == null) {
            return false;
        }
        String userName = passwordAuthentication.getUserName();
        char[] password = passwordAuthentication.getPassword();
        if (StringUtils.isNullOrEmpty(userName) || password == null || password.length <= 0) {
            return false;
        }
        return true;
    }

    public static boolean isProxyAddressLegal(List<Proxy> list) {
        if (list == null || list.isEmpty() || list.get(0).address() == null || !(list.get(0).address() instanceof InetSocketAddress)) {
            return false;
        }
        return true;
    }

    public PasswordAuthentication getPasswordAuthentication(String str, String str2) {
        InetAddress inetAddress;
        String str3;
        if (this.configuration.hasUserDefinedCredentials()) {
            return this.configuration.credentials();
        }
        if (this.configuration.isProxyAddressConfigured()) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) this.configuration.proxyAddress().address();
            return Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), inetSocketAddress.getAddress(), 0, (String) null, PROMPT, str, (URL) null, Authenticator.RequestorType.PROXY);
        }
        Proxy.Type type = null;
        List<Proxy> select = !StringUtils.isNullOrEmpty(str2) ? ProxySelector.getDefault().select(URI.create(str2)) : null;
        if (isProxyAddressLegal(select)) {
            inetAddress = ((InetSocketAddress) select.get(0).address()).getAddress();
            type = select.get(0).type();
        } else {
            inetAddress = null;
        }
        if (type == null) {
            str3 = "";
        } else {
            str3 = type.name();
        }
        return Authenticator.requestPasswordAuthentication("", inetAddress, 0, str3, PROMPT, str, (URL) null, Authenticator.RequestorType.PROXY);
    }

    public ProxyAuthenticator(ProxyConfiguration proxyConfiguration) {
        Objects.requireNonNull(proxyConfiguration);
        this.configuration = proxyConfiguration;
    }
}
