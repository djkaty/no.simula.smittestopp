package com.microsoft.identity.common.internal.providers.microsoft;

import android.os.Build;
import android.util.Base64;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAuthorizationRequest;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationRequest;
import com.microsoft.identity.common.internal.providers.oauth2.PkceChallenge;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.c.c.v.a;
import e.c.c.v.c;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public abstract class MicrosoftAuthorizationRequest<T extends MicrosoftAuthorizationRequest<T>> extends AuthorizationRequest<T> {
    public static final String INSTANCE_AWARE = "instance_aware";
    public static final String TAG = MicrosoftAuthorizationRequest.class.getSimpleName();
    public static final long serialVersionUID = 6873634931996113294L;
    public transient URL mAuthority;
    @c("code_challenge")
    public String mCodeChallenge = this.mPkceChallenge.getCodeChallenge();
    @c("code_challenge_method")
    public String mCodeChallengeMethod;
    @a
    @c("client-request-id")
    public UUID mCorrelationId;
    @a
    @c("x-client-CPU")
    public String mDiagnosticCPU;
    @a
    @c("x-client-DM")
    public String mDiagnosticDM;
    @a
    @c("x-client-OS")
    public String mDiagnosticOS;
    public transient Map<String, String> mFlightParameters;
    @a
    @c("x-client-SKU")
    public String mLibraryName;
    @a
    @c("x-client-Ver")
    public String mLibraryVersion;
    @c("login_hint")
    public String mLoginHint;
    @a
    @c("instance_aware")
    public Boolean mMultipleCloudAware;
    public transient PkceChallenge mPkceChallenge;
    public transient AzureActiveDirectorySlice mSlice;

    public static abstract class Builder<B extends Builder<B>> extends AuthorizationRequest.Builder<B> {
        public URL mAuthority;
        public Map<String, String> mFlightParameters = new HashMap();
        public String mLibraryName;
        public String mLibraryVersion;
        public Boolean mMultipleCloudAware;
        public PkceChallenge mPkceChallenge;
        public AzureActiveDirectorySlice mSlice;

        public abstract B self();

        public B setAuthority(URL url) {
            this.mAuthority = url;
            return self();
        }

        public B setFlightParameters(Map<String, String> map) {
            this.mFlightParameters = map;
            return self();
        }

        public B setLibraryName(String str) {
            this.mLibraryName = str;
            return self();
        }

        public B setLibraryVersion(String str) {
            this.mLibraryVersion = str;
            return self();
        }

        public B setMultipleCloudAware(boolean z) {
            this.mMultipleCloudAware = Boolean.valueOf(z);
            return self();
        }

        public B setPkceChallenge(PkceChallenge pkceChallenge) {
            this.mPkceChallenge = pkceChallenge;
            return self();
        }

        public B setSlice(AzureActiveDirectorySlice azureActiveDirectorySlice) {
            this.mSlice = azureActiveDirectorySlice;
            return self();
        }
    }

    public MicrosoftAuthorizationRequest(Builder builder) {
        super(builder);
        this.mAuthority = builder.mAuthority;
        this.mLoginHint = builder.mLoginHint;
        this.mCorrelationId = builder.mCorrelationId;
        PkceChallenge newPkceChallenge = PkceChallenge.newPkceChallenge();
        this.mPkceChallenge = newPkceChallenge;
        this.mCodeChallengeMethod = newPkceChallenge.getCodeChallengeMethod();
        this.mState = generateEncodedState();
        if (builder.mSlice != null) {
            this.mSlice = builder.mSlice;
        }
        this.mFlightParameters = builder.mFlightParameters;
        this.mMultipleCloudAware = builder.mMultipleCloudAware;
        this.mLibraryVersion = builder.mLibraryVersion;
        this.mLibraryName = builder.mLibraryName;
        this.mDiagnosticOS = String.valueOf(Build.VERSION.SDK_INT);
        this.mDiagnosticDM = Build.MODEL;
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr != null && strArr.length > 0) {
            this.mDiagnosticCPU = strArr[0];
        }
    }

    public static String decodeState(String str) {
        if (!StringUtil.isEmpty(str)) {
            return new String(Base64.decode(str, 9), Charset.defaultCharset());
        }
        Logger.warn(TAG, "Decode state failed because the input state is empty.");
        return null;
    }

    public static String generateEncodedState() {
        UUID randomUUID = UUID.randomUUID();
        UUID randomUUID2 = UUID.randomUUID();
        try {
            return Base64.encodeToString((randomUUID.toString() + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + randomUUID2.toString()).getBytes("UTF-8"), 11);
        } catch (Exception e2) {
            throw new IllegalStateException("Error generating encoded state parameter for Authorization Request", e2);
        }
    }

    public URL getAuthority() {
        return this.mAuthority;
    }

    public String getCodeChallenge() {
        return this.mCodeChallenge;
    }

    public String getCodeChallengeMethod() {
        return this.mCodeChallengeMethod;
    }

    public UUID getCorrelationId() {
        return this.mCorrelationId;
    }

    public String getDiagnosticCPU() {
        return this.mDiagnosticCPU;
    }

    public String getDiagnosticDM() {
        return this.mDiagnosticDM;
    }

    public String getDiagnosticOS() {
        return this.mDiagnosticOS;
    }

    public String getLibraryName() {
        return this.mLibraryName;
    }

    public String getLibraryVersion() {
        return this.mLibraryVersion;
    }

    public String getLoginHint() {
        return this.mLoginHint;
    }

    public Boolean getMultipleCloudAware() {
        return this.mMultipleCloudAware;
    }

    public PkceChallenge getPkceChallenge() {
        return this.mPkceChallenge;
    }
}
