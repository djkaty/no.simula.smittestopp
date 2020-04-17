package com.microsoft.identity.common.internal.authscheme;

import com.microsoft.identity.common.internal.logging.Logger;
import e.a.a.a.a;

public class AuthenticationSchemeFactory {
    public static final String TAG = "AuthenticationSchemeFactory";

    public static AbstractAuthenticationScheme createScheme(INameable iNameable) {
        if (iNameable == null) {
            return new BearerAuthenticationSchemeInternal();
        }
        String name = iNameable.getName();
        char c2 = 65535;
        int hashCode = name.hashCode();
        if (hashCode != 80401) {
            if (hashCode == 1985802113 && name.equals("Bearer")) {
                c2 = 0;
            }
        } else if (name.equals(PopAuthenticationSchemeInternal.SCHEME_POP)) {
            c2 = 1;
        }
        if (c2 == 0) {
            Logger.verbose(TAG, "Constructing Bearer Authentication Scheme.");
            return new BearerAuthenticationSchemeInternal();
        } else if (c2 != 1) {
            StringBuilder a = a.a("Unknown or unsupported scheme: ");
            a.append(iNameable.getName());
            throw new UnsupportedOperationException(a.toString());
        } else if (iNameable instanceof IPoPAuthenticationSchemeParams) {
            Logger.verbose(TAG, "Constructing PoP Authentication Scheme.");
            IPoPAuthenticationSchemeParams iPoPAuthenticationSchemeParams = (IPoPAuthenticationSchemeParams) iNameable;
            return new PopAuthenticationSchemeInternal(iPoPAuthenticationSchemeParams.getHttpMethod(), iPoPAuthenticationSchemeParams.getUrl(), iPoPAuthenticationSchemeParams.getNonce());
        } else {
            throw new IllegalStateException("Unrecognized parameter type.");
        }
    }
}
