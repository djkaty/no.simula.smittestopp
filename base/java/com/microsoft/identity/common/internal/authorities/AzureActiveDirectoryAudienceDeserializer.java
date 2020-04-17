package com.microsoft.identity.common.internal.authorities;

import com.google.gson.internal.bind.TreeTypeAdapter;
import e.a.a.a.a;
import e.c.c.h;
import e.c.c.i;
import e.c.c.j;
import e.c.c.m;
import java.lang.reflect.Type;

public class AzureActiveDirectoryAudienceDeserializer implements i<AzureActiveDirectoryAudience> {
    public static final String TAG = "AzureActiveDirectoryAudienceDeserializer";

    public AzureActiveDirectoryAudience deserialize(j jVar, Type type, h hVar) {
        m c2 = jVar.c();
        j a = c2.a("type");
        if (a == null) {
            return null;
        }
        String f2 = a.f();
        char c3 = 65535;
        switch (f2.hashCode()) {
            case -1852590113:
                if (f2.equals("PersonalMicrosoftAccount")) {
                    c3 = 3;
                    break;
                }
                break;
            case 1997980721:
                if (f2.equals("AzureADMultipleOrgs")) {
                    c3 = 1;
                    break;
                }
                break;
            case 2012013030:
                if (f2.equals("AzureADMyOrg")) {
                    c3 = 0;
                    break;
                }
                break;
            case 2081443492:
                if (f2.equals("AzureADandPersonalMicrosoftAccount")) {
                    c3 = 2;
                    break;
                }
                break;
        }
        if (c3 == 0) {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: AzureADMyOrg");
            return (AzureActiveDirectoryAudience) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) AccountsInOneOrganization.class);
        } else if (c3 == 1) {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: AzureADMultipleOrgs");
            return (AzureActiveDirectoryAudience) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) AnyOrganizationalAccount.class);
        } else if (c3 == 2) {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: AzureADandPersonalMicrosoftAccount");
            return (AzureActiveDirectoryAudience) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) AllAccounts.class);
        } else if (c3 != 3) {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: Unknown");
            return (AzureActiveDirectoryAudience) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) UnknownAudience.class);
        } else {
            a.b(new StringBuilder(), TAG, ":deserialize", "Type: PersonalMicrosoftAccount");
            return (AzureActiveDirectoryAudience) ((TreeTypeAdapter.b) hVar).a((j) c2, (Type) AnyPersonalAccount.class);
        }
    }
}
