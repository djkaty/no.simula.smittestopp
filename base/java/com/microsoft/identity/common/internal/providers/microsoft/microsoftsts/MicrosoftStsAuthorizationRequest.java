package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.microsoft.identity.common.internal.net.ObjectMapper;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import e.c.c.v.a;
import e.c.c.v.c;
import java.util.HashMap;
import java.util.Map;

public class MicrosoftStsAuthorizationRequest extends MicrosoftAuthorizationRequest<MicrosoftStsAuthorizationRequest> {
    public static final String AUTHORIZATION_ENDPOINT = "/oAuth2/v2.0/authorize";
    public static final long serialVersionUID = 6545759826515911472L;
    public transient String mDisplayableId;
    @a
    @c("prompt")
    public String mPrompt;
    public transient String mTokenScope;
    @c("login_req")
    public String mUid;
    @c("domain_req")
    public String mUtid;

    public static class Builder extends MicrosoftAuthorizationRequest.Builder<Builder> {
        public String mDisplayableId;
        public String mTokenScope;
        public String mUid;
        public String mUtid;

        public Builder self() {
            return this;
        }

        public Builder setDisplayableId(String str) {
            this.mDisplayableId = str;
            return self();
        }

        public Builder setTokenScope(String str) {
            this.mTokenScope = str;
            return self();
        }

        public Builder setUid(String str) {
            this.mUid = str;
            return self();
        }

        public Builder setUtid(String str) {
            this.mUtid = str;
            return self();
        }

        public MicrosoftStsAuthorizationRequest build() {
            return new MicrosoftStsAuthorizationRequest(this);
        }
    }

    public static final class Prompt {
        public static final String CONSENT = "consent";
        public static final String FORCE_LOGIN = "login";
        public static final String SELECT_ACCOUNT = "select_account";
    }

    public MicrosoftStsAuthorizationRequest(Builder builder) {
        super(builder);
        this.mPrompt = builder.mPrompt;
        this.mUid = builder.mUid;
        this.mUtid = builder.mUtid;
        this.mDisplayableId = builder.mDisplayableId;
        this.mTokenScope = builder.mTokenScope;
    }

    public String getAuthorizationEndpoint() {
        return Uri.parse(getAuthority().toString()).buildUpon().appendPath("/oAuth2/v2.0/authorize").build().toString();
    }

    public Uri getAuthorizationRequestAsHttpRequest() {
        HashMap hashMap = new HashMap();
        hashMap.putAll(ObjectMapper.serializeObjectHashMap(this));
        for (Map.Entry next : this.mFlightParameters.entrySet()) {
            hashMap.put(next.getKey(), next.getValue());
        }
        AzureActiveDirectorySlice azureActiveDirectorySlice = this.mSlice;
        if (azureActiveDirectorySlice != null) {
            if (!TextUtils.isEmpty(azureActiveDirectorySlice.getSlice())) {
                hashMap.put(AzureActiveDirectorySlice.SLICE_PARAMETER, this.mSlice.getSlice());
            }
            if (!TextUtils.isEmpty(this.mSlice.getDC())) {
                hashMap.put(AzureActiveDirectorySlice.DC_PARAMETER, this.mSlice.getDC());
            }
        }
        if (getExtraQueryParams() != null && !getExtraQueryParams().isEmpty()) {
            for (Pair next2 : getExtraQueryParams()) {
                if (!hashMap.containsKey(next2.first)) {
                    hashMap.put(next2.first, next2.second);
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

    public String getDisplayableId() {
        return this.mDisplayableId;
    }

    public String getPrompt() {
        return this.mPrompt;
    }

    public String getTokenScope() {
        return this.mTokenScope;
    }

    public String getUid() {
        return this.mUid;
    }

    public String getUtid() {
        return this.mUtid;
    }
}
