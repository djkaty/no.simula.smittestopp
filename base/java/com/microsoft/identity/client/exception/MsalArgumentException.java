package com.microsoft.identity.client.exception;

public class MsalArgumentException extends MsalException {
    public static final String ACQUIRE_TOKEN_OPERATION_NAME = "acquireToken";
    public static final String ACQUIRE_TOKEN_SILENT_OPERATION_NAME = "acquireTokenSilent";
    public static final String AUTHORITY_REQUIRED_FOR_SILENT = "Authority must be specified for acquireTokenSilent";
    public static final String IACCOUNT_ARGUMENT_NAME = "account";
    public static final String ILLEGAL_ARGUMENT_ERROR_CODE = "illegal_argument_exception";
    public static final String SCOPE_ARGUMENT_NAME = "scopes";
    public String mArgumentName;
    public String mOperationName;

    public MsalArgumentException(String str, String str2) {
        super("illegal_argument_exception", str2);
        this.mArgumentName = str;
    }

    public String getArgumentName() {
        return this.mArgumentName;
    }

    public String getOperationName() {
        return this.mOperationName;
    }

    public MsalArgumentException(String str, String str2, String str3) {
        super("illegal_argument_exception", str3);
        this.mOperationName = str;
        this.mArgumentName = str2;
    }

    public MsalArgumentException(String str, String str2, String str3, Throwable th) {
        super("illegal_argument_exception", str3, th);
        this.mOperationName = str;
        this.mArgumentName = str2;
    }
}
