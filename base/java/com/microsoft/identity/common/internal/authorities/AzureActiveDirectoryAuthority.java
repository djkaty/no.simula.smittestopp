package com.microsoft.identity.common.internal.authorities;

import android.net.Uri;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryCloud;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectorySlice;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import e.a.a.a.a;
import e.c.c.v.c;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

public class AzureActiveDirectoryAuthority extends Authority {
    public static final transient String TAG = "AzureActiveDirectoryAuthority";
    @c("audience")
    public AzureActiveDirectoryAudience mAudience;
    public AzureActiveDirectoryCloud mAzureActiveDirectoryCloud;
    @c("flight_parameters")
    public Map<String, String> mFlightParameters;
    public boolean mMultipleCloudsSupported;
    @c("slice")
    public AzureActiveDirectorySlice mSlice;

    public AzureActiveDirectoryAuthority(AzureActiveDirectoryAudience azureActiveDirectoryAudience) {
        this.mMultipleCloudsSupported = false;
        this.mAudience = azureActiveDirectoryAudience;
        this.mAuthorityTypeString = "AAD";
        getAzureActiveDirectoryCloud();
    }

    private void getAzureActiveDirectoryCloud() {
        AzureActiveDirectoryCloud azureActiveDirectoryCloud;
        try {
            azureActiveDirectoryCloud = AzureActiveDirectory.getAzureActiveDirectoryCloud(new URL(this.mAudience.getCloudUrl()));
            this.mKnownToMicrosoft = true;
        } catch (MalformedURLException e2) {
            Logger.errorPII(TAG + ":getAzureActiveDirectoryCloud", "AAD cloud URL was malformed.", e2);
            azureActiveDirectoryCloud = null;
            this.mKnownToMicrosoft = false;
        }
        this.mAzureActiveDirectoryCloud = azureActiveDirectoryCloud;
    }

    public MicrosoftStsOAuth2Configuration createOAuth2Configuration() {
        Logger.verbose(TAG + ":createOAuth2Configuration", "Creating OAuth2Configuration");
        MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
        microsoftStsOAuth2Configuration.setAuthorityUrl(getAuthorityURL());
        if (this.mSlice != null) {
            Logger.info(TAG + ":createOAuth2Configuration", "Setting slice parameters...");
            AzureActiveDirectorySlice azureActiveDirectorySlice = new AzureActiveDirectorySlice();
            azureActiveDirectorySlice.setSlice(this.mSlice.getSlice());
            azureActiveDirectorySlice.setDataCenter(this.mSlice.getDC());
            microsoftStsOAuth2Configuration.setSlice(azureActiveDirectorySlice);
        }
        if (this.mFlightParameters != null) {
            Logger.info(TAG + ":createOAuth2Configuration", "Setting flight parameters...");
            for (Map.Entry next : this.mFlightParameters.entrySet()) {
                microsoftStsOAuth2Configuration.getFlightParameters().put(next.getKey(), next.getValue());
            }
        }
        microsoftStsOAuth2Configuration.setMultipleCloudsSupported(this.mMultipleCloudsSupported);
        return microsoftStsOAuth2Configuration;
    }

    public OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) {
        return new MicrosoftStsOAuth2Strategy(createOAuth2Configuration(), oAuth2StrategyParameters);
    }

    public AzureActiveDirectoryAudience getAudience() {
        return this.mAudience;
    }

    public URL getAuthorityURL() {
        try {
            return new URL(getAuthorityUri().toString());
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException("Authority URL is not a URL.", e2);
        }
    }

    public Uri getAuthorityUri() {
        Uri uri;
        getAzureActiveDirectoryCloud();
        if (this.mAzureActiveDirectoryCloud == null) {
            uri = Uri.parse(this.mAudience.getCloudUrl());
        } else {
            StringBuilder a = a.a("https://");
            a.append(this.mAzureActiveDirectoryCloud.getPreferredNetworkHostName());
            uri = Uri.parse(a.toString());
        }
        return uri.buildUpon().appendPath(this.mAudience.getTenantId()).build();
    }

    public Map<String, String> getFlightParameters() {
        return this.mFlightParameters;
    }

    public boolean getMultipleCloudsSupported() {
        return this.mMultipleCloudsSupported;
    }

    public AzureActiveDirectorySlice getSlice() {
        return this.mSlice;
    }

    public void setMultipleCloudsSupported(boolean z) {
        this.mMultipleCloudsSupported = z;
    }

    public AzureActiveDirectoryAuthority() {
        this.mMultipleCloudsSupported = false;
        this.mAudience = new AllAccounts();
        this.mAuthorityTypeString = "AAD";
        this.mMultipleCloudsSupported = false;
        getAzureActiveDirectoryCloud();
    }
}
