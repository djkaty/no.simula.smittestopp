package com.microsoft.identity.common.internal.cache.registry;

import android.content.Context;
import com.microsoft.identity.common.internal.cache.SharedPreferencesSimpleCacheImpl;
import com.microsoft.identity.common.internal.logging.Logger;
import e.c.c.x.a;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;

public class DefaultBrokerApplicationRegistry extends SharedPreferencesSimpleCacheImpl<BrokerApplicationRegistryData> implements IBrokerApplicationRegistry {
    public static final String DEFAULT_APP_REGISTRY_CACHE_NAME = "com.microsoft.identity.app-registry";
    public static final String KEY_APP_REGISTRY = "app-registry";
    public static final String TAG = "DefaultBrokerApplicationRegistry";

    public DefaultBrokerApplicationRegistry(Context context) {
        super(context, DEFAULT_APP_REGISTRY_CACHE_NAME, KEY_APP_REGISTRY);
    }

    public Type getListTypeToken() {
        return new a<List<BrokerApplicationRegistryData>>() {
        }.getType();
    }

    public BrokerApplicationRegistryData getMetadata(String str, String str2, int i2) {
        BrokerApplicationRegistryData brokerApplicationRegistryData;
        Iterator it = getAll().iterator();
        while (true) {
            if (!it.hasNext()) {
                brokerApplicationRegistryData = null;
                break;
            }
            brokerApplicationRegistryData = (BrokerApplicationRegistryData) it.next();
            if (str.equals(brokerApplicationRegistryData.getClientId()) && i2 == brokerApplicationRegistryData.getUid()) {
                if (str2 == null || str2.equals(brokerApplicationRegistryData.getEnvironment())) {
                    Logger.verbose(TAG + brokerApplicationRegistryData, "Metadata located.");
                }
            }
        }
        Logger.verbose(TAG + brokerApplicationRegistryData, "Metadata located.");
        if (brokerApplicationRegistryData == null) {
            String a = e.a.a.a.a.a(new StringBuilder(), TAG, ":getMetadata");
            Logger.warn(a, "Metadata could not be found for clientId, environment: [" + str + ", " + str2 + "]");
        }
        return brokerApplicationRegistryData;
    }
}
