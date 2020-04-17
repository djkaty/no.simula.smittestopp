package com.microsoft.identity.common.internal.providers.oauth2;

import android.net.Uri;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.controllers.TaskCompletedCallbackWithError;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.HttpRequest;
import com.microsoft.identity.common.internal.net.HttpResponse;
import e.c.c.w.t;
import java.io.IOException;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class OpenIdProviderConfigurationClient {
    public static final String TAG = "OpenIdProviderConfigurationClient";
    public static final ExecutorService sBackgroundExecutor = Executors.newCachedThreadPool();
    public static final Map<URL, OpenIdProviderConfiguration> sConfigCache = new HashMap();
    public static final String sWellKnownConfig = "/.well-known/openid-configuration";
    public final Gson mGson;
    public final String mIssuer;

    public interface OpenIdProviderConfigurationCallback extends TaskCompletedCallbackWithError<OpenIdProviderConfiguration, Exception> {
    }

    public OpenIdProviderConfigurationClient(String str) {
        this.mGson = new Gson();
        this.mIssuer = Uri.parse(sanitize(str)).toString();
    }

    private void cacheConfiguration(URL url, OpenIdProviderConfiguration openIdProviderConfiguration) {
        sConfigCache.put(url, openIdProviderConfiguration);
    }

    private OpenIdProviderConfiguration parseMetadata(String str) {
        Class cls = OpenIdProviderConfiguration.class;
        return (OpenIdProviderConfiguration) t.a(cls).cast(this.mGson.a(str, (Type) cls));
    }

    private String sanitize(String str) {
        String trim = str.trim();
        return str.endsWith("/") ? str.substring(0, trim.length() - 1) : trim;
    }

    public void loadOpenIdProviderConfiguration(final OpenIdProviderConfigurationCallback openIdProviderConfigurationCallback) {
        sBackgroundExecutor.submit(new Runnable() {
            public void run() {
                try {
                    openIdProviderConfigurationCallback.onTaskCompleted(OpenIdProviderConfigurationClient.this.loadOpenIdProviderConfiguration());
                } catch (ServiceException e2) {
                    openIdProviderConfigurationCallback.onError(e2);
                }
            }
        });
    }

    public synchronized OpenIdProviderConfiguration loadOpenIdProviderConfiguration() {
        try {
            URL url = new URL(this.mIssuer + sWellKnownConfig);
            OpenIdProviderConfiguration openIdProviderConfiguration = sConfigCache.get(url);
            if (openIdProviderConfiguration != null) {
                Logger.info(TAG + ":loadOpenIdProviderConfiguration", "Using cached metadata result.");
                return openIdProviderConfiguration;
            }
            Logger.verbose(TAG + ":loadOpenIdProviderConfiguration", "Config URL is valid.");
            Logger.verbosePII(TAG + ":loadOpenIdProviderConfiguration", "Using request URL: " + url);
            HttpResponse sendGet = HttpRequest.sendGet(url, new HashMap());
            int statusCode = sendGet.getStatusCode();
            if (200 != statusCode || TextUtils.isEmpty(sendGet.getBody())) {
                throw new ServiceException(ServiceException.OPENID_PROVIDER_CONFIGURATION_FAILED_TO_LOAD, "OpenId Provider Configuration metadata failed to load with status: " + statusCode, (Throwable) null);
            }
            OpenIdProviderConfiguration parseMetadata = parseMetadata(sendGet.getBody());
            cacheConfiguration(url, parseMetadata);
            return parseMetadata;
        } catch (IOException e2) {
            throw new ServiceException(ServiceException.OPENID_PROVIDER_CONFIGURATION_FAILED_TO_LOAD, "IOException while requesting metadata", e2);
        }
    }

    public OpenIdProviderConfigurationClient(String str, String str2) {
        this(str, str2, "");
    }

    public OpenIdProviderConfigurationClient(String str, String str2, String str3) {
        this.mGson = new Gson();
        this.mIssuer = new Uri.Builder().scheme("https").authority(str).appendPath(str2).appendPath(str3).build().toString();
    }
}
