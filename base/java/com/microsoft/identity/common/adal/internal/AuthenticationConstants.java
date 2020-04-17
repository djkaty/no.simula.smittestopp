package com.microsoft.identity.common.adal.internal;

public final class AuthenticationConstants {
    public static final String ADAL_PACKAGE_NAME = "com.microsoft.aad.adal";
    public static final String BUNDLE_MESSAGE = "Message";
    public static final int DEFAULT_EXPIRATION_TIME_SEC = 3600;
    public static final String ENCODING_UTF8 = "UTF-8";
    public static final String MS_FAMILY_ID = "1";

    public static final class AAD {
        public static final String ADAL_BROKER_VERSION = "x-client-brkrver";
        public static final String ADAL_ID_CPU = "x-client-CPU";
        public static final String ADAL_ID_DM = "x-client-DM";
        public static final String ADAL_ID_OS_VER = "x-client-OS";
        public static final String ADAL_ID_PLATFORM = "x-client-SKU";
        public static final String ADAL_ID_PLATFORM_VALUE = "Android";
        public static final String ADAL_ID_VERSION = "x-client-Ver";
        public static final String APP_PACKAGE_NAME = "x-app-name";
        public static final String APP_VERSION = "x-app-ver";
        public static final String AUTHORIZATION = "authorization";
        public static final String AUTHORIZATION_URI = "authorization_uri";
        public static final String BEARER = "Bearer";
        public static final String CLIENT_REQUEST_ID = "client-request-id";
        public static final String CORRELATION_ID = "correlation_id";
        public static final String LOGIN_HINT = "login_hint";
        public static final String QUERY_PROMPT = "prompt";
        public static final String QUERY_PROMPT_REFRESH_SESSION_VALUE = "refresh_session";
        public static final String QUERY_PROMPT_VALUE = "login";
        public static final String REALM = "realm";
        public static final String REQUEST_ID_HEADER = "x-ms-request-id";
        public static final String RESOURCE = "resource";
        public static final String RETURN_CLIENT_REQUEST_ID = "return-client-request-id";
        public static final String WEB_UI_CANCEL = "access_denied";
    }

    public static final class AuthorizationIntentAction {
        public static final String CANCEL_INTERACTIVE_REQUEST = "cancel_interactive_request";
        public static final String RETURN_INTERACTIVE_REQUEST_RESULT = "return_interactive_request_result";
    }

    public static final class AuthorizationIntentKey {
        public static final String AUTHORIZATION_AGENT = "com.microsoft.identity.client.authorization.agent";
        public static final String AUTHORIZATION_FINAL_URL = "com.microsoft.identity.client.final.url";
        public static final String AUTH_INTENT = "com.microsoft.identity.auth.intent";
        public static final String POST_PAGE_LOADED_URL = "com.microsoft.identity.post.page.loaded.url";
        public static final String REDIRECT_URI = "com.microsoft.identity.request.redirect.uri";
        public static final String REQUEST_CANCELLED_BY_USER = "com.microsoft.identity.client.request.cancelled.by.user";
        public static final String REQUEST_CODE = "com.microsoft.identity.client.request.code";
        public static final String REQUEST_HEADERS = "com.microsoft.identity.request.headers";
        public static final String REQUEST_ID = "com.microsoft.identity.request.id";
        public static final String REQUEST_URL = "com.microsoft.identity.request.url";
        public static final String RESULT_CODE = "com.microsoft.identity.client.result.code";
        public static final String WEB_VIEW_ZOOM_CONTROLS_ENABLED = "com.microsoft.identity.web.view.zoom.controls.enabled";
        public static final String WEB_VIEW_ZOOM_ENABLED = "com.microsoft.identity.web.view.zoom.enabled";
    }

