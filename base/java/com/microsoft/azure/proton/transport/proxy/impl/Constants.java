package com.microsoft.azure.proton.transport.proxy.impl;

import java.util.Locale;

public class Constants {
    public static final String BASIC = "Basic";
    public static final String BASIC_LOWERCASE = BASIC.toLowerCase(Locale.ROOT);
    public static final String CONNECT = "CONNECT";
    public static final String DIGEST = "Digest";
    public static final String DIGEST_LOWERCASE = DIGEST.toLowerCase(Locale.ROOT);
    public static final String PROXY_AUTHENTICATE_HEADER = "Proxy-Authenticate:";
    public static final String PROXY_AUTHORIZATION = "Proxy-Authorization";
}
