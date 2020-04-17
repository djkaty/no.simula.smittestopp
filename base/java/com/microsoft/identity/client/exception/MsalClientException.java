package com.microsoft.identity.client.exception;

public final class MsalClientException extends MsalException {
    public static final String ADFS_AUTHORITY_VALIDATION_FAILED = "adfs_authority_validation_failed";
    public static final String APP_MANIFEST_VALIDATION_ERROR = "app_manifest_validation_error";
    public static final String AUTHORITY_VALIDATION_NOT_SUPPORTED = "authority_validation_not_supported";
    public static final String BROKER_BIND_FAILURE = "Failed to bind the service in broker app";
    public static final String BROKER_NOT_INSTALLED = "broker_not_installed";
    public static final String CHROME_NOT_INSTALLED = "chrome_not_installed";
    public static final String CURRENT_ACCOUNT_MISMATCH = "returned_account_does_not_match_current_account";
    public static final String DEVICE_NETWORK_NOT_AVAILABLE = "device_network_not_available";
    public static final String DUPLICATE_COMMAND = "duplicate_command";
    public static final String DUPLICATE_QUERY_PARAMETER = "duplicate_query_parameter";
    public static final String INVALID_JWT = "invalid_jwt";
    public static final String INVALID_PARAMETER = "invalid_parameter";
    public static final String IO_ERROR = "io_error";
    public static final String JSON_PARSE_FAILURE = "json_parse_failure";
    public static final String MALFORMED_URL = "malformed_url";
    public static final String MULTIPLE_MATCHING_TOKENS_DETECTED = "multiple_matching_tokens_detected";
    public static final String NOT_ELIGIBLE_TO_USE_BROKER = "not_eligible_to_use_broker";
    public static final String NO_CURRENT_ACCOUNT = "no_current_account";
    public static final String NO_SUCH_ALGORITHM = "no_such_algorithm";
    public static final String REDIRECT_URI_VALIDATION_ERROR = "redirect_uri_validation_error";
    public static final String SCOPE_EMPTY_OR_NULL = "scope_empty_or_null";
    public static final String STATE_MISMATCH = "state_mismatch";
    public static final String UNKNOWN_AUTHORITY = "unknown_authority";
    public static final String UNKNOWN_ERROR = "unknown_error";
    public static final String UNSUPPORTED_ENCODING = "unsupported_encoding";
    public static final String UNSUPPORTED_URL = "unsupported_url";
    public static final String USER_MISMATCH = "user_mismatch";

    public MsalClientException(String str) {
        super(str);
    }

    public MsalClientException(String str, String str2) {
        super(str, str2);
    }

    public MsalClientException(String str, String str2, Throwable th) {
        super(str, str2, th);
    }
}
