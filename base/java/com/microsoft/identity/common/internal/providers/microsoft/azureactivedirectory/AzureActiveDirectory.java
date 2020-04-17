package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import android.net.Uri;
import android.util.Log;
import com.google.gson.Gson;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.authorities.Environment;
import com.microsoft.identity.common.internal.eststelemetry.EstsTelemetry;
import com.microsoft.identity.common.internal.net.HttpRequest;
import com.microsoft.identity.common.internal.net.HttpResponse;
import com.microsoft.identity.common.internal.net.ObjectMapper;
import com.microsoft.identity.common.internal.net.cache.HttpCache;
import com.microsoft.identity.common.internal.providers.IdentityProvider;
import com.microsoft.identity.common.internal.providers.oauth2.OAuth2StrategyParameters;
import e.c.c.x.a;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class AzureActiveDirectory extends IdentityProvider<AzureActiveDirectoryOAuth2Strategy, AzureActiveDirectoryOAuth2Configuration> {
    public static final String AAD_INSTANCE_DISCOVERY_ENDPOINT = "/common/discovery/instance";
    public static final String API_VERSION = "api-version";
    public static final String API_VERSION_VALUE = "1.1";
    public static final String AUTHORIZATION_ENDPOINT = "authorization_endpoint";
    public static final String AUTHORIZATION_ENDPOINT_VALUE = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize";
    public static final String METADATA = "metadata";
    public static final String TENANT_DISCOVERY_ENDPOINT = "tenant_discovery_endpoint";
    public static ConcurrentMap<String, AzureActiveDirectoryCloud> sAadClouds = new ConcurrentHashMap();
    public static Environment sEnvironment = Environment.Production;
    public static boolean sIsInitialized = false;

    public static List<AzureActiveDirectoryCloud> deserializeClouds(String str) {
        return (List) new Gson().a(str, new a<List<AzureActiveDirectoryCloud>>() {
        }.getType());
    }

    public static AzureActiveDirectoryCloud getAzureActiveDirectoryCloud(URL url) {
        return (AzureActiveDirectoryCloud) sAadClouds.get(url.getHost().toLowerCase(Locale.US));
    }

    public static AzureActiveDirectoryCloud getAzureActiveDirectoryCloudFromHostName(String str) {
        return (AzureActiveDirectoryCloud) sAadClouds.get(str.toLowerCase(Locale.US));
    }

    public static List<AzureActiveDirectoryCloud> getClouds() {
        if (sAadClouds != null) {
            return new ArrayList(sAadClouds.values());
        }
        return new ArrayList();
    }

    public static String getDefaultCloudUrl() {
        return sEnvironment == Environment.PreProduction ? AzureActiveDirectoryEnvironment.PREPRODUCTION_CLOUD_URL : AzureActiveDirectoryEnvironment.PRODUCTION_CLOUD_URL;
    }

    public static Environment getEnvironment() {
        return sEnvironment;
    }

    public static Set<String> getHosts() {
        ConcurrentMap<String, AzureActiveDirectoryCloud> concurrentMap = sAadClouds;
        if (concurrentMap != null) {
            return concurrentMap.keySet();
        }
        return null;
    }

    public static boolean hasCloudHost(URL url) {
        return sAadClouds.containsKey(url.getHost().toLowerCase(Locale.US));
    }

    public static void initializeCloudMetadata(String str, Map<String, String> map) {
        boolean containsKey = map.containsKey(TENANT_DISCOVERY_ENDPOINT);
        String str2 = map.get("metadata");
        if (!containsKey) {
            sAadClouds.put(str, new AzureActiveDirectoryCloud(false));
        } else if (StringExtensions.isNullOrBlank(str2)) {
            sAadClouds.put(str, new AzureActiveDirectoryCloud(str, str));
        } else {
            for (AzureActiveDirectoryCloud next : deserializeClouds(str2)) {
                next.setIsValidated(true);
                for (String lowerCase : next.getHostAliases()) {
                    sAadClouds.put(lowerCase.toLowerCase(Locale.US), next);
                }
            }
            sIsInitialized = true;
        }
    }

    public static boolean isInitialized() {
        return sIsInitialized;
    }

    public static boolean isValidCloudHost(URL url) {
        return hasCloudHost(url) && getAzureActiveDirectoryCloud(url).isValidated();
    }

    public static void performCloudDiscovery() {
        Uri build = Uri.parse(getDefaultCloudUrl() + AAD_INSTANCE_DISCOVERY_ENDPOINT).buildUpon().appendQueryParameter("api-version", "1.1").appendQueryParameter("authorization_endpoint", AUTHORIZATION_ENDPOINT_VALUE).build();
        HashMap hashMap = new HashMap();
        hashMap.putAll(EstsTelemetry.getInstance().getTelemetryHeaders());
        HttpResponse sendGet = HttpRequest.sendGet(new URL(build.toString()), hashMap);
        if (sendGet.getStatusCode() >= 400) {
            Log.d("Discovery", "Error getting cloud information");
        } else {
            HttpCache.flush();
            Iterator<AzureActiveDirectoryCloud> it = ((AzureActiveDirectoryInstanceResponse) ObjectMapper.deserializeJsonStringToObject(sendGet.getBody(), AzureActiveDirectoryInstanceResponse.class)).getClouds().iterator();
            while (it.hasNext()) {
                AzureActiveDirectoryCloud next = it.next();
                next.setIsValidated(true);
                for (String lowerCase : next.getHostAliases()) {
                    sAadClouds.put(lowerCase.toLowerCase(Locale.US), next);
                }
            }
        }
        sIsInitialized = true;
    }

    public static void putCloud(String str, AzureActiveDirectoryCloud azureActiveDirectoryCloud) {
        sAadClouds.put(str.toLowerCase(Locale.US), azureActiveDirectoryCloud);
    }

    public static void setEnvironment(Environment environment) {
        if (environment != sEnvironment) {
            sIsInitialized = false;
            sEnvironment = environment;
        }
    }

    public AzureActiveDirectoryOAuth2Strategy createOAuth2Strategy(AzureActiveDirectoryOAuth2Configuration azureActiveDirectoryOAuth2Configuration) {
        return new AzureActiveDirectoryOAuth2Strategy(azureActiveDirectoryOAuth2Configuration, new OAuth2StrategyParameters());
    }
}