    public static final class Broker {
        public static final String ACCOUNT_ACCESS_TOKEN = "account.access.token";
        public static final String ACCOUNT_ADD_NEW = "account.add.new";
        public static final String ACCOUNT_AUTHORITY = "account.authority";
        public static final String ACCOUNT_CLAIMS = "account.claims";
        public static final String ACCOUNT_CLIENTID_KEY = "account.clientid.key";
        public static final String ACCOUNT_CLIENT_SECRET_KEY = "account.client.secret.key";
        public static final String ACCOUNT_CORRELATIONID = "account.correlationid";
        public static final String ACCOUNT_DEFAULT_NAME = "Default";
        public static final String ACCOUNT_EXPIREDATE = "account.expiredate";
        public static final String ACCOUNT_EXTRA_QUERY_PARAM = "account.extra.query.param";
        public static final String ACCOUNT_HOME_ACCOUNT_ID = "account.home.account.id";
        public static final String ACCOUNT_IDTOKEN = "account.idtoken";
        public static final String ACCOUNT_INITIAL_NAME = "aad";
        public static final String ACCOUNT_INITIAL_REQUEST = "account.initial.request";
        public static final String ACCOUNT_LOGIN_HINT = "account.login.hint";
        public static final String ACCOUNT_NAME = "account.name";
        public static final String ACCOUNT_PROMPT = "account.prompt";
        public static final String ACCOUNT_REDIRECT = "account.redirect";
        public static final String ACCOUNT_REFRESH_TOKEN = "account.refresh.token";
        public static final String ACCOUNT_REMOVE_TOKENS = "account.remove.tokens";
        public static final String ACCOUNT_REMOVE_TOKENS_VALUE = "account.remove.tokens.value";
        public static final String ACCOUNT_REQUEST_TYPE = "broker.request.type";
        public static final String ACCOUNT_RESOLVE_INTERRUPT = "account.resolve.interrupt";
        public static final String ACCOUNT_RESOURCE = "account.resource";
        public static final String ACCOUNT_RESULT = "account.result";
        public static final String ACCOUNT_UID_CACHES = "account.uid.caches";
        public static final String ACCOUNT_USERINFO_AUTHORITY_TYPE = "account.userinfo.authority.type";
        public static final String ACCOUNT_USERINFO_ENVIRONMENT = "account.userinfo.environment";
        public static final String ACCOUNT_USERINFO_FAMILY_NAME = "account.userinfo.family.name";
        public static final String ACCOUNT_USERINFO_GIVEN_NAME = "account.userinfo.given.name";
        public static final String ACCOUNT_USERINFO_IDENTITY_PROVIDER = "account.userinfo.identity.provider";
        public static final String ACCOUNT_USERINFO_ID_TOKEN = "account.userinfo.id.token";
        public static final String ACCOUNT_USERINFO_TENANTID = "account.userinfo.tenantid";
        public static final String ACCOUNT_USERINFO_USERID = "account.userinfo.userid";
        public static final String ACCOUNT_USERINFO_USERID_DISPLAYABLE = "account.userinfo.userid.displayable";
        public static final String ACCOUNT_USERINFO_USERID_LIST = "account.userinfo.userid.list";
        public static final String ADAL_VERSION_KEY = "adal.version.key";
        public static final String AUTHTOKEN_TYPE = "adal.authtoken.type";
        public static final String AUTH_RESPONSE_TYPE = "response_type";
        public static final String AUTH_SCOPE = "scope";
        public static final String AUTH_STATE = "state";
        public static final String AZURE_AUTHENTICATOR_APP_PACKAGE_NAME = "com.azure.authenticator";
        public static final String AZURE_AUTHENTICATOR_APP_SIGNATURE = "ho040S3ffZkmxqtQrSwpTVOn9r0=";
        public static final String BACKGROUND_REQUEST_MESSAGE = "background.request";
        public static final String BROKER_ACCOUNTS = "broker_accounts";
        public static final String BROKER_ACCOUNT_MANAGER_OPERATION_KEY = "com.microsoft.broker_accountmanager_operation_key";
        public static final String BROKER_ACCOUNT_TYPE = "com.microsoft.workaccount";
        public static final String BROKER_CLIENT_ID = "29d9ed98-a469-4536-ade2-f981bc1d605e";
        public static final String BROKER_CURRENT_ACCOUNT = "broker_current_account";
        public static final String BROKER_DEVICE_MODE = "broker_device_mode";
        public static final String BROKER_FEATURE_MULTI_USER = "broker.feature.multi.user";
        public static final String BROKER_FINAL_URL = "adal.final.url";
        public static final String BROKER_FORCE_REFRESH = "force.refresh";
        public static final String BROKER_KEYSTORE_SYMMETRIC_KEY = "broker_keystore_symmetric_key";
        public static final String BROKER_PROTOCOL_VERSION = "v2";
        public static final String BROKER_PROTOCOL_VERSION_CODE = "4.0";
        public static final String BROKER_REDIRECT_URI = "urn:ietf:wg:oauth:2.0:oob";
        public static final String BROKER_REQUEST = "com.microsoft.aadbroker.adal.broker.request";
        public static final int BROKER_REQUEST_ID = 1177;
        public static final String BROKER_REQUEST_RESUME = "com.microsoft.aadbroker.adal.broker.request.resume";
        public static final String BROKER_REQUEST_V2 = "broker_request_v2";
        public static final String BROKER_REQUEST_V2_SUCCESS = "broker_request_v2_success";
        public static final String BROKER_RESULT_RETURNED = "broker.result.returned";
        public static final String BROKER_RESULT_V2 = "broker_result_v2";
        public static final String BROKER_RETURN_JSON = "broker.json";
        public static final String BROKER_SKIP_CACHE = "skip.cache";
        public static final String BROKER_VERSION = "broker.version";
        public static final String BROWSER_DEVICE_CA_URL = "browser://go.microsoft.com/fwlink/?LinkId=396941";
        public static final String BROWSER_EXT_INSTALL_PREFIX = "msauth://";
        public static final String BROWSER_EXT_PREFIX = "browser://";
        public static final String CALLER_CACHEKEY_PREFIX = "|";
        public static final String CALLER_INFO_PACKAGE = "caller.info.package";
        public static final String CALLER_INFO_UID = "caller.info.uid";
        public static final String CHALLENGE_REQUEST_CERT_AUTH_DELIMETER = ";";
        public static final String CHALLENGE_REQUEST_HEADER = "WWW-Authenticate";
        public static final String CHALLENGE_RESPONSE_CONTEXT = "Context";
        public static final String CHALLENGE_RESPONSE_HEADER = "Authorization";
        public static final String CHALLENGE_RESPONSE_TOKEN = "AuthToken";
        public static final String CHALLENGE_RESPONSE_TYPE = "PKeyAuth";
        public static final String CHALLENGE_TLS_INCAPABLE = "x-ms-PKeyAuth";
        public static final String CHALLENGE_TLS_INCAPABLE_VERSION = "1.0";
        public static final String CLIENT_ADVERTISED_MAXIMUM_BP_VERSION_KEY = "broker.protocol.version.name";
        public static final String CLIENT_APP_PACKAGE_NAME = "client_app_package_name";
        public static final String CLIENT_CONFIGURED_MINIMUM_BP_VERSION_KEY = "required.broker.protocol.version.name";
        public static final String CLIENT_TLS_NOT_SUPPORTED = " PKeyAuth/1.0";
        public static final String COMPANY_PORTAL_APP_LAUNCH_ACTIVITY_NAME = "com.microsoft.windowsintune.companyportal.views.SplashActivity";
        public static final String COMPANY_PORTAL_APP_PACKAGE_NAME = "com.microsoft.windowsintune.companyportal";
        public static final String COMPANY_PORTAL_APP_SIGNATURE = "1L4Z9FJCgn5c0VLhyAxC5O9LdlE=";
        public static final String DEFAULT_BROWSER_PACKAGE_NAME = "default.browser.package.name";
        public static final String DEVICE_REGISTRATION_REDIRECT_URI_HOSTNAME = "wpj";
        public static final String ENVIRONMENT = "environment";
        public static final String EXPIRATION_BUFFER = "expiration.buffer";
        public static final String INSTALL_UPN_KEY = "username";
        public static final String INSTALL_URL_KEY = "app_link";
        public static final String IPPHONE_APP_PACKAGE_NAME = "com.microsoft.skype.teams.ipphone";
        public static final String IPPHONE_APP_SIGNATURE = "fcg80qvoM1YMKJZibjBwQcDfOno=";
        public static final String LIB_NAME = "library_name";
        public static final String LIB_VERSION = "library_version";
        public static final String MULTI_RESOURCE_TOKEN = "account.multi.resource.token";
        public static final String NEGOTIATED_BP_VERSION_KEY = "common.broker.protocol.version.name";
        public static final String PKCE_CHALLENGE = "PkceChallenge";
        public static final String PKEYAUTH_REDIRECT = "urn:http-auth:PKeyAuth";
        public static final String PRT_NONCE = "nonce";
        public static final String PRT_RESPONSE_HEADER = "x-ms-RefreshTokenCredential";
        public static final Object REDIRECT_DELIMETER_ENCODED = "%2C";
        public static final String REDIRECT_PREFIX = "msauth";
        public static final String REDIRECT_SSL_PREFIX = "https://";
        public static final String USERDATA_BROKER_PRT_RT = "userdata.broker.prt.rt";
        public static final String USERDATA_BROKER_PRT_SESSION_KEY = "userdata.broker.prt.session.key";
        public static final String USERDATA_BROKER_RT = "userdata.broker.rt";
        public static final String USERDATA_CALLER_CACHEKEYS = "userdata.caller.cachekeys";
        public static final String USERDATA_PREFIX = "userdata.prefix";
        public static final String USERDATA_UID_KEY = "calling.uid.key";

