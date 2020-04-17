package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class OsExtension implements Model {
    public static final String NAME = "name";
    public static final String VER = "ver";
    public String name;
    public String ver;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || OsExtension.class != obj.getClass()) {
            return false;
        }
        OsExtension osExtension = (OsExtension) obj;
        String str = this.name;
        if (str == null ? osExtension.name != null : !str.equals(osExtension.name)) {
            return false;
        }
        String str2 = this.ver;
        String str3 = osExtension.ver;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public String getVer() {
        return this.ver;
    }

    public int hashCode() {
        String str = this.name;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.ver;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public void read(JSONObject jSONObject) {
        setName(jSONObject.optString("name", (String) null));
        setVer(jSONObject.optString("ver", (String) null));
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, "name", getName());
        JSONUtils.write(jSONStringer, "ver", getVer());
    }
}
