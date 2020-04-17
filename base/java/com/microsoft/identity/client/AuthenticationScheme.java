package com.microsoft.identity.client;

import com.microsoft.identity.common.internal.authscheme.INameable;

public abstract class AuthenticationScheme implements INameable {
    public final String mSchemeName;

    public AuthenticationScheme(String str) {
        this.mSchemeName = str;
    }

    public final String getName() {
        return this.mSchemeName;
    }
}
