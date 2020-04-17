package com.microsoft.identity.common.internal.authscheme;

public abstract class TokenAuthenticationScheme extends AbstractAuthenticationScheme implements ITokenAuthenticationSchemeInternal {
    public static final String SCHEME_DELIMITER = " ";

    public TokenAuthenticationScheme(String str) {
        super(str);
    }
}
