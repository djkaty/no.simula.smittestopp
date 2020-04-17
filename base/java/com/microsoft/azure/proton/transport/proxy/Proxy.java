package com.microsoft.azure.proton.transport.proxy;

import java.util.Map;
import k.a.b.a.d.c0;

public interface Proxy {

    public enum ProxyState {
        PN_PROXY_NOT_STARTED,
        PN_PROXY_CONNECTING,
        PN_PROXY_CHALLENGE,
        PN_PROXY_CHALLENGE_RESPONDED,
        PN_PROXY_CONNECTED,
        PN_PROXY_FAILED
    }

    void configure(String str, Map<String, String> map, ProxyHandler proxyHandler, c0 c0Var);
}
