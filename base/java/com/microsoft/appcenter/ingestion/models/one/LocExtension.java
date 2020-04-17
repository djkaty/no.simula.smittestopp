package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class LocExtension implements Model {
    public static final String TZ = "tz";
    public String tz;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocExtension.class != obj.getClass()) {
            return false;
        }
        String str = this.tz;
        String str2 = ((LocExtension) obj).tz;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public String getTz() {
        return this.tz;
    }

    public int hashCode() {
        String str = this.tz;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public void read(JSONObject jSONObject) {
        setTz(jSONObject.optString(TZ, (String) null));
    }

    public void setTz(String str) {
        this.tz = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, TZ, getTz());
    }
}
