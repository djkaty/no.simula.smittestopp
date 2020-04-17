package com.microsoft.identity.client;

import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.oauth2.OpenIdConnectPromptParameter;

public enum Prompt {
    SELECT_ACCOUNT,
    LOGIN,
    CONSENT,
    WHEN_REQUIRED;

    /* renamed from: com.microsoft.identity.client.Prompt$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$identity$client$Prompt = null;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001d */
        static {
            /*
                com.microsoft.identity.client.Prompt[] r0 = com.microsoft.identity.client.Prompt.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$identity$client$Prompt = r0
                r1 = 1
                com.microsoft.identity.client.Prompt r2 = com.microsoft.identity.client.Prompt.SELECT_ACCOUNT     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$identity$client$Prompt     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.identity.client.Prompt r3 = com.microsoft.identity.client.Prompt.LOGIN     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$identity$client$Prompt     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.identity.client.Prompt r3 = com.microsoft.identity.client.Prompt.CONSENT     // Catch:{ NoSuchFieldError -> 0x001d }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$microsoft$identity$client$Prompt     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.identity.client.Prompt r2 = com.microsoft.identity.client.Prompt.WHEN_REQUIRED     // Catch:{ NoSuchFieldError -> 0x0024 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.identity.client.Prompt.AnonymousClass1.<clinit>():void");
        }
    }

    public OpenIdConnectPromptParameter toOpenIdConnectPromptParameter() {
        String str = Prompt.class.getSimpleName() + ":toOpenIdConnectPromptParameter";
        int ordinal = ordinal();
        if (ordinal == 0) {
            return OpenIdConnectPromptParameter.SELECT_ACCOUNT;
        }
        if (ordinal == 1) {
            return OpenIdConnectPromptParameter.LOGIN;
        }
        if (ordinal == 2) {
            return OpenIdConnectPromptParameter.CONSENT;
        }
        if (ordinal != 3) {
            return OpenIdConnectPromptParameter.SELECT_ACCOUNT;
        }
        Logger.info(str, "WHEN_REQUIRED Does not have corresponding value in in the OIDC prompt enumeration.  It's meant to convey do not sent the prompt parameter.");
        throw new UnsupportedOperationException("WHEN_REQUIRED Does not have corresponding value in in the OIDC prompt enumeration.  It's meant to convey do not sent the prompt parameter.");
    }

    public String toString() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return "SELECT_ACCOUNT".toLowerCase();
        }
        if (ordinal == 1) {
            return "LOGIN".toLowerCase();
        }
        if (ordinal == 2) {
            return "CONSENT".toLowerCase();
        }
        if (ordinal == 3) {
            return "WHEN_REQUIRED".toLowerCase();
        }
        throw new IllegalArgumentException();
    }
}
