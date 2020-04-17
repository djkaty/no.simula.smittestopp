package com.microsoft.identity.common.internal.authorities;

import android.net.Uri;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2Strategy;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import java.net.MalformedURLException;
import java.net.URL;

public class ActiveDirectoryFederationServicesAuthority extends Authority {
    public ActiveDirectoryFederationServicesAuthority(String str) {
        this.mAuthorityUrl = str;
    }

    public OAuth2Strategy createOAuth2Strategy(OAuth2StrategyParameters oAuth2StrategyParameters) {
        throw new UnsupportedOperationException();
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
