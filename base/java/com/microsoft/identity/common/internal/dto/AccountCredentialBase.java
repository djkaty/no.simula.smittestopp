package com.microsoft.identity.common.internal.dto;

import e.a.a.a.a;
import e.c.c.j;
import java.util.HashMap;
import java.util.Map;

public abstract class AccountCredentialBase {
    public transient Map<String, j> mAdditionalFields = new HashMap();

    public Map<String, j> getAdditionalFields() {
        return this.mAdditionalFields;
    }

    public void setAdditionalFields(Map<String, j> map) {
        this.mAdditionalFields = map;
    }

    public String toString() {
        StringBuilder a = a.a("AccountCredentialBase{mAdditionalFields=");
        a.append(this.mAdditionalFields);
        a.append('}');
        return a.toString();
    }
}
