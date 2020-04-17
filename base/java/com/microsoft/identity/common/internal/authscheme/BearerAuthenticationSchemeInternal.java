package com.microsoft.identity.common.internal.authscheme;

public class BearerAuthenticationSchemeInternal extends TokenAuthenticationScheme implements ITokenAuthenticationSchemeInternal {
    public static final String SCHEME_BEARER = "Bearer";

    public BearerAuthenticationSchemeInternal() {
        super("Bearer");
    }

    public String getAccessTokenForScheme(String str) {
        return str;
    }
}
