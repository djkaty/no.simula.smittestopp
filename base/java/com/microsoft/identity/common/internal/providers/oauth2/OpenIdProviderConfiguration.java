package com.microsoft.identity.common.internal.providers.oauth2;

import e.c.c.v.c;
import java.util.List;

public class OpenIdProviderConfiguration {
    @c("acr_values_supported")
    public List<String> mAcrValuesSupported;
    @c("authorization_endpoint")
    public String mAuthorizationEndpoint;
    @c("check_session_iframe")
    public String mCheckSessionIFrame;
    @c("claim_types_supported")
    public List<String> mClaimTypesSupported;
    @c("claims_locales_supported")
    public List<String> mClaimsLocalesSupported;
    @c("claims_parameter_supported")
    public Boolean mClaimsParameterSupported;
    @c("claims_supported")
    public List<String> mClaimsSupported;
    @c("cloud_graph_host_name")
    public String mCloudGraphHostName;
    @c("cloud_instance_name")
    public String mCloudInstanceName;
    @c("display_values_supported")
    public List<String> mDisplayValuesSupported;
    @c("end_session_endpoint")
    public String mEndSessionEndpoint;
    @c("frontchannel_logout_supported")
    public Boolean mFrontChannelLogoutSupported;
    @c("grant_types_supported")
    public List<String> mGrantTypesSupported;
    @c("http_logout_supported")
    public Boolean mHttpLogoutSupported;
    @c("id_token_encryption_alg_values_supported")
    public List<String> mIdTokenEncryptionAlgValuesSupported;
    @c("id_token_encryption_enc_values_supported")
    public List<String> mIdTokenEncryptionEncValuesSupported;
    @c("id_token_signing_alg_values_supported")
    public List<String> mIdTokenSigningAlgValuesSupported;
    @c("issuer")
    public String mIssuer;
    @c("jwks_uri")
    public String mJwksUri;
    @c("msgraph_host")
    public String mMsGraphHost;
    @c("op_policy_uri")
    public String mOpPolicyUri;
    @c("op_tos_uri")
    public String mOpTosUri;
    @c("rbac_url")
    public String mRbacUrl;
    @c("registration_endpoint")
    public String mRegistrationEndpoint;
    @c("request_object_encryption_alg_values_supported")
    public List<String> mRequestObjectEncryptionAlgValuesSupported;
    @c("request_object_encryption_enc_values_supported")
    public List<String> mRequestObjectEncryptionEncValuesSupported;
    @c("request_object_signing_alg_values_supported")
    public List<String> mRequestObjectSigningAlgValuesSupported;
    @c("request_parameter_supported")
    public Boolean mRequestParameterSupported;
    @c("request_uri_parameter_supported")
    public Boolean mRequestUriParameterSupported;
    @c("require_request_uri_registration")
    public Boolean mRequireRequestUriRegistration;
    @c("response_modes_supported")
    public List<String> mResponseModesSupported;
    @c("response_types_supported")
    public List<String> mResponseTypesSupported;
    @c("scopes_supported")
    public List<String> mScopesSupported;
    @c("service_documentation")
    public String mServiceDocumentation;
    @c("subject_types_supported")
    public List<String> mSubjectTypesSupported;
    @c("tenant_region_scope")
    public String mTenantRegionScope;
    @c("token_endpoint")
    public String mTokenEndpoint;
    @c("token_endpoint_auth_methods_supported")
    public List<String> mTokenEndpointAuthMethodsSupported;
    @c("token_endpoint_auth_signing_alg_values_supported")
    public List<String> mTokenEndpointAuthSigningAlgValuesSupported;
    @c("ui_locales_supported")
    public List<String> mUiLocalesSupported;
    @c("userinfo_encryption_alg_values_supported")
    public List<String> mUserInfoEncryptionAlgValuesSupported;
    @c("userinfo_encryption_enc_values_supported")
    public List<String> mUserInfoEncryptionEncValueSupported;
    @c("userinfo_endpoint")
    public String mUserInfoEndpoint;
    @c("userinfo_signing_alg_values_supported")
    public List<String> mUserInfoSigningAlgValuesSupported;

