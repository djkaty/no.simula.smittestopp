package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class UserExtension implements Model {
    public static final String LOCALE = "locale";
    public static final String LOCAL_ID = "localId";
    public String localId;
    public String locale;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || UserExtension.class != obj.getClass()) {
            return false;
        }
        UserExtension userExtension = (UserExtension) obj;
        String str = this.localId;
        if (str == null ? userExtension.localId != null : !str.equals(userExtension.localId)) {
            return false;
        }
        String str2 = this.locale;
        String str3 = userExtension.locale;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public String getLocalId() {
        return this.localId;
    }

    public String getLocale() {
        return this.locale;
    }

    public int hashCode() {
        String str = this.localId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.locale;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public void read(JSONObject jSONObject) {
        setLocalId(jSONObject.optString("localId", (String) null));
        setLocale(jSONObject.optString("locale", (String) null));
    }

    public void setLocalId(String str) {
        this.localId = str;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, "localId", getLocalId());
        JSONUtils.write(jSONStringer, "locale", getLocale());
    }
}