        public static final class CliTelemInfo {
            public static final String PREFIX = "cliteleminfo.";
            public static final String RT_AGE = "cliteleminfo.rt_age";
            public static final String SERVER_ERROR = "cliteleminfo.server_error";
            public static final String SERVER_SUBERROR = "cliteleminfo.server_suberror";
            public static final String SPE_RING = "cliteleminfo.spe_ring";
        }
    }

    public static final class BrokerAccountManagerOperation {
        public static final String ACQUIRE_TOKEN_SILENT = "ACQUIRE_TOKEN_SILENT";
        public static final String GET_ACCOUNTS = "GET_ACCOUNTS";
        public static final String GET_CURRENT_ACCOUNT = "GET_CURRENT_ACCOUNT";
        public static final String GET_DEVICE_MODE = "GET_DEVICE_MODE";
        public static final String GET_INTENT_FOR_INTERACTIVE_REQUEST = "GET_INTENT_FOR_INTERACTIVE_REQUEST";
        public static final String HELLO = "HELLO";
        public static final String REMOVE_ACCOUNT = "REMOVE_ACCOUNT";
        public static final String REMOVE_ACCOUNT_FROM_SHARED_DEVICE = "REMOVE_ACCOUNT_FROM_SHARED_DEVICE";
    }

    public static final class Browser {
        public static final String ACTION_CANCEL = "com.microsoft.aad.adal:BrowserCancel";
        public static final String LOGOUT_ENDPOINT_V2 = "https://login.microsoftonline.com/common/oauth2/v2.0/logout";
        public static final String REQUEST_ID = "com.microsoft.aad.adal:RequestId";
        public static final String REQUEST_MESSAGE = "com.microsoft.aad.adal:BrowserRequestMessage";
        public static final String RESPONSE = "com.microsoft.aad.adal:BrokerResponse";
        public static final String RESPONSE_AUTHENTICATION_EXCEPTION = "com.microsoft.aad.adal:AuthenticationException";
        public static final String RESPONSE_ERROR_CODE = "com.microsoft.aad.adal:BrowserErrorCode";
        public static final String RESPONSE_ERROR_MESSAGE = "com.microsoft.aad.adal:BrowserErrorMessage";
        public static final String RESPONSE_ERROR_SUBCODE = "com.microsoft.aad.adal:BrowserErrorSubCode";
        public static final String RESPONSE_FINAL_URL = "com.microsoft.aad.adal:BrowserFinalUrl";
        public static final String RESPONSE_REQUEST_INFO = "com.microsoft.aad.adal:BrowserRequestInfo";
        public static final String SUB_ERROR_UI_CANCEL = "cancel";
        public static final String WEBVIEW_INVALID_REQUEST = "Invalid request";
    }

