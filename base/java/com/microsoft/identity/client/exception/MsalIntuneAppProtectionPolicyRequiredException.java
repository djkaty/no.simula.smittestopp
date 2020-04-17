package com.microsoft.identity.client.exception;

import com.microsoft.identity.common.exception.IntuneAppProtectionPolicyRequiredException;

public class MsalIntuneAppProtectionPolicyRequiredException extends MsalServiceException {
    public String mAccountUpn;
    public String mAccountUserId;
    public String mAuthorityUrl;
    public String mTenantId;

    public MsalIntuneAppProtectionPolicyRequiredException(IntuneAppProtectionPolicyRequiredException intuneAppProtectionPolicyRequiredException) {
        super(intuneAppProtectionPolicyRequiredException.getErrorCode(), intuneAppProtectionPolicyRequiredException.getMessage(), intuneAppProtectionPolicyRequiredException);
        this.mAccountUpn = intuneAppProtectionPolicyRequiredException.getAccountUpn();
        this.mAccountUserId = intuneAppProtectionPolicyRequiredException.getAccountUserId();
        this.mAuthorityUrl = intuneAppProtectionPolicyRequiredException.getAuthorityUrl();
        this.mTenantId = intuneAppProtectionPolicyRequiredException.getTenantId();
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

    public String getTenantId() {
        return this.mTenantId;
    }
}
