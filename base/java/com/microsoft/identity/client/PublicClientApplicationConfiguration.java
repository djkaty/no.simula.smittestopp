package com.microsoft.identity.client;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.util.Base64;
import com.microsoft.identity.client.configuration.AccountMode;
import com.microsoft.identity.client.configuration.HttpConfiguration;
import com.microsoft.identity.client.configuration.LoggerConfiguration;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.common.adal.internal.AuthenticationConstants;
import com.microsoft.identity.common.adal.internal.AuthenticationSettings;
import com.microsoft.identity.common.internal.authorities.Authority;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAudience;
import com.microsoft.identity.common.internal.authorities.AzureActiveDirectoryAuthority;
import com.microsoft.identity.common.internal.authorities.Environment;
import com.microsoft.identity.common.internal.authorities.UnknownAudience;
import com.microsoft.identity.common.internal.authorities.UnknownAuthority;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2TokenCache;
import com.microsoft.identity.common.internal.telemetry.TelemetryConfiguration;
import com.microsoft.identity.common.internal.ui.AuthorizationAgent;
import com.microsoft.identity.common.internal.ui.browser.BrowserDescriptor;
import e.a.a.a.a;
import e.c.c.v.c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.regex.Pattern;

public class PublicClientApplicationConfiguration {
    public static final String TAG = "PublicClientApplicationConfiguration";
    @c("account_mode")
    public AccountMode mAccountMode;
    public transient Context mAppContext;
    @c("authorities")
    public List<Authority> mAuthorities;
    @c("authorization_user_agent")
    public AuthorizationAgent mAuthorizationAgent;
    @c("browser_safelist")
    public List<BrowserDescriptor> mBrowserSafeList;
    @c("client_capabilities")
    public String mClientCapabilities;
    @c("client_id")
    public String mClientId;
    @c("environment")
    public Environment mEnvironment;
    @c("http")
    public HttpConfiguration mHttpConfiguration;
    public transient boolean mIsSharedDevice = false;
    @c("logging")
    public LoggerConfiguration mLoggerConfiguration;
    @c("multiple_clouds_supported")
    public Boolean mMultipleCloudsSupported;
    public transient OAuth2TokenCache mOAuth2TokenCache;
    @c("redirect_uri")
    public String mRedirectUri;
    @c("minimum_required_broker_protocol_version")
    public String mRequiredBrokerProtocolVersion;
    @c("telemetry")
    public TelemetryConfiguration mTelemetryConfiguration;
    @c("broker_redirect_uri_registered")
    public Boolean mUseBroker;
    @c("web_view_zoom_controls_enabled")
    public Boolean webViewZoomControlsEnabled;
    @c("web_view_zoom_enabled")
    public Boolean webViewZoomEnabled;

    public static final class SerializedNames {
        public static final String ACCOUNT_MODE = "account_mode";
        public static final String AUTHORITIES = "authorities";
        public static final String AUTHORIZATION_USER_AGENT = "authorization_user_agent";
        public static final String BROWSER_SAFE_LIST = "browser_safelist";
        public static final String CLIENT_CAPABILITIES = "client_capabilities";
        public static final String CLIENT_ID = "client_id";
        public static final String ENVIRONMENT = "environment";
        public static final String HTTP = "http";
        public static final String LOGGING = "logging";
        public static final String MULTIPLE_CLOUDS_SUPPORTED = "multiple_clouds_supported";
        public static final String REDIRECT_URI = "redirect_uri";
        public static final String REQUIRED_BROKER_PROTOCOL_VERSION = "minimum_required_broker_protocol_version";
        public static final String TELEMETRY = "telemetry";
        public static final String USE_BROKER = "broker_redirect_uri_registered";
        public static final String WEB_VIEW_ZOOM_CONTROLS_ENABLED = "web_view_zoom_controls_enabled";
        public static final String WEB_VIEW_ZOOM_ENABLED = "web_view_zoom_enabled";
    }

