package com.microsoft.identity.common.internal.ui.webview.challengehandlers;

import java.io.Serializable;
import java.util.List;

public class PKeyAuthChallenge implements Serializable {
    public static final long serialVersionUID = 1035116074451575588L;
    public List<String> mCertAuthorities;
    public String mContext;
    public String mNonce;
    public String mSubmitUrl;
    public String mThumbprint;
    public String mVersion;

    public static class Builder {
        public List<String> mCertAuthorities;
        public String mContext = "";
        public String mNonce = "";
        public String mSubmitUrl;
        public String mThumbprint = "";
        public String mVersion;

        public PKeyAuthChallenge build() {
            return new PKeyAuthChallenge(this);
        }

        public Builder self() {
            return this;
        }

        public Builder setCertAuthorities(List<String> list) {
            this.mCertAuthorities = list;
            return self();
        }

        public Builder setContext(String str) {
            this.mContext = str;
            return self();
        }

        public Builder setNonce(String str) {
            this.mNonce = str;
            return self();
        }

        public Builder setSubmitUrl(String str) {
            this.mSubmitUrl = str;
            return self();
        }

        public Builder setThumbprint(String str) {
            this.mThumbprint = str;
            return self();
        }

        public Builder setVersion(String str) {
            this.mVersion = str;
            return self();
        }
    }

    public PKeyAuthChallenge(Builder builder) {
        this.mNonce = builder.mNonce;
        this.mContext = builder.mContext;
        this.mCertAuthorities = builder.mCertAuthorities;
        this.mThumbprint = builder.mThumbprint;
        this.mVersion = builder.mVersion;
        this.mSubmitUrl = builder.mSubmitUrl;
    }

    public List<String> getCertAuthorities() {
        return this.mCertAuthorities;
    }

    public String getContext() {
        return this.mContext;
    }

    public String getNonce() {
        return this.mNonce;
    }

    public String getSubmitUrl() {
        return this.mSubmitUrl;
    }

    public String getThumbprint() {
        return this.mThumbprint;
    }

    public String getVersion() {
        return this.mVersion;
    }
}
