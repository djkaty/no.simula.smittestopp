package com.microsoft.identity.client.exception;

public final class MsalUiRequiredException extends MsalException {
    public static final String INVALID_GRANT = "invalid_grant";
    public static final String NO_ACCOUNT_FOUND = "no_account_found";
    public static final String NO_TOKENS_FOUND = "no_tokens_found";

    public MsalUiRequiredException(String str) {
        super(str);
    }

    public MsalUiRequiredException(String str, String str2) {
        super(str, str2);
    }

    public MsalUiRequiredException(String str, String str2, Throwable th) {
        super(str, str2, th);
    }
}
