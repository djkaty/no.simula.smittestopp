package com.microsoft.identity.common.internal.providers.microsoft.azureactivedirectory;

import android.util.Base64;
import com.microsoft.identity.common.adal.internal.util.JsonExtensions;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import com.microsoft.identity.common.exception.ServiceException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Map;
import org.json.JSONException;

public class ClientInfo implements Serializable {
    public static final String UNIQUE_IDENTIFIER = "uid";
    public static final String UNIQUE_TENANT_IDENTIFIER = "utid";
    public String mRawClientInfo;
    public String mUid;
    public String mUtid;

    public ClientInfo(String str) {
        if (!StringExtensions.isNullOrBlank(str)) {
            try {
                Map<String, String> extractJsonObjectIntoMap = JsonExtensions.extractJsonObjectIntoMap(new String(Base64.decode(str, 8), Charset.forName("UTF-8")));
                this.mUid = extractJsonObjectIntoMap.get("uid");
                this.mUtid = extractJsonObjectIntoMap.get("utid");
                this.mRawClientInfo = str;
            } catch (JSONException e2) {
                throw new ServiceException("", "invalid_jwt", e2);
            }
        } else {
            throw new IllegalArgumentException("ClientInfo cannot be null or blank.");
        }
    }

    public String getRawClientInfo() {
        return this.mRawClientInfo;
    }

    public String getUid() {
        return this.mUid;
    }

    public String getUtid() {
        return this.mUtid;
    }
}
