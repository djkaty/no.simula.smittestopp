package com.microsoft.identity.common.internal.migration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Pair;
import com.google.gson.Gson;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.cache.ADALTokenCacheItem;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftRefreshToken;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectory;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.AzureActiveDirectoryAccount;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import e.c.c.m;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdalMigrationAdapter implements IMigrationAdapter<MicrosoftAccount, MicrosoftRefreshToken> {
    public static final String KEY_MIGRATION_STATUS = "adal-migration-complete";
    public static final String MIGRATION_STATUS_SHARED_PREFERENCES = "com.microsoft.identity.client.migration_status";
    public static final String TAG = "AdalMigrationAdapter";
    public static final Object sLock = new Object();
    public final boolean mForceMigration;
    public final Map<String, String> mRedirectsMap;
    public final SharedPreferences mSharedPrefs;

    public AdalMigrationAdapter(Context context, Map<String, String> map, boolean z) {
        this.mSharedPrefs = context.getSharedPreferences(MIGRATION_STATUS_SHARED_PREFERENCES, 0);
        this.mRedirectsMap = map;
        this.mForceMigration = z;
    }

    public static MicrosoftAccount createAccount(ADALTokenCacheItem aDALTokenCacheItem) {
        try {
            String rawIdToken = aDALTokenCacheItem.getRawIdToken();
            String userId = aDALTokenCacheItem.getUserInfo().getUserId();
            String tenantId = aDALTokenCacheItem.getTenantId();
            String host = new URL(aDALTokenCacheItem.getAuthority()).getHost();
            m mVar = new m();
            mVar.a("uid", mVar.a((Object) userId));
            mVar.a("utid", mVar.a((Object) tenantId));
            AzureActiveDirectoryAccount azureActiveDirectoryAccount = new AzureActiveDirectoryAccount(new IDToken(rawIdToken), new ClientInfo(new String(Base64.encode(mVar.toString().getBytes(), 0))));
            azureActiveDirectoryAccount.setEnvironment(host);
            return azureActiveDirectoryAccount;
        } catch (ServiceException | MalformedURLException e2) {
            Logger.error(TAG + ":createAccount", "Failed to create Account", (Throwable) null);
            Logger.errorPII(TAG + ":createAccount", "Failed to create Account", e2);
            return null;
        }
    }

    private Map<String, ADALTokenCacheItem> deserialize(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        Gson gson = new Gson();
        for (Map.Entry next : map.entrySet()) {
            hashMap.put(next.getKey(), gson.a((String) next.getValue(), ADALTokenCacheItem.class));
        }
        return hashMap;
    }

    public static boolean loadCloudDiscoveryMetadata() {
        if (!AzureActiveDirectory.isInitialized()) {
            try {
                AzureActiveDirectory.performCloudDiscovery();
            } catch (IOException e2) {
                Logger.error(TAG + ":loadCloudDiscoveryMetadata", "Failed to load instance discovery metadata", e2);
                return false;
            }
        }
        return true;
    }

    public List<Pair<MicrosoftAccount, MicrosoftRefreshToken>> adapt(Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        synchronized (sLock) {
            if (!getMigrationStatus() && !this.mForceMigration && loadCloudDiscoveryMetadata()) {
                arrayList.addAll(TokenCacheItemMigrationAdapter.migrateTokens(this.mRedirectsMap, deserialize(map).values()));
                setMigrationStatus(true);
            }
        }
        return arrayList;
    }

    public boolean getMigrationStatus() {
        return this.mSharedPrefs.getBoolean(KEY_MIGRATION_STATUS, false);
    }

    @SuppressLint({"ApplySharedPref"})
    public void setMigrationStatus(boolean z) {
        this.mSharedPrefs.edit().putBoolean(KEY_MIGRATION_STATUS, z).commit();
    }
}