    public static final class SerializedNames {
        public static final String ACR_VALUES_SUPPORTED = "acr_values_supported";
        public static final String AUTHORIZATION_ENDPOINT = "authorization_endpoint";
        public static final String CHECK_SESSION_IFRAME = "check_session_iframe";
        public static final String CLAIMS_LOCALES_SUPPORTED = "claims_locales_supported";
        public static final String CLAIMS_PARAMETER_SUPPORTED = "claims_parameter_supported";
        public static final String CLAIMS_SUPPORTED = "claims_supported";
        public static final String CLAIM_TYPES_SUPPORTED = "claim_types_supported";
        public static final String CLOUD_GRAPH_HOST_NAME = "cloud_graph_host_name";
        public static final String CLOUD_INSTANCE_NAME = "cloud_instance_name";
        public static final String DISPLAY_VALUES_SUPPORTED = "display_values_supported";
        public static final String END_SESSION_ENDPOINT = "end_session_endpoint";
        public static final String FRONTCHANNEL_LOGOUT_SUPPORTED = "frontchannel_logout_supported";
        public static final String GRANT_TYPES_SUPPORTED = "grant_types_supported";
        public static final String HTTP_LOGOUT_SUPPORTED = "http_logout_supported";
        public static final String ID_TOKEN_ENCRYPTION_ALG_VALUES_SUPPORTED = "id_token_encryption_alg_values_supported";
        public static final String ID_TOKEN_ENCRYPTION_ENC_VALUES_SUPPORTED = "id_token_encryption_enc_values_supported";
        public static final String ID_TOKEN_SIGNING_ALG_VALUES_SUPPORTED = "id_token_signing_alg_values_supported";
        public static final String ISSUER = "issuer";
        public static final String JWKS_URI = "jwks_uri";
        public static final String MSGRAPH_HOST = "msgraph_host";
        public static final String OP_POLICY_URI = "op_policy_uri";
        public static final String OP_TOS_URI = "op_tos_uri";
        public static final String RBAC_URL = "rbac_url";
        public static final String REGISTRATION_ENDPOINT = "registration_endpoint";
        public static final String REQUEST_OBJECT_ENCRYPTION_ALG_VALUES_SUPPORTED = "request_object_encryption_alg_values_supported";
        public static final String REQUEST_OBJECT_ENCRYPTION_ENC_VALUES_SUPPORTED = "request_object_encryption_enc_values_supported";
        public static final String REQUEST_OBJECT_SIGNING_ALG_VALUES_SUPPORTED = "request_object_signing_alg_values_supported";
        public static final String REQUEST_PARAMETER_SUPPORTED = "request_parameter_supported";
        public static final String REQUEST_URI_PARAMETER_SUPPORTED = "request_uri_parameter_supported";
        public static final String REQUIRE_REQUEST_URI_REGISTRATION = "require_request_uri_registration";
        public static final String RESPONSE_MODES_SUPPORTED = "response_modes_supported";
        public static final String RESPONSE_TYPES_SUPPORTED = "response_types_supported";
        public static final String SCOPES_SUPPORTED = "scopes_supported";
        public static final String SERVICE_DOCUMENTATION = "service_documentation";
        public static final String SUBJECT_TYPES_SUPPORTED = "subject_types_supported";
        public static final String TENANT_REGION_SCOPE = "tenant_region_scope";
        public static final String TOKEN_ENDPOINT = "token_endpoint";
        public static final String TOKEN_ENDPOINT_AUTH_METHODS_SUPPORTED = "token_endpoint_auth_methods_supported";
        public static final String TOKEN_ENDPOINT_AUTH_SIGNING_ALG_VALUES_SUPPORTED = "token_endpoint_auth_signing_alg_values_supported";
        public static final String UI_LOCALES_SUPPORTED = "ui_locales_supported";
        public static final String USERINFO_ENCRYPTION_ALG_VALUES_SUPPORTED = "userinfo_encryption_alg_values_supported";
        public static final String USERINFO_ENCRYPTION_ENC_VALUES_SUPPORTED = "userinfo_encryption_enc_values_supported";
        public static final String USERINFO_ENDPOINT = "userinfo_endpoint";
        public static final String USERINFO_SIGNING_ALG_VALUES_SUPPORTED = "userinfo_signing_alg_values_supported";
    }

    public List<String> getAcrValuesSupported() {
        return this.mAcrValuesSupported;
    }

    public String getAuthorizationEndpoint() {
        return this.mAuthorizationEndpoint;
    }

    public String getCheckSessionIFrame() {
        return this.mCheckSessionIFrame;
    }

    public List<String> getClaimTypesSupported() {
        return this.mClaimTypesSupported;
    }

    public List<String> getClaimsLocalesSupported() {
        return this.mClaimsLocalesSupported;
    }

    public Boolean getClaimsParameterSupported() {
        return this.mClaimsParameterSupported;
    }

