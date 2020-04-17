package com.microsoft.azure.storage;

import com.microsoft.azure.storage.SharedAccessPolicy;
import java.util.HashMap;

public abstract class Permissions<T extends SharedAccessPolicy> {
    public HashMap<String, T> sharedAccessPolicies = new HashMap<>();

    public HashMap<String, T> getSharedAccessPolicies() {
        return this.sharedAccessPolicies;
    }

    public void setSharedAccessPolicies(HashMap<String, T> hashMap) {
        this.sharedAccessPolicies = hashMap;
    }
}
