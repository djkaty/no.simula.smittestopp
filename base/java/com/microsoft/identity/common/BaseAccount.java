package com.microsoft.identity.common;

import com.microsoft.identity.common.internal.dto.IAccountRecord;
import java.util.List;

public abstract class BaseAccount implements IAccountRecord {
    public abstract List<String> getCacheIdentifiers();

    public abstract String getUniqueIdentifier();
}
