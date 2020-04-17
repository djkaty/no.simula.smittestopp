package com.microsoft.identity.common.exception;

public class IntuneAppProtectionPolicyRequiredException extends ServiceException {
    public static final String sName = IntuneAppProtectionPolicyRequiredException.class.getName();
    public String mAccountUpn;
    public String mAccountUserId;
    public String mAuthorityUrl;
    public String mTenantId;

    public IntuneAppProtectionPolicyRequiredException(String str, String str2) {
        this(str, str2, (Throwable) null);
    }

    public String getAccountUpn() {
        return this.mAccountUpn;
    }

    public String getAccountUserId() {
        return this.mAccountUserId;
    }

    public String getAuthorityUrl() {
        return this.mAuthorityUrl;
    }

    public String getExceptionName() {
        return sName;
    }

    public String getTenantId() {
        return this.mTenantId;
    }

    public void setAccountUpn(String str) {
        this.mAccountUpn = str;
    }

    public void setAccountUserId(String str) {
        this.mAccountUserId = str;
    }

    public void setAuthorityUrl(String str) {
        this.mAuthorityUrl = str;
    }

    public void setTenantId(String str) {
        this.mTenantId = str;
    }

    public IntuneAppProtectionPolicyRequiredException(String str, String str2, Throwable th) {
        super(str, str2, th);
    }
}
