package com.microsoft.identity.common.internal.broker;

import com.microsoft.identity.common.internal.cache.ICacheRecord;
import e.c.c.v.c;
import java.io.Serializable;
import java.util.List;

public class BrokerResult implements Serializable {
    public static final long serialVersionUID = 8606631820514878489L;
    @c("access_token")
    public String mAccessToken;
    @c("authority")
    public String mAuthority;
    @c("cached_at")
    public long mCachedAt;
    @c("cli_telem_error_code")
    public String mCliTelemErrorCode;
    @c("cli_telem_suberror_code")
    public String mCliTelemSubErrorCode;
    @c("client_id")
    public String mClientId;
    @c("client_info")
    public String mClientInfo;
    @c("correlation_id")
    public String mCorrelationId;
    @c("environment")
    public String mEnvironment;
    @c("broker_error_code")
    public String mErrorCode;
    @c("broker_error_message")
    public String mErrorMessage;
    @c("broker_exception_type")
    public final String mExceptionType;
    @c("expires_on")
    public long mExpiresOn;
    @c("ext_expires_on")
    public long mExtendedExpiresOn;
    @c("family_id")
    public String mFamilyId;
    @c("home_account_id")
    public String mHomeAccountId;
    @c("http_response_body")
    public String mHttpResponseBody;
    @c("http_response_headers")
    public String mHttpResponseHeaders;
    @c("http_response_code")
    public int mHttpStatusCode;
    @c("id_token")
    public String mIdToken;
    @c("local_account_id")
    public String mLocalAccountId;
    @c("refresh_token")
    public String mRefreshToken;
    @c("refresh_token_age")
    public String mRefreshTokenAge;
    @c("scopes")
    public String mScope;
    @c("spe_ring")
    public String mSpeRing;
    @c("oauth_sub_error")
    public String mSubErrorCode;
    @c("success")
    public boolean mSuccess;
    @c("tenant_id")
    public String mTenantId;
    @c("tenant_profile_cache_records")
    public final List<ICacheRecord> mTenantProfileData;
    @c("token_type")
    public String mTokenType;
    @c("username")
    public String mUserName;

    public static class Builder {
        public String mAccessToken;
        public String mAuthority;
        public long mCachedAt;
        public String mCliTelemErrorCode;
        public String mCliTelemSubErrorCode;
        public String mClientId;
        public String mClientInfo;
        public String mCorrelationId;
        public String mEnvironment;
        public String mErrorCode;
        public String mErrorMessage;
        public String mExceptionType;
        public long mExpiresOn;
        public long mExtendedExpiresOn;
        public String mFamilyId;
        public String mHomeAccountId;
        public String mHttpResponseBody;
        public String mHttpResponseHeaders;
        public int mHttpStatusCode;
        public String mIdToken;
        public String mLocalAccountId;
        public String mNegotiatedBrokerProtocolVersion;
        public String mRefreshToken;
        public String mRefreshTokenAge;
        public String mScope;
        public String mSpeRing;
        public String mSubErrorCode;
        public boolean mSuccess;
        public String mTenantId;
        public List<ICacheRecord> mTenantProfileData;
        public String mTokenType;
        public String mUserName;

        public Builder accessToken(String str) {
            this.mAccessToken = str;
            return this;
        }

        public Builder authority(String str) {
            this.mAuthority = str;
            return this;
        }

        public BrokerResult build() {
            return new BrokerResult(this);
        }

        public Builder cachedAt(long j2) {
            this.mCachedAt = j2;
            return this;
        }

        public Builder cliTelemErrorCode(String str) {
            this.mCliTelemErrorCode = str;
            return this;
        }

        public Builder cliTelemSubErrorCode(String str) {
            this.mCliTelemSubErrorCode = str;
            return this;
        }

        public Builder clientId(String str) {
            this.mClientId = str;
            return this;
        }

        public Builder clientInfo(String str) {
            this.mClientInfo = str;
            return this;
        }

        public Builder correlationId(String str) {
            this.mCorrelationId = str;
            return this;
        }

        public Builder environment(String str) {
            this.mEnvironment = str;
            return this;
        }

