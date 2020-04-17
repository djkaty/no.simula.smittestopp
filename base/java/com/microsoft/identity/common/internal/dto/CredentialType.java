package com.microsoft.identity.common.internal.dto;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public enum CredentialType {
    RefreshToken,
    AccessToken,
    IdToken,
    V1IdToken,
    Password,
    Cookie,
    Certificate,
    AccessToken_With_AuthScheme;
    
    public static final CredentialType[] ID_TOKEN_TYPES = null;

    /* access modifiers changed from: public */
    static {
        CredentialType credentialType;
        CredentialType credentialType2;
        ID_TOKEN_TYPES = new CredentialType[]{credentialType, credentialType2};
    }

    public static CredentialType fromString(String str) {
        for (CredentialType credentialType : values()) {
            if (credentialType.name().equalsIgnoreCase(str)) {
                return credentialType;
            }
        }
        return null;
    }

    public static Set<String> valueSet() {
        HashSet hashSet = new HashSet();
        for (CredentialType name : values()) {
            hashSet.add(name.name());
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
