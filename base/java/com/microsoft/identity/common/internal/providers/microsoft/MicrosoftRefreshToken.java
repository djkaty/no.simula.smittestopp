package com.microsoft.identity.common.internal.providers.microsoft;

import android.text.TextUtils;
import com.microsoft.identity.common.exception.ServiceException;
import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.oauth2.RefreshToken;
import com.microsoft.identity.common.internal.providers.oauth2.TokenResponse;

public class MicrosoftRefreshToken extends RefreshToken {
    public String mClientId;
    public ClientInfo mClientInfo;
    public String mEnvironment;
    public String mFamilyId;
    public String mScope;

    public MicrosoftRefreshToken(String str, ClientInfo clientInfo, String str2, String str3, String str4, String str5) {
        super(str);
        this.mClientInfo = clientInfo;
        this.mScope = str2;
        this.mClientId = str3;
        this.mEnvironment = str4;
        this.mFamilyId = str5;
    }

    public String getClientId() {
        return this.mClientId;
    }

    public ClientInfo getClientInfo() {
        return this.mClientInfo;
    }

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public String getFamilyId() {
        return this.mFamilyId;
    }

    public String getHomeAccountId() {
        return SchemaUtil.getHomeAccountId(this.mClientInfo);
    }

    public boolean getIsFamilyRefreshToken() {
        return !TextUtils.isEmpty(this.mFamilyId);
    }

    public String getSecret() {
        return getRefreshToken();
    }

    public String getTarget() {
        return this.mScope;
    }

    public void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public MicrosoftRefreshToken(MicrosoftTokenResponse microsoftTokenResponse) {
        super((TokenResponse) microsoftTokenResponse);
        try {
            this.mClientInfo = new ClientInfo(microsoftTokenResponse.getClientInfo());
            this.mFamilyId = microsoftTokenResponse.getFamilyId();
            this.mScope = microsoftTokenResponse.getScope();
            this.mClientId = microsoftTokenResponse.getClientId();
        } catch (ServiceException e2) {
            throw new RuntimeException(e2);
        }
    }
}
