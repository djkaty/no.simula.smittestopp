package com.microsoft.identity.common.internal.providers.oauth2;

import android.content.Context;

public class OAuth2StrategyParameters {
    public transient Context mContext;

    public Context getContext() {
        return this.mContext;
    }

    public void setContext(Context context) {
        this.mContext = context;
    }
}
