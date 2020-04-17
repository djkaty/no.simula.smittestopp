package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import android.text.TextUtils;
import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class SharedPreferencesBrokerApplicationMetadataCache extends SharedPreferencesSimpleCacheImpl<BrokerApplicationMetadata> implements IBrokerApplicationMetadataCache {
    public static final String DEFAULT_APP_METADATA_CACHE_NAME = "com.microsoft.identity.app-meta-cache";
    public static final String KEY_CACHE_LIST = "app-meta-cache";
    public static final String TAG = "SharedPreferencesBrokerApplicationMetadataCache";

    public SharedPreferencesBrokerApplicationMetadataCache(Context context) {
        super(context, DEFAULT_APP_METADATA_CACHE_NAME, KEY_CACHE_LIST);
    }

    public Set<String> getAllClientIds() {
        HashSet hashSet = new HashSet();
        for (BrokerApplicationMetadata clientId : getAll()) {
            hashSet.add(clientId.getClientId());
        }
        String a = a.a(new StringBuilder(), TAG, ":getAllClientIds");
        StringBuilder a2 = a.a("Found [");
        a2.append(hashSet.size());
        a2.append("] client ids.");
        Logger.verbose(a, a2.toString());
        return hashSet;
    }

    public List<BrokerApplicationMetadata> getAllFociApplicationMetadata() {
        Set<String> allFociClientIds = getAllFociClientIds();
        ArrayList arrayList = new ArrayList();
        for (BrokerApplicationMetadata brokerApplicationMetadata : getAll()) {
            if (allFociClientIds.contains(brokerApplicationMetadata.getClientId())) {
                arrayList.add(brokerApplicationMetadata);
            }
        }
        return arrayList;
    }

    public Set<String> getAllFociClientIds() {
        return getAllFociClientIds(false);
    }

    public Set<String> getAllNonFociClientIds() {
        return getAllFociClientIds(true);
    }

    public Type getListTypeToken() {
        return new e.c.c.x.a<List<BrokerApplicationMetadata>>() {
        }.getType();
    }

    public BrokerApplicationMetadata getMetadata(String str, String str2, int i2) {
        BrokerApplicationMetadata brokerApplicationMetadata;
        Iterator it = getAll().iterator();
        while (true) {
            if (!it.hasNext()) {
                brokerApplicationMetadata = null;
                break;
            }
            brokerApplicationMetadata = (BrokerApplicationMetadata) it.next();
            if (str.equals(brokerApplicationMetadata.getClientId()) && str2.equals(brokerApplicationMetadata.getEnvironment()) && i2 == brokerApplicationMetadata.getUid()) {
                Logger.verbose(TAG + brokerApplicationMetadata, "Metadata located.");
                break;
            }
        }
        if (brokerApplicationMetadata == null) {
            String a = a.a(new StringBuilder(), TAG, ":getMetadata");
            Logger.warn(a, "Metadata could not be found for clientId, environment: [" + str + ", " + str2 + "]");
        }
        return brokerApplicationMetadata;
    }

    private Set<String> getAllFociClientIds(boolean z) {
        HashSet hashSet = new HashSet();
        for (BrokerApplicationMetadata brokerApplicationMetadata : getAll()) {
            if (!z) {
                if (!TextUtils.isEmpty(brokerApplicationMetadata.getFoci())) {
                    hashSet.add(brokerApplicationMetadata.getClientId());
                }
            } else if (TextUtils.isEmpty(brokerApplicationMetadata.getFoci())) {
                hashSet.add(brokerApplicationMetadata.getClientId());
            }
        }
        String a = a.a(new StringBuilder(), TAG, ":getAllFociClientIds");
        StringBuilder a2 = a.a("Found [");
        a2.append(hashSet.size());
        a2.append("] client ids.");
        Logger.verbose(a, a2.toString());
        return hashSet;
    }
}
