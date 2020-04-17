package com.microsoft.identity.common.internal.authorities;

import com.google.gson.internal.bind.TreeTypeAdapter;
import e.a.a.a.a;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import e.c.c.m;
import java.lang.reflect.Type;

public class AuthorityDeserializer implements i<Authority> {
    public static final String TAG = "AuthorityDeserializer";

    public Authority deserialize(j jVar, Type type, h hVar) {
        AzureActiveDirectoryAudience azureActiveDirectoryAudience;
        m c2 = jVar.c();
        j a = c2.a("type");
        if (a == null) {
            return null;
        }
        String f2 = a.f();
        char c3 = 65535;
        int hashCode = f2.hashCode();
        if (hashCode != 64548) {
            if (hashCode != 65043) {
                if (hashCode == 2004016 && f2.equals("ADFS")) {
                    c3 = 2;
                }
            } else if (f2.equals(Authority.B2C)) {
                c3 = 1;
            }
        } else if (f2.equals("AAD")) {
            c3 = 0;
        }
        if (c3 == 0) {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: AAD");
            AzureActiveDirectoryAuthority azureActiveDirectoryAuthority = (AzureActiveDirectoryAuthority) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) AzureActiveDirectoryAuthority.class);
            if (!(azureActiveDirectoryAuthority == null || (azureActiveDirectoryAudience = azureActiveDirectoryAuthority.mAudience) == null)) {
                azureActiveDirectoryAudience.setCloudUrl(azureActiveDirectoryAuthority.mAuthorityUrl);
            }
            return azureActiveDirectoryAuthority;
        } else if (c3 == 1) {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: B2C");
            return (Authority) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) AzureActiveDirectoryB2CAuthority.class);
        } else if (c3 != 2) {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: Unknown");
            return (Authority) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) UnknownAuthority.class);
        } else {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: ADFS");
            return (Authority) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) ActiveDirectoryFederationServicesAuthority.class);
        }
    }
}
