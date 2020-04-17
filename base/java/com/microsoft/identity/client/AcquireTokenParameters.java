package com.microsoft.identity.client;

import android.app.Activity;
import android.util.Pair;
import androidx.fragment.app.Fragment;
import com.microsoft.identity.client.TokenParameters;
import java.util.List;

public class AcquireTokenParameters extends TokenParameters {
    public Activity mActivity;
    public AuthenticationCallback mCallback;
    public List<Pair<String, String>> mExtraQueryStringParameters;
    public List<String> mExtraScopesToConsent;
    public Fragment mFragment;
    public String mLoginHint;
    public Prompt mPrompt;

    public static class Builder extends TokenParameters.Builder<Builder> {
        public Activity mActivity;
        public AuthenticationCallback mCallback;
        public List<Pair<String, String>> mExtraQueryStringParameters;
        public List<String> mExtraScopesToConsent;
        public Fragment mFragment;
        public String mLoginHint;
        public Prompt mPrompt;

        public Builder self() {
            return this;
        }

        public Builder startAuthorizationFromActivity(Activity activity) {
            this.mActivity = activity;
            return self();
        }

        public Builder withAuthorizationQueryStringParameters(List<Pair<String, String>> list) {
            this.mExtraQueryStringParameters = list;
            return self();
        }

        public Builder withCallback(AuthenticationCallback authenticationCallback) {
            this.mCallback = authenticationCallback;
            return self();
        }

        public Builder withFragment(Fragment fragment) {
            this.mFragment = fragment;
            return self();
        }

        public Builder withLoginHint(String str) {
            this.mLoginHint = str;
            return self();
        }

        public Builder withOtherScopesToAuthorize(List<String> list) {
            this.mExtraScopesToConsent = list;
            return self();
        }

        public Builder withPrompt(Prompt prompt) {
            this.mPrompt = prompt;
            return self();
        }

        public AcquireTokenParameters build() {
            return new AcquireTokenParameters(this);
        }
    }

    public AcquireTokenParameters(Builder builder) {
        super(builder);
        this.mActivity = builder.mActivity;
        this.mFragment = builder.mFragment;
        this.mLoginHint = builder.mLoginHint;
        this.mPrompt = builder.mPrompt;
        this.mExtraScopesToConsent = builder.mExtraScopesToConsent;
        this.mExtraQueryStringParameters = builder.mExtraQueryStringParameters;
        this.mCallback = builder.mCallback;
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public AuthenticationCallback getCallback() {
        return this.mCallback;
    }

    public List<Pair<String, String>> getExtraQueryStringParameters() {
        return this.mExtraQueryStringParameters;
    }

    public List<String> getExtraScopesToConsent() {
        return this.mExtraScopesToConsent;
    }

    public Fragment getFragment() {
        return this.mFragment;
    }

    public String getLoginHint() {
        return this.mLoginHint;
    }

    public Prompt getPrompt() {
        return this.mPrompt;
    }

    public void setLoginHint(String str) {
        this.mLoginHint = str;
    }
}
