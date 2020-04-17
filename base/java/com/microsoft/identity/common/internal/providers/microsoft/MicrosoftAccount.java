package com.microsoft.identity.common.internal.providers.microsoft;

import android.net.Uri;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import com.microsoft.identity.common.BaseAccount;
import com.microsoft.identity.common.adal.internal.util.DateExtensions;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.internal.cache.SchemaUtil;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory.ClientInfo;
import com.microsoft.identity.common.internal.providers.oauth2.IDToken;
import com.microsoft.identity.common.internal.util.StringUtil;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;

public abstract class MicrosoftAccount extends BaseAccount {
    public static final String AUTHORITY_TYPE_V1_V2 = "MSSTS";
    public static final String TAG = "MicrosoftAccount";
    public String mDisplayableId;
    public String mEnvironment;
    public String mFamilyName;
    public String mGivenName;
    public IDToken mIDToken;
    public String mMiddleName;
    public String mName;
    public Uri mPasswordChangeUrl;
    public Date mPasswordExpiresOn;
    public String mRawClientInfo;
    public String mTenantId;
    public String mUid;
    public String mUniqueId;
    public String mUtid;

    public MicrosoftAccount() {
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
    }

    private String getUniqueId(Map<String, ?> map) {
        if (!StringExtensions.isNullOrBlank((String) map.get("oid"))) {
            Logger.info(TAG + ":" + "getUniqueId", "Using ObjectId as uniqueId");
            return (String) map.get("oid");
        } else if (StringExtensions.isNullOrBlank((String) map.get("sub"))) {
            return null;
        } else {
            Logger.info(TAG + ":" + "getUniqueId", "Using Subject as uniqueId");
            return (String) map.get("sub");
        }
    }

    public String getAlternativeAccountId() {
        return SchemaUtil.getAlternativeAccountId(this.mIDToken);
    }

    public String getAvatarUrl() {
        return SchemaUtil.getAvatarUrl(this.mIDToken);
    }

    public List<String> getCacheIdentifiers() {
        ArrayList arrayList = new ArrayList();
        String str = this.mDisplayableId;
        if (str != null) {
            arrayList.add(str);
        }
        String str2 = this.mUniqueId;
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (getUniqueIdentifier() != null) {
            arrayList.add(getUniqueIdentifier());
        }
        return arrayList;
    }

    public String getClientInfo() {
        return this.mRawClientInfo;
    }

    public String getDisplayableId() {
        return this.mDisplayableId;
    }

    public abstract String getDisplayableId(Map<String, ?> map);

    public String getEnvironment() {
        return this.mEnvironment;
    }

    public String getFamilyName() {
        return this.mFamilyName;
    }

    public String getFirstName() {
        return this.mGivenName;
    }

    public String getHomeAccountId() {
        return getUid() + CryptoConstants.ALIAS_SEPARATOR + getUtid();
    }

    public IDToken getIDToken() {
        return this.mIDToken;
    }

    public String getLocalAccountId() {
        return getUserId();
    }

    public String getMiddleName() {
        return this.mMiddleName;
    }

    public String getName() {
        return this.mName;
    }

    public Uri getPasswordChangeUrl() {
        return this.mPasswordChangeUrl;
    }

    public Date getPasswordExpiresOn() {
        return DateExtensions.createCopy(this.mPasswordExpiresOn);
    }

    public String getRealm() {
        return this.mTenantId;
    }

    public String getUid() {
        return this.mUid;
    }

    public String getUniqueIdentifier() {
        return StringExtensions.base64UrlEncodeToString(this.mUid) + CryptoConstants.ALIAS_SEPARATOR + StringExtensions.base64UrlEncodeToString(this.mUtid);
    }

    public String getUserId() {
        return this.mUniqueId;
    }

    public String getUsername() {
        return getDisplayableId();
    }

    public String getUtid() {
        return this.mUtid;
    }

    public void setDisplayableId(String str) {
        this.mDisplayableId = str;
    }

    public void setEnvironment(String str) {
        this.mEnvironment = str;
    }

    public void setFamilyName(String str) {
        this.mFamilyName = str;
    }

    public void setFirstName(String str) {
        this.mGivenName = str;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setUid(String str) {
        this.mUid = str;
    }

    public void setUserId(String str) {
        this.mUniqueId = str;
    }

    public void setUtid(String str) {
        this.mUtid = str;
    }

    public String toString() {
        StringBuilder a = a.a("MicrosoftAccount{mDisplayableId='");
        a.a(a, this.mDisplayableId, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mUniqueId='");
        a.a(a, this.mUniqueId, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mName='");
        a.a(a, this.mName, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mUid='");
        a.a(a, this.mUid, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mUtid='");
        a.a(a, this.mUtid, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mIDToken=");
        a.append(this.mIDToken);
        a.append(", mPasswordChangeUrl=");
        a.append(this.mPasswordChangeUrl);
        a.append(", mPasswordExpiresOn=");
        a.append(this.mPasswordExpiresOn);
        a.append(", mTenantId='");
        a.a(a, this.mTenantId, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mGivenName='");
        a.a(a, this.mGivenName, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mFamilyName='");
        a.a(a, this.mFamilyName, (char) WWWAuthenticateHeader.SINGLE_QUOTE, "} ");
        a.append(super.toString());
        return a.toString();
    }

    public MicrosoftAccount(IDToken iDToken, ClientInfo clientInfo) {
        String str = TAG;
        StringBuilder a = a.a("Init: ");
        a.append(TAG);
        Logger.verbose(str, a.toString());
        this.mIDToken = iDToken;
        this.mRawClientInfo = clientInfo.getRawClientInfo();
        Map<String, ?> tokenClaims = iDToken.getTokenClaims();
        this.mUniqueId = getUniqueId(tokenClaims);
        this.mDisplayableId = getDisplayableId(tokenClaims);
        this.mName = (String) tokenClaims.get("name");
        this.mGivenName = (String) tokenClaims.get("given_name");
        this.mFamilyName = (String) tokenClaims.get("family_name");
        this.mMiddleName = (String) tokenClaims.get("middle_name");
        if (!StringUtil.isEmpty((String) tokenClaims.get("tid"))) {
            this.mTenantId = (String) tokenClaims.get("tid");
        } else if (!StringUtil.isEmpty(clientInfo.getUtid())) {
            Logger.warnPII(TAG, "realm is not returned from server. Use utid as realm.");
            this.mTenantId = clientInfo.getUtid();
        } else {
            Logger.warnPII(TAG, "realm and utid is not returned from server. Use empty string as default tid.");
            this.mTenantId = "";
        }
        this.mUid = clientInfo.getUid();
        this.mUtid = clientInfo.getUtid();
        Object obj = tokenClaims.get("pwd_exp");
        long longValue = obj != null ? Long.valueOf(obj.toString()).longValue() : 0;
        if (longValue > 0) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.add(13, (int) longValue);
            this.mPasswordExpiresOn = gregorianCalendar.getTime();
        }
        this.mPasswordChangeUrl = null;
        String str2 = (String) tokenClaims.get("pwd_url");
        if (!StringExtensions.isNullOrBlank(str2)) {
            this.mPasswordChangeUrl = Uri.parse(str2);
        }
    }
}
