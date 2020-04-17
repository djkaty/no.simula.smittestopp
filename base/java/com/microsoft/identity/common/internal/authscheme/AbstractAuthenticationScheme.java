package com.microsoft.identity.common.internal.authscheme;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import e.c.c.v.c;

public abstract class AbstractAuthenticationScheme implements INameable {
    @c("name")
    public final String mName;

    public static class SerializedNames {
        public static final String NAME = "name";
    }

    public AbstractAuthenticationScheme(String str) {
        this.mName = str;
    }

    public final String getName() {
        return this.mName;
    }

    public String toString() {
        StringBuilder a = a.a("AbstractAuthenticationScheme{mName='");
        a.append(this.mName);
        a.append(WWWAuthenticateHeader.SINGLE_QUOTE);
        a.append('}');
        return a.toString();
    }
}
