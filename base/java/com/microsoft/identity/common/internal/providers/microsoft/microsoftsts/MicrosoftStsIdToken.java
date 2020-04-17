package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftIdToken;

public class MicrosoftStsIdToken extends MicrosoftIdToken {
    public static final String AIO = "aio";
    public static final String EXPIRATION_TIME = "exp";
    public static final String UTI = "uti";

    public MicrosoftStsIdToken(String str) {
        super(str);
    }
}