    public List<String> getClaimsSupported() {
        return this.mClaimsSupported;
    }

    public String getCloudGraphHostName() {
        return this.mCloudGraphHostName;
    }

    public String getCloudInstanceName() {
        return this.mCloudInstanceName;
    }

    public List<String> getDisplayValuesSupported() {
        return this.mDisplayValuesSupported;
    }

    public String getEndSessionEndpoint() {
        return this.mEndSessionEndpoint;
    }

    public Boolean getFrontChannelLogoutSupported() {
        return this.mFrontChannelLogoutSupported;
    }

    public List<String> getGrantTypesSupported() {
        return this.mGrantTypesSupported;
    }

    public Boolean getHttpLogoutSupported() {
        return this.mHttpLogoutSupported;
    }

    public List<String> getIdTokenEncryptionAlgValuesSupported() {
        return this.mIdTokenEncryptionAlgValuesSupported;
    }

    public List<String> getIdTokenEncryptionEncValuesSupported() {
        return this.mIdTokenEncryptionEncValuesSupported;
    }

    public List<String> getIdTokenSigningAlgValuesSupported() {
        return this.mIdTokenSigningAlgValuesSupported;
    }

    public String getIssuer() {
        return this.mIssuer;
    }

    public String getJwksUri() {
        return this.mJwksUri;
    }

    public String getMsGraphHost() {
        return this.mMsGraphHost;
    }

    public String getOpPolicyUri() {
        return this.mOpPolicyUri;
    }

    public String getOpTosUri() {
        return this.mOpTosUri;
    }

    public String getRbacUrl() {
        return this.mRbacUrl;
    }

    public String getRegistrationEndpoint() {
        return this.mRegistrationEndpoint;
    }

    public List<String> getRequestObjectEncryptionAlgValuesSupported() {
        return this.mRequestObjectEncryptionAlgValuesSupported;
    }

    public List<String> getRequestObjectEncryptionEncValuesSupported() {
        return this.mRequestObjectEncryptionEncValuesSupported;
    }

    public List<String> getRequestObjectSigningAlgValuesSupported() {
        return this.mRequestObjectSigningAlgValuesSupported;
    }

    public Boolean getRequestParameterSupported() {
        return this.mRequestParameterSupported;
    }

    public Boolean getRequestUriParameterSupported() {
        return this.mRequestUriParameterSupported;
    }

    public Boolean getRequireRequestUriRegistration() {
        return this.mRequireRequestUriRegistration;
    }

    public List<String> getResponseModesSupported() {
        return this.mResponseModesSupported;
    }

    public List<String> getResponseTypesSupported() {
        return this.mResponseTypesSupported;
    }

    public List<String> getScopesSupported() {
        return this.mScopesSupported;
    }

    public String getServiceDocumentation() {
        return this.mServiceDocumentation;
    }

    public List<String> getSubjectTypesSupported() {
        return this.mSubjectTypesSupported;
    }

    public String getTenantRegionScope() {
        return this.mTenantRegionScope;
    }

    public String getTokenEndpoint() {
        return this.mTokenEndpoint;
    }

    public List<String> getTokenEndpointAuthMethodsSupported() {
        return this.mTokenEndpointAuthMethodsSupported;
    }

    public List<String> getTokenEndpointAuthSigningAlgValuesSupported() {
        return this.mTokenEndpointAuthSigningAlgValuesSupported;
    }

    public List<String> getUiLocalesSupported() {
        return this.mUiLocalesSupported;
    }

    public List<String> getUserInfoEncryptionAlgValuesSupported() {
        return this.mUserInfoEncryptionAlgValuesSupported;
    }

    public List<String> getUserInfoEncryptionEncValueSupported() {
        return this.mUserInfoEncryptionEncValueSupported;
    }

    public String getUserInfoEndpoint() {
        return this.mUserInfoEndpoint;
    }

    public List<String> getUserInfoSigningAlgValuesSupported() {
        return this.mUserInfoSigningAlgValuesSupported;
    }

    public void setAcrValuesSupported(List<String> list) {
        this.mAcrValuesSupported = list;
    }

    public void setAuthorizationEndpoint(String str) {
        this.mAuthorizationEndpoint = str;
    }

    public void setCheckSessionIFrame(String str) {
        this.mCheckSessionIFrame = str;
    }

    public void setClaimTypesSupported(List<String> list) {
        this.mClaimTypesSupported = list;
    }

    public void setClaimsLocalesSupported(List<String> list) {
        this.mClaimsLocalesSupported = list;
    }

