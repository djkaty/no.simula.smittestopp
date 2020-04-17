package com.microsoft.identity.common.internal.broker;

import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import e.c.c.v.c;
import java.io.Serializable;

public class BrokerRequest implements Serializable {
    @c("client_app_name")
    public String mApplicationName;
    @c("client_app_version")
    public String mApplicationVersion;
    @c("authentication_scheme")
    public AbstractAuthenticationScheme mAuthenticationScheme;
    @c("authority")
    public String mAuthority;
    @c("authorization_agent")
    public String mAuthorizationAgent;
    @c("claims")
    public String mClaims;
    @c("client_id")
    public String mClientId;
    @c("correlation_id")
    public String mCorrelationId;
    @c("environment")
    public String mEnvironment;
    @c("extra_query_param")
    public String mExtraQueryStringParameter;
    @c("force_refresh")
    public boolean mForceRefresh;
    @c("home_account_id")
    public String mHomeAccountId;
    @c("local_account_id")
    public String mLocalAccountId;
    @c("client_version")
    public String mMsalVersion;
    @c("multiple_clouds_supported")
    public boolean mMultipleCloudsSupported;
    @c("prompt")
    public String mPrompt;
    @c("redirect_uri")
    public String mRedirect;
    @c("scopes")
    public String mScope;
    @c("username")
    public String mUserName;

    public static class Builder {
        public String mApplicationName;
        public String mApplicationVersion;
        public AbstractAuthenticationScheme mAuthenticationScheme;
        public String mAuthority;
        public String mAuthorizationAgent;
        public String mClaims;
        public String mClientId;
        public String mCorrelationId;
        public String mEnvironment;
        public String mExtraQueryStringParameter;
        public boolean mForceRefresh;
        public String mHomeAccountId;
        public String mLocalAccountId;
        public String mMsalVersion;
        public boolean mMultipleCloudsSupported;
        public String mPrompt;
        public String mRedirect;
        public String mScope;
        public String mUserName;

        public Builder applicationName(String str) {
            this.mApplicationName = str;
            return this;
        }

        public Builder applicationVersion(String str) {
            this.mApplicationVersion = str;
            return this;
        }

        public Builder authenticationScheme(AbstractAuthenticationScheme abstractAuthenticationScheme) {
            this.mAuthenticationScheme = abstractAuthenticationScheme;
            return this;
        }

        public Builder authority(String str) {
            this.mAuthority = str;
            return this;
        }

        public Builder authorizationAgent(String str) {
            this.mAuthorizationAgent = str;
            return this;
        }

        public BrokerRequest build() {
            return new BrokerRequest(this);
        }

        public Builder claims(String str) {
            this.mClaims = str;
            return this;
        }

        public Builder clientId(String str) {
            this.mClientId = str;
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

        public Builder extraQueryStringParameter(String str) {
            this.mExtraQueryStringParameter = str;
            return this;
        }

        public Builder forceRefresh(boolean z) {
            this.mForceRefresh = z;
            return this;
        }

        public Builder homeAccountId(String str) {
            this.mHomeAccountId = str;
            return this;
        }

        public Builder localAccountId(String str) {
            this.mLocalAccountId = str;
            return this;
        }

        public Builder msalVersion(String str) {
            this.mMsalVersion = str;
            return this;
        }

        public Builder multipleCloudsSupported(boolean z) {
            this.mMultipleCloudsSupported = z;
            return this;
        }

        public Builder prompt(String str) {
            this.mPrompt = str;
            return this;
        }

        public Builder redirect(String str) {
            this.mRedirect = str;
            return this;
        }

        public Builder scope(String str) {
            this.mScope = str;
            return this;
        }

        public Builder username(String str) {
            this.mUserName = str;
            return this;
        }
    }

    public class SerializedNames {
        public static final String AUTHENTICATION_SCHEME = "authentication_scheme";
        public static final String AUTHORITY = "authority";
        public static final String AUTHORIZATION_AGENT = "authorization_agent";
        public static final String CLAIMS = "claims";
        public static final String CLIENT_APP_NAME = "client_app_name";
        public static final String CLIENT_APP_VERSION = "client_app_version";
        public static final String CLIENT_ID = "client_id";
        public static final String CLIENT_VERSION = "client_version";
        public static final String CORRELATION_ID = "correlation_id";
        public static final String ENVIRONMENT = "environment";
        public static final String EXTRA_QUERY_STRING_PARAMETER = "extra_query_param";
        public static final String FORCE_REFRESH = "force_refresh";
        public static final String HOME_ACCOUNT_ID = "home_account_id";
        public static final String LOCAL_ACCOUNT_ID = "local_account_id";
        public static final String MULTIPLE_CLOUDS_SUPPORTED = "multiple_clouds_supported";
        public static final String PROMPT = "prompt";
        public static final String REDIRECT = "redirect_uri";
        public static final String SCOPE = "scopes";
        public static final String USERNAME = "username";

        public SerializedNames() {
        }
    }

    public String getApplicationName() {
        return this.mApplicationName;
    }

    public String getApplicationVersion() {
        return this.mApplicationVersion;
    }

    public AbstractAuthenticationScheme getAuthenticationScheme() {
        return this.mAuthenticationScheme;
    }

    public String getAuthority() {
        return this.mAuthority;
    }

    public String getAuthorizationAgent() {
        return this.mAuthorizationAgent;
    }

    public String getClaims() {
        return this.mClaims;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public String getCorrelationId() {
        return this.mCorrelationId;
    }

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public String getExtraQueryStringParameter() {
        return this.mExtraQueryStringParameter;
    }

    public boolean getForceRefresh() {
        return this.mForceRefresh;
    }

    public String getHomeAccountId() {
        return this.mHomeAccountId;
    }

    public String getLocalAccountId() {
        return this.mLocalAccountId;
    }

    public String getMsalVersion() {
        return this.mMsalVersion;
    }

    public boolean getMultipleCloudsSupported() {
        return this.mMultipleCloudsSupported;
    }

    public String getPrompt() {
        return this.mPrompt;
    }

    public String getRedirect() {
        return this.mRedirect;
    }

    public String getScope() {
        return this.mScope;
    }

    public String getUserName() {
        return this.mUserName;
    }

    public BrokerRequest(Builder builder) {
        this.mAuthority = builder.mAuthority;
        this.mScope = builder.mScope;
        this.mRedirect = builder.mRedirect;
        this.mClientId = builder.mClientId;
        this.mHomeAccountId = builder.mHomeAccountId;
        this.mLocalAccountId = builder.mLocalAccountId;
        this.mUserName = builder.mUserName;
        this.mExtraQueryStringParameter = builder.mExtraQueryStringParameter;
        this.mCorrelationId = builder.mCorrelationId;
        this.mPrompt = builder.mPrompt;
        this.mClaims = builder.mClaims;
        this.mForceRefresh = builder.mForceRefresh;
        this.mApplicationName = builder.mApplicationName;
        this.mApplicationVersion = builder.mApplicationVersion;
        this.mMsalVersion = builder.mMsalVersion;
        this.mEnvironment = builder.mEnvironment;
        this.mMultipleCloudsSupported = builder.mMultipleCloudsSupported;
        this.mAuthorizationAgent = builder.mAuthorizationAgent;
        this.mAuthenticationScheme = builder.mAuthenticationScheme;
    }
}