    public static final class HeaderField {
        public static final String ACCEPT = "Accept";
        public static final String X_MS_CLITELEM = "x-ms-clitelem";
    }

    public static final class MediaType {
        public static final String APPLICATION_JSON = "application/json";
    }

    public static final class OAuth2 {
        public static final String AAD_PREFERRED_USERNAME = "preferred_username";
        public static final String AAD_VERSION = "ver";
        public static final String AAD_VERSION_V1 = "1.0";
        public static final String AAD_VERSION_V2 = "2.0";
        public static final String ACCESS_TOKEN = "access_token";
        public static final String ADAL_CLIENT_FAMILY_ID = "foci";
        public static final String AUTHORITY = "authority";
        public static final String AUTHORIZATION_CODE = "authorization_code";
        public static final String CLAIMS = "claims";
        public static final String CLIENT_CAPABILITIES_CLAIMS_LIST = "xms_cc";
        public static final String CLIENT_CAPABILITY_ACCESS_TOKEN = "access_token";
        public static final String CLIENT_ID = "client_id";
        public static final String CLIENT_INFO = "client_info";
        public static final String CLIENT_INFO_TRUE = "1";
        public static final String CLIENT_SECRET = "client_secret";
        public static final String CLOUD_INSTANCE_HOST_NAME = "cloud_instance_host_name";
        public static final String CODE = "code";
        public static final String ERROR = "error";
        public static final String ERROR_CODES = "error_codes";
        public static final String ERROR_DESCRIPTION = "error_description";
        public static final String EXPIRES_IN = "expires_in";
        public static final String EXT_EXPIRES_IN = "ext_expires_in";
        public static final String GRANT_TYPE = "grant_type";
        public static final String HAS_CHROME = "haschrome";
        public static final String HTTP_RESPONSE_BODY = "response_body";
        public static final String HTTP_RESPONSE_HEADER = "response_headers";
        public static final String HTTP_STATUS_CODE = "status_code";
        public static final String ID_TOKEN = "id_token";
        public static final String ID_TOKEN_EMAIL = "email";
        public static final String ID_TOKEN_FAMILY_NAME = "family_name";
        public static final String ID_TOKEN_GIVEN_NAME = "given_name";
        public static final String ID_TOKEN_IDENTITY_PROVIDER = "idp";
        public static final String ID_TOKEN_OBJECT_ID = "oid";
        public static final String ID_TOKEN_PASSWORD_CHANGE_URL = "pwd_url";
        public static final String ID_TOKEN_PASSWORD_EXPIRATION = "pwd_exp";
        public static final String ID_TOKEN_SUBJECT = "sub";
        public static final String ID_TOKEN_TENANTID = "tid";
        public static final String ID_TOKEN_UNIQUE_NAME = "unique_name";
        public static final String ID_TOKEN_UPN = "upn";
        public static final String IT_VER_PARAM = "itver";
        public static final String REDIRECT_URI = "redirect_uri";
        public static final String REFRESH_TOKEN = "refresh_token";
        public static final String RESPONSE_TYPE = "response_type";
        public static final String SCOPE = "scope";
        public static final String SESSION_KEY_JWE = "session_key_jwe";
        public static final String STATE = "state";
        public static final String SUBERROR = "suberror";
        public static final String TOKEN_TYPE = "token_type";
    }

