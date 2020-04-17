package com.microsoft.identity.common.internal.authorities;

import android.net.Uri;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Configuration;
import com.microsoft.identity.common.internal.providers.microsoft.microsoftsts.MicrosoftStsOAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import java.net.MalformedURLException;
import java.net.URL;

public class AzureActiveDirectoryB2CAuthority extends Authority {
    public static final String TAG = "com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryB2CAuthority";

    public AzureActiveDirectoryB2CAuthority(String str) {
        this.mAuthorityTypeString = Authority.B2C;
        this.mAuthorityUrl = str;
    }

    public MicrosoftStsOAuth2Configuration createOAuth2Configuration() {
        Logger.verbose(TAG + ":createOAuth2Configuration", "Creating OAuth2Configuration");
        MicrosoftStsOAuth2Configuration microsoftStsOAuth2Configuration = new MicrosoftStsOAuth2Configuration();
        microsoftStsOAuth2Configuration.setMultipleCloudsSupported(false);
        microsoftStsOAuth2Configuration.setAuthorityUrl(getAuthorityURL());
        return microsoftStsOAuth2Configuration;
    }

    public OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) {
        return new MicrosoftStsOAuth2Strategy(createOAuth2Configuration(), oAuth2StrategyParameters);
    }

    public URL getAuthorityURL() {
        try {
            return new URL(getAuthorityUri().toString());
        } catch (MalformedURLException e2) {
            throw new IllegalArgumentException("Authority URL is not a URL.", e2);
        }
    }

    public Uri getAuthorityUri() {
        return Uri.parse(this.mAuthorityUrl);
    }
}