    public void setClaimsParameterSupported(Boolean bool) {
        this.mClaimsParameterSupported = bool;
    }

    public void setClaimsSupported(List<String> list) {
        this.mClaimsSupported = list;
    }

    public void setCloudGraphHostName(String str) {
        this.mCloudGraphHostName = str;
    }

    public void setCloudInstanceName(String str) {
        this.mCloudInstanceName = str;
    }

    public void setDisplayValuesSupported(List<String> list) {
        this.mDisplayValuesSupported = list;
    }

    public void setEndSessionEndpoint(String str) {
        this.mEndSessionEndpoint = str;
    }

    public void setFrontChannelLogoutSupported(Boolean bool) {
        this.mFrontChannelLogoutSupported = bool;
    }

    public void setGrantTypesSupported(List<String> list) {
        this.mGrantTypesSupported = list;
    }

    public void setHttpLogoutSupported(Boolean bool) {
        this.mHttpLogoutSupported = bool;
    }

    public void setIdTokenEncryptionAlgValuesSupported(List<String> list) {
        this.mIdTokenEncryptionAlgValuesSupported = list;
    }

    public void setIdTokenEncryptionEncValuesSupported(List<String> list) {
        this.mIdTokenEncryptionEncValuesSupported = list;
    }

    public void setIdTokenSigningAlgValuesSupported(List<String> list) {
        this.mIdTokenSigningAlgValuesSupported = list;
    }

    public void setIssuer(String str) {
        this.mIssuer = str;
    }

    public void setJwksUri(String str) {
        this.mJwksUri = str;
    }

    public void setMsGraphHost(String str) {
        this.mMsGraphHost = str;
    }

    public void setOpPolicyUri(String str) {
        this.mOpPolicyUri = str;
    }

    public void setOpTosUri(String str) {
        this.mOpTosUri = str;
    }

    public void setRbacUrl(String str) {
        this.mRbacUrl = str;
    }

    public void setRegistrationEndpoint(String str) {
        this.mRegistrationEndpoint = str;
    }

    public void setRequestObjectEncryptionAlgValuesSupported(List<String> list) {
        this.mRequestObjectEncryptionAlgValuesSupported = list;
    }

    public void setRequestObjectEncryptionEncValuesSupported(List<String> list) {
        this.mRequestObjectEncryptionEncValuesSupported = list;
    }

    public void setRequestObjectSigningAlgValuesSupported(List<String> list) {
        this.mRequestObjectSigningAlgValuesSupported = list;
    }

    public void setRequestParameterSupported(Boolean bool) {
        this.mRequestParameterSupported = bool;
    }

    public void setRequestUriParameterSupported(Boolean bool) {
        this.mRequestUriParameterSupported = bool;
    }

    public void setRequireRequestUriRegistration(Boolean bool) {
        this.mRequireRequestUriRegistration = bool;
    }

    public void setResponseModesSupported(List<String> list) {
        this.mResponseModesSupported = list;
    }

    public void setResponseTypesSupported(List<String> list) {
        this.mResponseTypesSupported = list;
    }

    public void setScopesSupported(List<String> list) {
        this.mScopesSupported = list;
    }

    public void setServiceDocumentation(String str) {
        this.mServiceDocumentation = str;
    }

    public void setSubjectTypesSupported(List<String> list) {
        this.mSubjectTypesSupported = list;
    }

    public void setTenantRegionScope(String str) {
        this.mTenantRegionScope = str;
    }

    public void setTokenEndpoint(String str) {
        this.mTokenEndpoint = str;
    }

    public void setTokenEndpointAuthMethodsSupported(List<String> list) {
        this.mTokenEndpointAuthMethodsSupported = list;
    }

    public void setTokenEndpointAuthSigningAlgValuesSupported(List<String> list) {
        this.mTokenEndpointAuthSigningAlgValuesSupported = list;
    }

    public void setUiLocalesSupported(List<String> list) {
        this.mUiLocalesSupported = list;
    }

    public void setUserInfoEncryptionAlgValuesSupported(List<String> list) {
        this.mUserInfoEncryptionAlgValuesSupported = list;
    }

    public void setUserInfoEncryptionEncValueSupported(List<String> list) {
        this.mUserInfoEncryptionEncValueSupported = list;
    }

    public void setUserInfoEndpoint(String str) {
        this.mUserInfoEndpoint = str;
    }

    public void setUserInfoSigningAlgValuesSupported(List<String> list) {
        this.mUserInfoSigningAlgValuesSupported = list;
    }
}