    private void checkDefaultAuthoritySpecified() {
        List<Authority> list = this.mAuthorities;
        if (list != null && list.size() > 1) {
            int i2 = 0;
            for (Authority authority : this.mAuthorities) {
                if (authority.getDefault()) {
                    i2++;
                }
            }
            if (i2 == 0) {
                throw new IllegalArgumentException("One authority in your configuration must be marked as default.");
            } else if (i2 > 1) {
                throw new IllegalArgumentException("More than one authority in your configuration is marked as default.  Only one authority may be default.");
            }
        }
    }

    private boolean isBrokerRedirectUri() {
        StringBuilder a = a.a(AuthenticationConstants.Broker.BROWSER_EXT_INSTALL_PREFIX);
        a.append(this.mAppContext.getPackageName());
        a.append("/.*");
        return Pattern.compile(a.toString()).matcher(this.mRedirectUri).matches();
    }

    private void nullConfigurationCheck(String str, String str2) {
        if (str2 == null) {
            throw new IllegalArgumentException(a.b(str, " cannot be null.  Invalid configuration."));
        }
    }

    private void validateAzureActiveDirectoryAuthority(AzureActiveDirectoryAuthority azureActiveDirectoryAuthority) {
        AzureActiveDirectoryAudience azureActiveDirectoryAudience = azureActiveDirectoryAuthority.mAudience;
        if (azureActiveDirectoryAudience != null && (azureActiveDirectoryAudience instanceof UnknownAudience)) {
            throw new IllegalArgumentException("Unrecognized audience type for AzureActiveDirectoryAuthority -- null, invalid, or unknown type specified");
        }
    }

    private void verifyRedirectUriWithAppSignature() {
        String packageName = this.mAppContext.getPackageName();
        try {
            Signature[] signatureArr = this.mAppContext.getPackageManager().getPackageInfo(packageName, 64).signatures;
            int length = signatureArr.length;
            int i2 = 0;
            while (i2 < length) {
                Signature signature = signatureArr[i2];
                MessageDigest instance = MessageDigest.getInstance("SHA");
                instance.update(signature.toByteArray());
                if (!this.mRedirectUri.equalsIgnoreCase(new Uri.Builder().scheme(AuthenticationConstants.Broker.REDIRECT_PREFIX).authority(packageName).appendPath(Base64.encodeToString(instance.digest(), 2)).build().toString())) {
                    i2++;
                } else {
                    return;
                }
            }
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e2) {
            Logger.error(TAG, "Unexpected error in verifyRedirectUriWithAppSignature()", e2);
        }
        throw new MsalClientException(MsalClientException.REDIRECT_URI_VALIDATION_ERROR, "The redirect URI in the configuration file doesn't match with the one generated with package name and signature hash. Please verify the uri in the config file and your app registration in Azure portal.");
    }

    public void checkIntentFilterAddedToAppManifestForBrokerFlow() {
        boolean hasCustomTabRedirectActivity = MsalUtils.hasCustomTabRedirectActivity(this.mAppContext, this.mRedirectUri);
        if ((getAuthorizationAgent() == AuthorizationAgent.DEFAULT || getAuthorizationAgent() == AuthorizationAgent.BROWSER) && !hasCustomTabRedirectActivity) {
            Uri parse = Uri.parse(this.mRedirectUri);
            StringBuilder a = a.a("Intent filter for: ");
            a.append(BrowserTabActivity.class.getSimpleName());
            a.append(" is missing.  Please make sure you have the following activity in your AndroidManifest.xml \n\n<activity android:name=\"com.microsoft.identity.client.BrowserTabActivity\">\n\t<intent-filter>\n\t\t<action android:name=\"android.intent.action.VIEW\" />\n\t\t<category android:name=\"android.intent.category.DEFAULT\" />\n\t\t<category android:name=\"android.intent.category.BROWSABLE\" />\n\t\t<data\n\t\t\tandroid:host=\"");
            a.append(parse.getHost());
            a.append("\"\n\t\t\tandroid:path=\"");
            a.append(parse.getPath());
            a.append("\"\n\t\t\tandroid:scheme=\"");
            a.append(parse.getScheme());
            a.append("\" />\n\t</intent-filter>\n</activity>\n");
            throw new MsalClientException(MsalClientException.APP_MANIFEST_VALIDATION_ERROR, a.toString());
        } else if (this.mUseBroker.booleanValue()) {
            if (!isBrokerRedirectUri()) {
                Logger.info(TAG, "The app is still using legacy MSAL redirect uri. Switch to MSAL local auth.");
                this.mUseBroker = false;
                return;
            }
            verifyRedirectUriWithAppSignature();
        }
    }

