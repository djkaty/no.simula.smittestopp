package com.microsoft.identity.common.internal.request;

import com.microsoft.identity.common.exception.ArgumentException;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority;
import com.microsoft.identity.common.internal.dto.RefreshTokenRecord;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryCloud;
import e.a.a.a.a;
import java.io.IOException;

public class AcquireTokenSilentOperationParameters extends OperationParameters {
    public static final String TAG = "AcquireTokenSilentOperationParameters";
    public static final Object sLock = new Object();
    public transient RefreshTokenRecord mRefreshToken;

    private boolean authorityMatchesAccountEnvironment() {
        try {
            if (!AzureActiveDirectory.isInitialized()) {
                performCloudDiscovery();
            }
            AzureActiveDirectoryCloud azureActiveDirectoryCloudFromHostName = AzureActiveDirectory.getAzureActiveDirectoryCloudFromHostName(this.mAccount.getEnvironment());
            if (azureActiveDirectoryCloudFromHostName == null || !azureActiveDirectoryCloudFromHostName.getPreferredNetworkHostName().equals(getAuthority().getAuthorityURL().getAuthority())) {
                return false;
            }
            return true;
        } catch (IOException e2) {
            Logger.error(TAG + ":authorityMatchesAccountEnvironment", "Unable to perform cloud discovery", e2);
            return false;
        }
    }

    private boolean isAuthorityB2C() {
        return getAuthority() instanceof AzureActiveDirectoryB2CAuthority;
    }

    public static void performCloudDiscovery() {
        a.b(new StringBuilder(), TAG, ":performCloudDiscovery", "Performing cloud discovery...");
        synchronized (sLock) {
            AzureActiveDirectory.performCloudDiscovery();
        }
    }

    public RefreshTokenRecord getRefreshToken() {
        return this.mRefreshToken;
    }

    public void setRefreshToken(RefreshTokenRecord refreshTokenRecord) {
        this.mRefreshToken = refreshTokenRecord;
    }

    public void validate() {
        super.validate();
        if (this.mAccount == null) {
            Logger.warn(TAG, "The account set on silent operation parameters is NULL.");
        } else if (!isAuthorityB2C() && !authorityMatchesAccountEnvironment()) {
            throw new ArgumentException("acquireTokenSilent", "authority", "Authority passed to silent parameters does not match with the cloud associated to the account.");
        }
    }
}
