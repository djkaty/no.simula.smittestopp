package com.microsoft.azure.proton.transport.proxy.impl;

import com.microsoft.azure.proton.transport.proxy.ProxyChallengeProcessor;
import java.net.PasswordAuthentication;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class BasicProxyChallengeProcessorImpl implements ProxyChallengeProcessor {
    public final Map<String, String> headers = new HashMap();
    public String host;
    public final ProxyAuthenticator proxyAuthenticator;

    public BasicProxyChallengeProcessorImpl(String str, ProxyAuthenticator proxyAuthenticator2) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(proxyAuthenticator2);
        this.host = str;
        this.proxyAuthenticator = proxyAuthenticator2;
    }

    public Map<String, String> getHeader() {
        PasswordAuthentication passwordAuthentication = this.proxyAuthenticator.getPasswordAuthentication(Constants.BASIC_LOWERCASE, this.host);
        if (!ProxyAuthenticator.isPasswordAuthenticationHasValues(passwordAuthentication)) {
            return null;
        }
        String a = b.a(":", new CharSequence[]{passwordAuthentication.getUserName(), new String(passwordAuthentication.getPassword())});
        this.headers.put(Constants.PROXY_AUTHORIZATION, b.a(" ", new CharSequence[]{Constants.BASIC, Base64.getEncoder().encodeToString(a.getBytes(StandardCharsets.UTF_8))}));
        return this.headers;
    }
}
