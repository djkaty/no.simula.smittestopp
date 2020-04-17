package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import android.net.Uri;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryOAuth2Configuration;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdProviderConfiguration;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdProviderConfigurationClient;
import e.a.a.a.a;
import java.net.URL;

public class MicrosoftStsOAuth2Configuration extends AzureActiveDirectoryOAuth2Configuration {
    public static final String ENDPOINT_VERSION = "v2.0";
    public static final String FALLBACK_AUTHORIZE_ENDPOINT_SUFFIX = "/oAuth2/v2.0/authorize";
    public static final String FALLBACK_ENDPOINT_SUFFIX = "/oAuth2/v2.0";
    public static final String FALLBACK_TOKEN_ENDPOINT_SUFFIX = "/oAuth2/v2.0/token";
    public static final String TAG = "MicrosoftStsOAuth2Configuration";

    private URL getEndpointUrlFromAuthority(String str) {
        try {
            return new URL(str);
        } catch (Exception e2) {
            Logger.error(TAG + ":getEndpointUrlFromAuthority", "Unable to create URL from provided authority.", (Throwable) null);
            String a = a.a(new StringBuilder(), TAG, ":getEndpointUrlFromAuthority");
            Logger.errorPII(a, e2.getMessage() + " Unable to create URL from provided authority. authority = " + str, e2);
            return null;
        }
    }

    private URL getEndpointUrlFromRootAndSuffix(URL url, String str) {
        try {
            return new URL(Uri.parse(url.toString()).buildUpon().appendPath(str).build().toString());
        } catch (Exception e2) {
            Logger.error(TAG + ":getEndpointUrlFromRootAndSuffix", "Unable to create URL from provided root and suffix.", (Throwable) null);
            String a = a.a(new StringBuilder(), TAG, ":getEndpointUrlFromRootAndSuffix");
            Logger.errorPII(a, e2.getMessage() + " Unable to create URL from provided root and suffix. root = " + url.toString() + " suffix = " + str, e2);
            return null;
        }
    }

    private OpenIdProviderConfiguration getOpenIdWellKnownConfigForAuthority() {
        URL authorityUrl = getAuthorityUrl();
        return getOpenIdWellKnownConfig(authorityUrl.getHost(), authorityUrl.getPath());
    }

    public URL getAuthorizationEndpoint() {
        OpenIdProviderConfiguration openIdWellKnownConfigForAuthority = getOpenIdWellKnownConfigForAuthority();
        if (openIdWellKnownConfigForAuthority != null) {
            return getEndpointUrlFromAuthority(openIdWellKnownConfigForAuthority.getAuthorizationEndpoint());
        }
        return getEndpointUrlFromRootAndSuffix(getAuthorityUrl(), "/oAuth2/v2.0/authorize");
    }

    public OpenIdProviderConfiguration getOpenIdWellKnownConfig(String str, String str2) {
        try {
            return new OpenIdProviderConfigurationClient(str, str2, ENDPOINT_VERSION).loadOpenIdProviderConfiguration();
        } catch (ServiceException e2) {
            Logger.error(a.a(new StringBuilder(), TAG, ":getOpenIdWellKnownConfig"), e2.getMessage(), e2);
            return null;
        }
    }

    public URL getTokenEndpoint() {
        OpenIdProviderConfiguration openIdWellKnownConfigForAuthority = getOpenIdWellKnownConfigForAuthority();
        if (openIdWellKnownConfigForAuthority == null || openIdWellKnownConfigForAuthority.getTokenEndpoint() == null) {
            return getEndpointUrlFromRootAndSuffix(getAuthorityUrl(), FALLBACK_TOKEN_ENDPOINT_SUFFIX);
        }
        return getEndpointUrlFromAuthority(openIdWellKnownConfigForAuthority.getTokenEndpoint());
    }
}
