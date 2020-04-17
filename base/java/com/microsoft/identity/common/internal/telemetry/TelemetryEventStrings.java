package com.microsoft.identity.common.internal.telemetry;

public final class TelemetryEventStrings {
    public static final String EVENT_PREFIX = "Microsoft.MSAL.";

    public static final class Api {
        public static final String BROKER_ACQUIRE_TOKEN_INTERACTIVE = "201";
        public static final String BROKER_ACQUIRE_TOKEN_SILENT = "203";
        public static final String BROKER_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE = "202";
        public static final String BROKER_GET_ACCOUNTS = "206";
        public static final String BROKER_GET_CURRENT_ACCOUNT = "205";
        public static final String BROKER_REMOVE_ACCOUNT = "207";
        public static final String BROKER_REMOVE_ACCOUNT_FROM_SHARED_DEVICE = "208";
        public static final String GET_BROKER_DEVICE_MODE = "204";
        public static final String LOCAL_ACQUIRE_TOKEN_INTERACTIVE = "101";
        public static final String LOCAL_ACQUIRE_TOKEN_SILENT = "103";
        public static final String LOCAL_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE = "1032";
        public static final String LOCAL_GET_ACCOUNTS = "106";
        public static final String LOCAL_REMOVE_ACCOUNT = "107";
    }

    public static final class App {
        public static final String BUILD = "Microsoft.MSAL.application_build";
        public static final String NAME = "Microsoft.MSAL.application_name";
        public static final String VERSION = "Microsoft.MSAL.application_version";
    }

    public static final class Device {
        public static final String ID = "Microsoft.MSAL.device_id";
        public static final String MANUFACTURER = "Microsoft.MSAL.device_manufacturer";
        public static final String MODEL = "Microsoft.MSAL.device_model";
        public static final String NAME = "Microsoft.MSAL.device_name";
        public static final String TIMEZONE = "Microsoft.MSAL.time_zone";
    }

    public static final class Event {
        public static final String API_END_EVENT = "api_end_event";
        public static final String API_START_EVENT = "api_start_event";
        public static final String BROKER_END_EVENT = "broker_end_event";
        public static final String BROKER_START_EVENT = "broker_start_event";
        public static final String CACHE_END_EVENT = "cache_end_event";
        public static final String CACHE_START_EVENT = "cache_start_event";
        public static final String HTTP_END_EVENT = "http_end_event";
        public static final String HTTP_START_EVENT = "http_start_event";
        public static final String UI_END_EVENT = "ui_end_event";
        public static final String UI_START_EVENT = "ui_start_event";
    }

    public static final class EventType {
        public static final String API_EVENT = "Microsoft.MSAL.api_event";
        public static final String BROKER_EVENT = "Microsoft.MSAL.broker_event";
        public static final String CACHE_EVENT = "Microsoft.MSAL.cache_event";
        public static final String HTTP_EVENT = "Microsoft.MSAL.http_event";
        public static final String UI_EVENT = "Microsoft.MSAL.ui_event";
    }

