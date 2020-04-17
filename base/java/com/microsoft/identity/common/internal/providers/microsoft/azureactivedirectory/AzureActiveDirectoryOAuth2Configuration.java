package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Configuration;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

public class AzureActiveDirectoryOAuth2Configuration extends OAuth2Configuration {
    public boolean mAuthorityHostValidationEnabled = true;
    public URL mAuthorityUrl;
    public Map<String, String> mFlightParameters = new HashMap();
    public boolean mMultipleCloudsSupported;
    public AzureActiveDirectorySlice mSlice;

    public URL getAuthorityUrl() {
        return this.mAuthorityUrl;
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

    public boolean isAuthorityHostValidationEnabled() {
        return this.mAuthorityHostValidationEnabled;
    }

    public void setAuthorityHostValidationEnabled(boolean z) {
        this.mAuthorityHostValidationEnabled = z;
    }

    public void setAuthorityUrl(URL url) {
        this.mAuthorityUrl = url;
    }

    public void setFlightParameters(Map<String, String> map) {
        this.mFlightParameters = map;
    }

    public void setMultipleCloudsSupported(boolean z) {
        this.mMultipleCloudsSupported = z;
    }

    public void setSlice(AzureActiveDirectorySlice azureActiveDirectorySlice) {
        this.mSlice = azureActiveDirectorySlice;
    }
}
