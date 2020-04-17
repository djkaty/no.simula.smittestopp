package com.microsoft.identity.common.exception;

public class ArgumentException extends BaseException {
    public static final String ACQUIRE_TOKEN_OPERATION_NAME = "acquireToken";
    public static final String ACQUIRE_TOKEN_SILENT_OPERATION_NAME = "acquireTokenSilent";
    public static final String AUTHENTICATION_SCHEME_ARGUMENT_NAME = "authentication_scheme";
    public static final String AUTHORITY_ARGUMENT_NAME = "authority";
    public static final String BROKER_TOKEN_REQUEST_OPERATION_NAME = "brokerTokenRequest";
    public static final String IACCOUNT_ARGUMENT_NAME = "account";
    public static final String ILLEGAL_ARGUMENT_ERROR_CODE = "illegal_argument_exception";
    public static final String SCOPE_ARGUMENT_NAME = "scopes";
    public static final String sName = ArgumentException.class.getName();
    public String mArgumentName;
    public String mOperationName;

    public ArgumentException(String str, String str2, String str3) {
        super("illegal_argument_exception", str3);
        this.mOperationName = str;
        this.mArgumentName = str2;
    }

    public String getArgumentName() {
        return this.mArgumentName;
    }

    public String getExceptionName() {
        return sName;
    }

    public String getOperationName() {
        return this.mOperationName;
    }

    public ArgumentException(String str, String str2, String str3, Throwable th) {
        super("illegal_argument_exception", str3, th);
        this.mOperationName = str;
        this.mArgumentName = str2;
    }
}