        public Builder errorCode(String str) {
            this.mErrorCode = str;
            return this;
        }

        public Builder errorMessage(String str) {
            this.mErrorMessage = str;
            return this;
        }

        public Builder exceptionType(String str) {
            this.mExceptionType = str;
            return this;
        }

        public Builder expiresOn(long j2) {
            this.mExpiresOn = j2;
            return this;
        }

        public Builder extendedExpiresOn(long j2) {
            this.mExtendedExpiresOn = j2;
            return this;
        }

        public Builder familyId(String str) {
            this.mFamilyId = str;
            return this;
        }

        public Builder homeAccountId(String str) {
            this.mHomeAccountId = str;
            return this;
        }

        public Builder httpResponseBody(String str) {
            this.mHttpResponseBody = str;
            return this;
        }

        public Builder httpResponseHeaders(String str) {
            this.mHttpResponseHeaders = str;
            return this;
        }

        public Builder httpStatusCode(int i2) {
            this.mHttpStatusCode = i2;
            return this;
        }

        public Builder idToken(String str) {
            this.mIdToken = str;
            return this;
        }

        public Builder localAccountId(String str) {
            this.mLocalAccountId = str;
            return this;
        }

        public Builder negotiatedBrokerProtocolVersion(String str) {
            this.mNegotiatedBrokerProtocolVersion = str;
            return this;
        }

        public Builder oauthSubErrorCode(String str) {
            this.mSubErrorCode = str;
            return this;
        }

        public Builder refreshToken(String str) {
            this.mRefreshToken = str;
            return this;
        }

        public Builder refreshTokenAge(String str) {
            this.mRefreshTokenAge = str;
            return this;
        }

        public Builder scope(String str) {
            this.mScope = str;
            return this;
        }

        public Builder speRing(String str) {
            this.mSpeRing = str;
            return this;
        }

        public Builder success(boolean z) {
            this.mSuccess = z;
            return this;
        }

        public Builder tenantId(String str) {
            this.mTenantId = str;
            return this;
        }

        public Builder tenantProfileRecords(List<ICacheRecord> list) {
            this.mTenantProfileData = list;
            return this;
        }

        public Builder tokenType(String str) {
            this.mTokenType = str;
            return this;
        }

        public Builder userName(String str) {
            this.mUserName = str;
            return this;
        }
    }

    public class SerializedNames {
        public static final String ACCESS_TOKEN = "access_token";
        public static final String AUTHORITY = "authority";
        public static final String BROKER_ERROR_CODE = "broker_error_code";
        public static final String BROKER_ERROR_MESSAGE = "broker_error_message";
        public static final String BROKER_EXCEPTION_TYPE = "broker_exception_type";
        public static final String CACHED_AT = "cached_at";
        public static final String CLIENT_ID = "client_id";
        public static final String CLIENT_INFO = "client_info";
        public static final String CLI_TELEM_ERRORCODE = "cli_telem_error_code";
        public static final String CLI_TELEM_SUB_ERROR_CODE = "cli_telem_suberror_code";
        public static final String CORRELATION_ID = "correlation_id";
        public static final String ENVIRONMENT = "environment";
        public static final String EXPIRES_ON = "expires_on";
        public static final String EXTENDED_EXPIRES_ON = "ext_expires_on";
        public static final String FAMILY_ID = "family_id";
        public static final String HOME_ACCOUNT_ID = "home_account_id";
        public static final String HTTP_HEADERS = "http_response_headers";
        public static final String HTTP_RESPONSE_BODY = "http_response_body";
        public static final String HTTP_RESPONSE_CODE = "http_response_code";
        public static final String ID_TOKEN = "id_token";
        public static final String LOCAL_ACCOUNT_ID = "local_account_id";
        public static final String OAUTH_SUB_ERROR = "oauth_sub_error";
        public static final String REFRESH_TOKEN = "refresh_token";
        public static final String REFRESH_TOKEN_AGE = "refresh_token_age";
        public static final String SCOPES = "scopes";
        public static final String SPE_RING = "spe_ring";
        public static final String SUCCESS = "success";
        public static final String TENANT_ID = "tenant_id";
        public static final String TENANT_PROFILE_CACHE_RECORDS = "tenant_profile_cache_records";
        public static final String TOKEN_TYPE = "token_type";
        public static final String USERNAME = "username";

