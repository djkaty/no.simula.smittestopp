package com.microsoft.identity.common.internal.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftAccount;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import e.a.a.a.a;
import java.util.Map;

public class MicrosoftStsAccount extends MicrosoftAccount {
    public static final String TAG = "MicrosoftStsAccount";

    public MicrosoftStsAccount() {
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
    }

    public String getAuthorityType() {
        return MicrosoftAccount.AUTHORITY_TYPE_V1_V2;
    }

    public String getDisplayableId(Map<String, ?> map) {
        return SchemaUtil.getDisplayableId(map);
    }

    public MicrosoftStsAccount(IDToken iDToken, ClientInfo clientInfo) {
        super(iDToken, clientInfo);
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
    }
}
