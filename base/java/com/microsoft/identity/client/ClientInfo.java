package com.microsoft.identity.client;

import android.util.Base64;
import com.microsoft.identity.client.exception.MsalClientException;
import com.microsoft.identity.client.internal.MsalUtils;
import java.nio.charset.Charset;
import java.util.Map;
import org.json.JSONException;

public final class ClientInfo {
    public final String mUniqueIdentifier;
    public final String mUniqueTenantIdentifier;

    public static final class ClientInfoClaim {
        public static final String UNIQUE_IDENTIFIER = "uid";
        public static final String UNIQUE_TENANT_IDENTIFIER = "utid";
    }

    public ClientInfo(String str) {
        if (MsalUtils.isEmpty(str)) {
            this.mUniqueIdentifier = "";
            this.mUniqueTenantIdentifier = "";
            return;
        }
        try {
            Map<String, String> extractJsonObjectIntoMap = MsalUtils.extractJsonObjectIntoMap(new String(Base64.decode(str, 8), Charset.forName("UTF-8")));
            this.mUniqueIdentifier = extractJsonObjectIntoMap.get("uid");
            this.mUniqueTenantIdentifier = extractJsonObjectIntoMap.get("utid");
        } catch (JSONException unused) {
            throw new MsalClientException("json_parse_failure", "Failed to parse the returned raw client info.");
        }
    }

    public String getUniqueIdentifier() {
        return MsalUtils.isEmpty(this.mUniqueIdentifier) ? "" : this.mUniqueIdentifier;
    }

    public String getUniqueTenantIdentifier() {
        return MsalUtils.isEmpty(this.mUniqueTenantIdentifier) ? "" : this.mUniqueTenantIdentifier;
    }
}