        public SerializedNames() {
        }
    }

    public String getAccessToken() {
        return this.mAccessToken;
    }

    public String getAuthority() {
        return this.mAuthority;
    }

    public long getCachedAt() {
        return this.mCachedAt;
    }

    public String getCliTelemErrorCode() {
        return this.mCliTelemErrorCode;
    }

    public String getCliTelemSubErrorCode() {
        return this.mCliTelemSubErrorCode;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public String getClientInfo() {
        return this.mClientInfo;
    }

    public String getCorrelationId() {
        return this.mCorrelationId;
    }

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public String getErrorCode() {
        return this.mErrorCode;
    }

    public String getErrorMessage() {
        return this.mErrorMessage;
    }

    public String getExceptionType() {
        return this.mExceptionType;
    }

    public long getExpiresOn() {
        return this.mExpiresOn;
    }

    public long getExtendedExpiresOn() {
        return this.mExtendedExpiresOn;
    }

    public String getFamilyId() {
        return this.mFamilyId;
    }

    public String getHomeAccountId() {
        return this.mHomeAccountId;
    }

    public String getHttpResponseBody() {
        return this.mHttpResponseBody;
    }

    public String getHttpResponseHeaders() {
        return this.mHttpResponseHeaders;
    }

    public int getHttpStatusCode() {
        return this.mHttpStatusCode;
    }

    public String getIdToken() {
        return this.mIdToken;
    }

    public String getLocalAccountId() {
        return this.mLocalAccountId;
    }

    public String getRefreshToken() {
        return this.mRefreshToken;
    }

    public String getRefreshTokenAge() {
        return this.mRefreshTokenAge;
    }

    public String getScope() {
        return this.mScope;
    }

    public String getSpeRing() {
        return this.mSpeRing;
    }

    public String getSubErrorCode() {
        return this.mSubErrorCode;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public List<ICacheRecord> getTenantProfileData() {
        return this.mTenantProfileData;
    }

    public String getTokenType() {
        return this.mTokenType;
    }

    public String getUserName() {
        return this.mUserName;
    }

    public boolean isSuccess() {
        return this.mSuccess;
    }

    public BrokerResult(Builder builder) {
        this.mAccessToken = builder.mAccessToken;
        this.mIdToken = builder.mIdToken;
        this.mRefreshToken = builder.mRefreshToken;
        this.mHomeAccountId = builder.mHomeAccountId;
        this.mLocalAccountId = builder.mLocalAccountId;
        this.mUserName = builder.mUserName;
        this.mTokenType = builder.mTokenType;
        this.mClientId = builder.mClientId;
        this.mFamilyId = builder.mFamilyId;
        this.mScope = builder.mScope;
        this.mClientInfo = builder.mClientInfo;
        this.mAuthority = builder.mAuthority;
        this.mEnvironment = builder.mEnvironment;
        this.mTenantId = builder.mTenantId;
        this.mExpiresOn = builder.mExpiresOn;
        this.mExtendedExpiresOn = builder.mExtendedExpiresOn;
        this.mCachedAt = builder.mCachedAt;
        this.mSpeRing = builder.mSpeRing;
        this.mRefreshTokenAge = builder.mRefreshTokenAge;
        this.mSuccess = builder.mSuccess;
        this.mTenantProfileData = builder.mTenantProfileData;
        this.mErrorCode = builder.mErrorCode;
        this.mErrorMessage = builder.mErrorMessage;
        this.mCorrelationId = builder.mCorrelationId;
        this.mSubErrorCode = builder.mSubErrorCode;
        this.mHttpStatusCode = builder.mHttpStatusCode;
        this.mHttpResponseBody = builder.mHttpResponseBody;
        this.mHttpResponseHeaders = builder.mHttpResponseHeaders;
        this.mCliTelemErrorCode = builder.mCliTelemErrorCode;
        this.mCliTelemSubErrorCode = builder.mCliTelemSubErrorCode;
        this.mExceptionType = builder.mExceptionType;
    }
}
