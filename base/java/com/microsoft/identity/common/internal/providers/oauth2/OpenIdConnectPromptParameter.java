package com.microsoft.identity.common.internal.providers.oauth2;

public enum OpenIdConnectPromptParameter {
    NONE,
    SELECT_ACCOUNT,
    LOGIN,
    CONSENT;

    public static OpenIdConnectPromptParameter _fromPromptBehavior(String str) {
        return (str == null || !str.equals("FORCE_PROMPT")) ? NONE : LOGIN;
    }

    public String toString() {
        if (this == NONE) {
            return null;
        }
        return name().toLowerCase();
    }
}
