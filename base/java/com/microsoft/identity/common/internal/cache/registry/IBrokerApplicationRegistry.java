package com.microsoft.identity.common.internal.cache.registry;

import com.microsoft.identity.common.internal.cache.ISimpleCache;

public interface IBrokerApplicationRegistry extends ISimpleCache<BrokerApplicationRegistryData> {
    BrokerApplicationRegistryData getMetadata(String str, String str2, int i2);
}
