package com.microsoft.identity.common.internal.request;

import com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme;
import e.c.c.i;
import e.c.c.r;

public class AuthenticationSchemeTypeAdapter implements i<AbstractAuthenticationScheme>, r<AbstractAuthenticationScheme> {
    public static final String TAG = "AuthenticationSchemeTypeAdapter";

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x004b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme deserialize(e.c.c.j r4, java.lang.reflect.Type r5, e.c.c.h r6) {
        /*
            r3 = this;
            e.c.c.m r5 = r4.c()
            java.lang.String r0 = "name"
            e.c.c.j r5 = r5.a((java.lang.String) r0)
            java.lang.String r5 = r5.f()
            int r0 = r5.hashCode()
            r1 = 80401(0x13a11, float:1.12666E-40)
            r2 = 1
            if (r0 == r1) goto L_0x0028
            r1 = 1985802113(0x765cef81, float:1.1202764E33)
            if (r0 == r1) goto L_0x001e
            goto L_0x0032
        L_0x001e:
            java.lang.String r0 = "Bearer"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0032
            r5 = 0
            goto L_0x0033
        L_0x0028:
            java.lang.String r0 = "PoP"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0032
            r5 = 1
            goto L_0x0033
        L_0x0032:
            r5 = -1
        L_0x0033:
            if (r5 == 0) goto L_0x004b
            if (r5 == r2) goto L_0x0040
            java.lang.String r4 = TAG
            java.lang.String r5 = "Unrecognized auth scheme. Deserializing as null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r4, r5)
            r4 = 0
            return r4
        L_0x0040:
            java.lang.Class<com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal> r5 = com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal.class
            com.google.gson.internal.bind.TreeTypeAdapter$b r6 = (com.google.gson.internal.bind.TreeTypeAdapter.b) r6
            java.lang.Object r4 = r6.a((e.c.c.j) r4, (java.lang.reflect.Type) r5)
            com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r4 = (com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme) r4
            return r4
        L_0x004b:
            java.lang.Class<com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal> r5 = com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal.class
            com.google.gson.internal.bind.TreeTypeAdapter$b r6 = (com.google.gson.internal.bind.TreeTypeAdapter.b) r6
            java.lang.Object r4 = r6.a((e.c.c.j) r4, (java.lang.reflect.Type) r5)
            com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r4 = (com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme) r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.request.AuthenticationSchemeTypeAdapter.deserialize(e.c.c.j, java.lang.reflect.Type, e.c.c.h):com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x003f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public e.c.c.j serialize(com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme r4, java.lang.reflect.Type r5, e.c.c.q r6) {
        /*
            r3 = this;
            java.lang.String r5 = r4.getName()
            int r0 = r5.hashCode()
            r1 = 80401(0x13a11, float:1.12666E-40)
            r2 = 1
            if (r0 == r1) goto L_0x001e
            r1 = 1985802113(0x765cef81, float:1.1202764E33)
            if (r0 == r1) goto L_0x0014
            goto L_0x0028
        L_0x0014:
            java.lang.String r0 = "Bearer"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0028
            r5 = 0
            goto L_0x0029
        L_0x001e:
            java.lang.String r0 = "PoP"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L_0x0028
            r5 = 1
            goto L_0x0029
        L_0x0028:
            r5 = -1
        L_0x0029:
            if (r5 == 0) goto L_0x003f
            if (r5 == r2) goto L_0x0036
            java.lang.String r4 = TAG
            java.lang.String r5 = "Unrecognized auth scheme. Serializing as null."
            com.microsoft.identity.common.internal.logging.Logger.warn(r4, r5)
            r4 = 0
            return r4
        L_0x0036:
            java.lang.Class<com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal> r5 = com.microsoft.identity.common.internal.authscheme.PopAuthenticationSchemeInternal.class
            com.google.gson.internal.bind.TreeTypeAdapter$b r6 = (com.google.gson.internal.bind.TreeTypeAdapter.b) r6
            e.c.c.j r4 = r6.a((java.lang.Object) r4, (java.lang.reflect.Type) r5)
            return r4
        L_0x003f:
            java.lang.Class<com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal> r5 = com.microsoft.identity.common.internal.authscheme.BearerAuthenticationSchemeInternal.class
            com.google.gson.internal.bind.TreeTypeAdapter$b r6 = (com.google.gson.internal.bind.TreeTypeAdapter.b) r6
            e.c.c.j r4 = r6.a((java.lang.Object) r4, (java.lang.reflect.Type) r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.common.internal.request.AuthenticationSchemeTypeAdapter.serialize(com.microsoft.identity.common.internal.authscheme.AbstractAuthenticationScheme, java.lang.reflect.Type, e.c.c.q):e.c.c.j");
    }
}