    public static final class Key {
        public static final String ACCOUNTS_NUMBER = "Microsoft.MSAL.accounts_number";
        public static final String ACCOUNT_STATUS = "Microsoft.MSAL.account_status";
        public static final String API_ID = "Microsoft.MSAL.api_id";
        public static final String AT_STATUS = "Microsoft.MSAL.at_status";
        public static final String AUTHORITY = "Microsoft.MSAL.authority";
        public static final String AUTHORITY_NAME = "Microsoft.MSAL.authority_name";
        public static final String AUTHORITY_TYPE = "Microsoft.MSAL.authority_type";
        public static final String AUTHORITY_VALIDATION_STATUS = "Microsoft.MSAL.authority_validation_status";
        public static final String BROKER_ACTION = "Microsoft.MSAL.broker_action";
        public static final String BROKER_APP = "Microsoft.MSAL.broker_app";
        public static final String BROKER_APP_USED = "Microsoft.MSAL.broker_app_used";
        public static final String BROKER_PROTOCOL_VERSION = "Microsoft.MSAL.broker_protocol_version";
        public static final String BROKER_STRATEGY = "Microsoft.MSAL.broker_strategy";
        public static final String BROKER_VERSION = "Microsoft.MSAL.broker_version";
        public static final String CACHE_EVENT_COUNT = "Microsoft.MSAL.cache_event_count";
        public static final String CLAIM_REQUEST = "Microsoft.MSAL.claim_request";
        public static final String CLIENT_ID = "Microsoft.MSAL.client_id";
        public static final String CORRELATION_ID = "Microsoft.MSAL.correlation_id";
        public static final String END_TIME = "Microsoft.MSAL.stop_time";
        public static final String ERROR_CODE = "Microsoft.MSAL.api_error_code";
        public static final String ERROR_DESCRIPTION = "Microsoft.MSAL.error_description";
        public static final String ERROR_DOMAIN = "Microsoft.MSAL.error_domain";
        public static final String EVENT_NAME = "Microsoft.MSAL.event_name";
        public static final String EVENT_TYPE = "Microsoft.MSAL.event_type";
        public static final String EXTENDED_EXPIRES_ON_SETTING = "Microsoft.MSAL.extended_expires_on_setting";
        public static final String FRT_STATUS = "Microsoft.MSAL.frt_status";
        public static final String GRANT_TYPE = "Microsoft.MSAL.grant_type";
        public static final String HTTP_ERROR_DOMAIN = "Microsoft.MSAL.http_error_domain";
        public static final String HTTP_EVENT_COUNT = "Microsoft.MSAL.http_event_count";
        public static final String HTTP_METHOD = "Microsoft.MSAL.method";
        public static final String HTTP_PATH = "Microsoft.MSAL.http_path";
        public static final String HTTP_REQUEST_ID_HEADER = "Microsoft.MSAL.x_ms_request_id";
        public static final String HTTP_RESPONSE_CODE = "Microsoft.MSAL.response_code";
        public static final String IDP_NAME = "Microsoft.MSAL.idp";
        public static final String ID_TOKEN_STATUS = "Microsoft.MSAL.id_token_status";
        public static final String IS_AT = "Microsoft.MSAL.is_at";
        public static final String IS_DEVICE_SHARED = "Microsoft.MSAL.is_device_shared";
        public static final String IS_FORCE_PROMPT = "Microsoft.MSAL.force_prompt";
        public static final String IS_FORCE_REFRESH = "Microsoft.MSAL.force_refresh";
        public static final String IS_FRT = "Microsoft.MSAL.is_frt";
        public static final String IS_MRRT = "Microsoft.MSAL.is_mrrt";
        public static final String IS_RT = "Microsoft.MSAL.is_rt";
        public static final String IS_SUCCESSFUL = "_is_successful";
        public static final String LOGIN_HINT = "Microsoft.MSAL.login_hint";
        public static final String MRRT_STATUS = "Microsoft.MSAL.mrrt_status";
        public static final String NETWORK_CONNECTION = "Microsoft.MSAL.network_connection";
        public static final String NTLM_HANDLED = "Microsoft.MSAL.ntlm";
        public static final String OAUTH_ERROR_CODE = "Microsoft.MSAL.oauth_error_code";
        public static final String OCCUR_TIME = "Microsoft.MSAL.occur_time";
        public static final String POWER_OPTIMIZATION = "Microsoft.MSAL.power_optimization";
        public static final String PROMPT_BEHAVIOR = "Microsoft.MSAL.prompt_behavior";
        public static final String REDIRECT_URI = "Microsoft.MSAL.redirect_uri";
        public static final String REQUEST_CODE = "Microsoft.MSAL.request_code";
        public static final String REQUEST_QUERY_PARAMS = "Microsoft.MSAL.query_params";
        public static final String RESPONSE_TIME = "response_time";
        public static final String RESULT_CODE = "Microsoft.MSAL.result_code";
        public static final String RT_AGE = "Microsoft.MSAL.rt_age";
        public static final String RT_STATUS = "Microsoft.MSAL.rt_status";
        public static final String SCOPE = "Microsoft.MSAL.scope_value";
        public static final String SCOPE_SIZE = "Microsoft.MSAL.scope_size";
        public static final String SDK_NAME = "Microsoft.MSAL.sdk_name";
        public static final String SDK_VERSION = "Microsoft.MSAL.sdk_version";
        public static final String SERVER_ERROR_CODE = "Microsoft.MSAL.server_error_code";
        public static final String SERVER_SUBERROR_CODE = "Microsoft.MSAL.server_sub_error_code";
        public static final String SPE_INFO = "Microsoft.MSAL.spe_info";
        public static final String SPE_RING = "Microsoft.MSAL.spe_ring";
        public static final String START_TIME = "Microsoft.MSAL.start_time";
        public static final String TENANT_ID = "Microsoft.MSAL.tenant_id";
        public static final String TOKEN_TYPE = "Microsoft.MSAL.token_type";
        public static final String UI_CANCELLED = "Microsoft.MSAL.ui_cancelled";
        public static final String UI_COMPLETE = "Microsoft.MSAL.ui_complete";
        public static final String UI_EVENT_COUNT = "Microsoft.MSAL.ui_event_count";
        public static final String USER_AGENT = "Microsoft.MSAL.user_agent";
        public static final String USER_CANCEL = "Microsoft.MSAL.user_cancel";
        public static final String USER_ID = "Microsoft.MSAL.user_id";
        public static final String V1_ID_TOKEN_STATUS = "Microsoft.MSAL.v1_id_token_status";
        public static final String WIPE_APP = "Microsoft.MSAL.wipe_app";
        public static final String WIPE_TIME = "Microsoft.MSAL.wipe_time";
    }

    public static final class Os {
        public static final String NAME = "Microsoft.MSAL.os_name";
        public static final String OS_NAME = "android";
        public static final String SECURITY_PATCH = "Microsoft.MSAL.security_patch";
        public static final String VERSION = "Microsoft.MSAL.os_version";
    }

    public static final class Value {
        public static final String ACCESS_TOKEN = "access_token";
        public static final String ACCOUNT_MANAGER = "account_manager";
        public static final String ADFS_TOKEN = "ADFS_access_token_refresh_token";
        public static final String AUTHORITY_AAD = "aad";
        public static final String AUTHORITY_ADFS = "adfs";
        public static final String AUTHORITY_B2C = "b2c";
        public static final String BOUND_SERVICE = "bound_service";
        public static final String BY_CODE = "by_code";
        public static final String BY_REFRESH_TOKEN = "by_refresh_token";
        public static final String CANCELLED = "cancelled";
        public static final String FAILED = "failed";
        public static final String FALSE = "false";
        public static final String FAMILY_REFRESH_TOKEN = "family_refresh_token";
        public static final String MULTI_RESOURCE_REFRESH_TOKEN = "multi_resource_refresh_token";
        public static final String NOT_FOUND = "not_found";
        public static final String REFRESH_TOKEN = "refresh_token";
        public static final String SUCCEEDED = "succeeded";
        public static final String TRIED = "tried";
        public static final String TRUE = "true";
        public static final String UNKNOWN = "unknown";
    }
}
