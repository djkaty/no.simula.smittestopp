package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class NetExtension implements Model {
    public static final String PROVIDER = "provider";
    public String provider;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NetExtension.class != obj.getClass()) {
            return false;
        }
        String str = this.provider;
        String str2 = ((NetExtension) obj).provider;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public String getProvider() {
        return this.provider;
    }

    public int hashCode() {
        String str = this.provider;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void read(JSONObject jSONObject) {
        setProvider(jSONObject.optString(PROVIDER, (String) null));
    }

    public void setProvider(String str) {
        this.provider = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, PROVIDER, getProvider());
    }
}