    public static final class OAuth2ErrorCode {
        public static final String INTERACTION_REQUIRED = "interaction_required";
        public static final String INVALID_GRANT = "invalid_grant";
        public static final String UNAUTHORIZED_CLIENT = "unauthorized_client";
    }

    public static final class OAuth2Scopes {
        public static final String AZA_SCOPE = "aza";
        public static final String OFFLINE_ACCESS_SCOPE = "offline_access";
        public static final String OPEN_ID_SCOPE = "openid";
        public static final String PROFILE_SCOPE = "profile";
    }

    public static final class OAuth2SubErrorCode {
        public static final String BAD_TOKEN = "bad_token";
        public static final String DEVICE_AUTHENTICATION_FAILED = "device_authentication_failed";
        public static final String PROTECTION_POLICY_REQUIRED = "protection_policy_required";
    }

    public static final class TelemetryEvents {
        public static final String DECRYPTION_ERROR = "decryption_error_v2";
        public static final String KEYCHAIN_READ_END = "keychain_read_v2_end";
        public static final String KEYCHAIN_READ_START = "keychain_read_v2_start";
        public static final String KEYCHAIN_WRITE_END = "keychain_write_v2_end";
        public static final String KEYCHAIN_WRITE_START = "keychain_write_v2_start";
        public static final String KEY_CREATED = "key_created_v2";
        public static final String KEY_DISTRIBUTION_END = "key_distribution_v2_end";
        public static final String KEY_DISTRIBUTION_START = "key_distribution_v2_start";
        public static final String KEY_RETRIEVAL_END = "key_retrieval_v2_end";
        public static final String KEY_RETRIEVAL_START = "key_retrieval_v2_start";
    }

    public static final class UIRequest {
        public static final int BROKER_FLOW = 1003;
        public static final int BROWSER_FLOW = 1001;
        public static final int TOKEN_FLOW = 1002;
    }

    public static final class UIResponse {
        public static final int BROKER_REQUEST_RESUME = 2006;
        public static final int BROWSER_CODE_AUTHENTICATION_EXCEPTION = 2005;
        public static final int BROWSER_CODE_CANCEL = 2001;
        public static final int BROWSER_CODE_COMPLETE = 2003;
        public static final int BROWSER_CODE_DEVICE_REGISTER = 2007;
        public static final int BROWSER_CODE_ERROR = 2002;
        public static final int BROWSER_CODE_SDK_CANCEL = 2008;
        public static final int TOKEN_BROKER_RESPONSE = 2004;
    }
}