    public AccountMode getAccountMode() {
        return this.mAccountMode;
    }

    public Context getAppContext() {
        return this.mAppContext;
    }

    public List<Authority> getAuthorities() {
        return this.mAuthorities;
    }

    public AuthorizationAgent getAuthorizationAgent() {
        return this.mAuthorizationAgent;
    }

    public List<BrowserDescriptor> getBrowserSafeList() {
        return this.mBrowserSafeList;
    }

    public String getClientCapabilities() {
        return this.mClientCapabilities;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public Authority getDefaultAuthority() {
        List<Authority> list = this.mAuthorities;
        if (list == null) {
            return null;
        }
        if (list.size() <= 1) {
            return this.mAuthorities.get(0);
        }
        for (Authority next : this.mAuthorities) {
            if (next.getDefault()) {
                return next;
            }
        }
        return null;
    }

    public Environment getEnvironment() {
        return this.mEnvironment;
    }

    public HttpConfiguration getHttpConfiguration() {
        return this.mHttpConfiguration;
    }

    public boolean getIsSharedDevice() {
        return this.mIsSharedDevice;
    }

    public LoggerConfiguration getLoggerConfiguration() {
        return this.mLoggerConfiguration;
    }

    public Boolean getMultipleCloudsSupported() {
        return this.mMultipleCloudsSupported;
    }

    public OAuth2TokenCache getOAuth2TokenCache() {
        return this.mOAuth2TokenCache;
    }

    public String getRedirectUri() {
        return this.mRedirectUri;
    }

    public String getRequiredBrokerProtocolVersion() {
        return this.mRequiredBrokerProtocolVersion;
    }

    public TelemetryConfiguration getTelemetryConfiguration() {
        return this.mTelemetryConfiguration;
    }

    public Boolean getUseBroker() {
        return this.mUseBroker;
    }

    public boolean isDefaultAuthorityConfigured() {
        return getDefaultAuthority() != null;
    }

    public boolean isWebViewZoomControlsEnabled() {
        return this.webViewZoomControlsEnabled.booleanValue();
    }

    public boolean isWebViewZoomEnabled() {
        return this.webViewZoomEnabled.booleanValue();
    }

    public void mergeConfiguration(PublicClientApplicationConfiguration publicClientApplicationConfiguration) {
        String str = publicClientApplicationConfiguration.mClientId;
        if (str == null) {
            str = this.mClientId;
        }
        this.mClientId = str;
        String str2 = publicClientApplicationConfiguration.mRedirectUri;
        if (str2 == null) {
            str2 = this.mRedirectUri;
        }
        this.mRedirectUri = str2;
        List<Authority> list = publicClientApplicationConfiguration.mAuthorities;
        if (list == null) {
            list = this.mAuthorities;
        }
        this.mAuthorities = list;
        AuthorizationAgent authorizationAgent = publicClientApplicationConfiguration.mAuthorizationAgent;
        if (authorizationAgent == null) {
            authorizationAgent = this.mAuthorizationAgent;
        }
        this.mAuthorizationAgent = authorizationAgent;
        Environment environment = publicClientApplicationConfiguration.mEnvironment;
        if (environment == null) {
            environment = this.mEnvironment;
        }
        this.mEnvironment = environment;
        HttpConfiguration httpConfiguration = publicClientApplicationConfiguration.mHttpConfiguration;
        if (httpConfiguration == null) {
            httpConfiguration = this.mHttpConfiguration;
        }
        this.mHttpConfiguration = httpConfiguration;
        Boolean bool = publicClientApplicationConfiguration.mMultipleCloudsSupported;
        if (bool == null) {
            bool = this.mMultipleCloudsSupported;
        }
        this.mMultipleCloudsSupported = bool;
        Boolean bool2 = publicClientApplicationConfiguration.mUseBroker;
        if (bool2 == null) {
            bool2 = this.mUseBroker;
        }
        this.mUseBroker = bool2;
        TelemetryConfiguration telemetryConfiguration = publicClientApplicationConfiguration.mTelemetryConfiguration;
        if (telemetryConfiguration == null) {
            telemetryConfiguration = this.mTelemetryConfiguration;
        }
        this.mTelemetryConfiguration = telemetryConfiguration;
        String str3 = publicClientApplicationConfiguration.mRequiredBrokerProtocolVersion;
        if (str3 == null) {
            str3 = this.mRequiredBrokerProtocolVersion;
        }
        this.mRequiredBrokerProtocolVersion = str3;
        List<BrowserDescriptor> list2 = this.mBrowserSafeList;
        if (list2 == null) {
            this.mBrowserSafeList = publicClientApplicationConfiguration.mBrowserSafeList;
        } else {
            List<BrowserDescriptor> list3 = publicClientApplicationConfiguration.mBrowserSafeList;
            if (list3 != null) {
                list2.addAll(list3);
            }
        }
        AccountMode accountMode = publicClientApplicationConfiguration.mAccountMode;
        if (accountMode == AccountMode.MULTIPLE) {
            accountMode = this.mAccountMode;
        }
        this.mAccountMode = accountMode;
        String str4 = publicClientApplicationConfiguration.mClientCapabilities;
        if (str4 == null) {
            str4 = this.mClientCapabilities;
        }
        this.mClientCapabilities = str4;
        boolean z = publicClientApplicationConfiguration.mIsSharedDevice;
        boolean z2 = true;
        if (z) {
            z = this.mIsSharedDevice;
        }
        this.mIsSharedDevice = z;
        LoggerConfiguration loggerConfiguration = publicClientApplicationConfiguration.mLoggerConfiguration;
        if (loggerConfiguration == null) {
            loggerConfiguration = this.mLoggerConfiguration;
        }
        this.mLoggerConfiguration = loggerConfiguration;
        Boolean bool3 = publicClientApplicationConfiguration.webViewZoomControlsEnabled;
        this.webViewZoomControlsEnabled = Boolean.valueOf(bool3 == null || bool3.booleanValue());
        Boolean bool4 = publicClientApplicationConfiguration.webViewZoomEnabled;
        if (bool4 != null && !bool4.booleanValue()) {
            z2 = false;
        }
        this.webViewZoomEnabled = Boolean.valueOf(z2);
    }

    public void setAppContext(Context context) {
        this.mAppContext = context;
    }

    public void setClientId(String str) {
        this.mClientId = str;
    }

    public void setIsSharedDevice(boolean z) {
        this.mIsSharedDevice = z;
    }

    public void setOAuth2TokenCache(OAuth2TokenCache oAuth2TokenCache) {
        this.mOAuth2TokenCache = oAuth2TokenCache;
    }

    public void setRedirectUri(String str) {
        this.mRedirectUri = str;
    }

    public void setTokenCacheSecretKeys(byte[] bArr) {
        AuthenticationSettings.INSTANCE.setSecretKey(bArr);
    }

    public void setWebViewZoomControlsEnabled(boolean z) {
        this.webViewZoomControlsEnabled = Boolean.valueOf(z);
    }

    public void setWebViewZoomEnabled(boolean z) {
        this.webViewZoomEnabled = Boolean.valueOf(z);
    }

    public void validateConfiguration() {
        List<BrowserDescriptor> list;
        nullConfigurationCheck("redirect_uri", this.mRedirectUri);
        nullConfigurationCheck("client_id", this.mClientId);
        checkDefaultAuthoritySpecified();
        if (this.mAuthorizationAgent.equals(AuthorizationAgent.WEBVIEW) || ((list = this.mBrowserSafeList) != null && !list.isEmpty())) {
            for (Authority next : this.mAuthorities) {
                if (next instanceof UnknownAuthority) {
                    throw new IllegalArgumentException("Unrecognized authority type -- null, invalid or unknown type specified.");
                } else if (next instanceof AzureActiveDirectoryAuthority) {
                    validateAzureActiveDirectoryAuthority((AzureActiveDirectoryAuthority) next);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Null browser safe list configured.");
    }
}
