package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import e.a.a.a.a;
import java.util.Map;

public class AzureActiveDirectoryAccount extends MicrosoftAccount {
    public static final String TAG = "AzureActiveDirectoryAccount";
    public String mIdentityProvider;

    public AzureActiveDirectoryAccount() {
    }

    public String getAuthorityType() {
        return MicrosoftAccount.AUTHORITY_TYPE_V1_V2;
    }

    public String getDisplayableId(Map<String, ?> map) {
        if (!StringExtensions.isNullOrBlank((String) map.get("upn"))) {
            Logger.info(TAG + ":" + "getDisplayableId", "Returning upn as displayableId");
            return (String) map.get("upn");
        } else if (StringExtensions.isNullOrBlank((String) map.get("email"))) {
            return null;
        } else {
            Logger.info(TAG + ":" + "getDisplayableId", "Returning email as displayableId");
            return (String) map.get("email");
        }
    }

    public String getIdentityProvider() {
        return this.mIdentityProvider;
    }

    public void setIdentityProvider(String str) {
        this.mIdentityProvider = str;
    }

    public String toString() {
        StringBuilder a = a.a("AzureActiveDirectoryAccount{} ");
        a.append(super.toString());
        a.append(", mIdentityProvider='");
        a.append(this.mIdentityProvider);
        a.append(WWWAuthenticateHeader.SINGLE_QUOTE);
        return a.toString();
    }

    public AzureActiveDirectoryAccount(IDToken iDToken, ClientInfo clientInfo) {
        super(iDToken, clientInfo);
        this.mIdentityProvider = (String) iDToken.getTokenClaims().get("idp");
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
    }
}
