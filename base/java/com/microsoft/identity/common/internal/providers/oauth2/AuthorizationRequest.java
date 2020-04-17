package com.microsoft.identity.common.internal.providers.oauth2;

import android.net.Uri;
import android.util.Pair;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.internal.net.ObjectMapper;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import e.c.c.v.a;
import e.c.c.v.c;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public abstract class AuthorizationRequest<T extends AuthorizationRequest<T>> implements Serializable {
    public static final long serialVersionUID = 6171895895590170062L;
    @a
    @c("claims")
    public String mClaims;
    @a
    @c("client_id")
    public String mClientId;
    public transient List<Pair<String, String>> mExtraQueryParams;
    @c("redirect_uri")
    public String mRedirectUri;
    public transient HashMap<String, String> mRequestHeaders;
    @a
    @c("response_type")
    public String mResponseType;
    @a
    @c("scope")
    public String mScope;
    @a
    @c("state")
    public String mState;
    @a
    @c("web_view_zoom_controls_enabled")
    public boolean webViewZoomControlsEnabled;
    @a
    @c("web_view_zoom_enabled")
    public boolean webViewZoomEnabled;

    public static abstract class Builder<B extends Builder<B>> {
        public String mClaims;
        public String mClientId;
        public UUID mCorrelationId;
        public List<Pair<String, String>> mExtraQueryParams;
        public String mLoginHint;
        public String mPrompt;
        public String mRedirectUri;
        public HashMap<String, String> mRequestHeaders;
        public String mResponseType = "code";
        public String mScope;
        public String mState;
        public boolean webViewZoomControlsEnabled;
        public boolean webViewZoomEnabled;

        public abstract AuthorizationRequest build();

        public abstract B self();

        public B setClaims(String str) {
            this.mClaims = str;
            return self();
        }

        public B setClientId(String str) {
            this.mClientId = str;
            return self();
        }

        public B setCorrelationId(UUID uuid) {
            this.mCorrelationId = uuid;
            return self();
        }

        public B setExtraQueryParams(List<Pair<String, String>> list) {
            this.mExtraQueryParams = list;
            return self();
        }

        public B setLoginHint(String str) {
            this.mLoginHint = str;
            return self();
        }

        public B setPrompt(String str) {
            this.mPrompt = str;
            return self();
        }

        public B setRedirectUri(String str) {
            this.mRedirectUri = str;
            return self();
        }

        public B setRequestHeaders(HashMap<String, String> hashMap) {
            this.mRequestHeaders = hashMap;
            return self();
        }

        public B setResponseType(String str) {
            this.mResponseType = str;
            return self();
        }

        public B setScope(String str) {
            this.mScope = str;
            return self();
        }

        public B setState(String str) {
            this.mState = str;
            return self();
        }

        public Builder<B> setWebViewZoomControlsEnabled(boolean z) {
            this.webViewZoomControlsEnabled = z;
            return self();
        }

        public Builder<B> setWebViewZoomEnabled(boolean z) {
            this.webViewZoomEnabled = z;
            return self();
        }
    }

    public static final class ResponseType {
        public static final String CODE = "code";
    }

    public AuthorizationRequest(Builder builder) {
        this.mResponseType = builder.mResponseType;
        this.mClientId = builder.mClientId;
        this.mRedirectUri = builder.mRedirectUri;
        this.mState = builder.mState;
        this.mScope = builder.mScope;
        this.mExtraQueryParams = builder.mExtraQueryParams;
        this.mClaims = builder.mClaims;
        this.mRequestHeaders = builder.mRequestHeaders;
        this.webViewZoomEnabled = builder.webViewZoomEnabled;
        this.webViewZoomControlsEnabled = builder.webViewZoomControlsEnabled;
    }

    public abstract String getAuthorizationEndpoint();

    public Uri getAuthorizationRequestAsHttpRequest() {
        HashMap hashMap = new HashMap();
        hashMap.putAll(ObjectMapper.serializeObjectHashMap(this));
        List<Pair<String, String>> list = this.mExtraQueryParams;
        if (list != null && !list.isEmpty()) {
            for (Pair next : this.mExtraQueryParams) {
                if (!hashMap.containsKey(next.first)) {
                    hashMap.put(next.first, next.second);
                }
            }
        }
        Uri.Builder buildUpon = Uri.parse(getAuthorizationEndpoint()).buildUpon();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                buildUpon.appendQueryParameter((String) entry.getKey(), entry.getValue().toString());
            }
        }
        return buildUpon.build();
    }

    public String getClaims() {
        return this.mClaims;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public List<Pair<String, String>> getExtraQueryParams() {
        return this.mExtraQueryParams;
    }

    public String getRedirectUri() {
        return this.mRedirectUri;
    }

    public HashMap<String, String> getRequestHeaders() {
        return this.mRequestHeaders;
    }

    public String getResponseType() {
        return this.mResponseType;
    }

    public String getScope() {
        return this.mScope;
    }

    public String getState() {
        return this.mState;
    }

    public boolean isWebViewZoomControlsEnabled() {
        return this.webViewZoomControlsEnabled;
    }

    public boolean isWebViewZoomEnabled() {
        return this.webViewZoomEnabled;
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a("AuthorizationRequest{mResponseType='");
        e.a.a.a.a.a(a, this.mResponseType, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mClientId='");
        e.a.a.a.a.a(a, this.mClientId, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mRedirectUri='");
        e.a.a.a.a.a(a, this.mRedirectUri, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mScope='");
        e.a.a.a.a.a(a, this.mScope, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mState='");
        a.append(this.mState);
        a.append(WWWAuthenticateHeader.SINGLE_QUOTE);
        a.append('}');
        return a.toString();
    }
}
