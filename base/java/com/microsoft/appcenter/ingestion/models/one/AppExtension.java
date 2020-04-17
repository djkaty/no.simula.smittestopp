package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public class AppExtension implements Model {
    public static final String ID = "id";
    public static final String LOCALE = "locale";
    public static final String NAME = "name";
    public static final String USER_ID = "userId";
    public static final String VER = "ver";
    public String id;
    public String locale;
    public String name;
    public String userId;
    public String ver;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AppExtension.class != obj.getClass()) {
            return false;
        }
        AppExtension appExtension = (AppExtension) obj;
        String str = this.id;
        if (str == null ? appExtension.id != null : !str.equals(appExtension.id)) {
            return false;
        }
        String str2 = this.ver;
        if (str2 == null ? appExtension.ver != null : !str2.equals(appExtension.ver)) {
            return false;
        }
        String str3 = this.name;
        if (str3 == null ? appExtension.name != null : !str3.equals(appExtension.name)) {
            return false;
        }
        String str4 = this.locale;
        if (str4 == null ? appExtension.locale != null : !str4.equals(appExtension.locale)) {
            return false;
        }
        String str5 = this.userId;
        String str6 = appExtension.userId;
        if (str5 != null) {
            return str5.equals(str6);
        }
        if (str6 == null) {
            return true;
        }
        return false;
    }

    public String getId() {
        return this.id;
    }

    public String getLocale() {
        return this.locale;
    }

    public String getName() {
        return this.name;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getVer() {
        return this.ver;
    }

    public int hashCode() {
        String str = this.id;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.ver;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.name;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.locale;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.userId;
        if (str5 != null) {
            i2 = str5.hashCode();
        }
        return hashCode4 + i2;
    }

    public void read(JSONObject jSONObject) {
        setId(jSONObject.optString("id", (String) null));
        setVer(jSONObject.optString("ver", (String) null));
        setName(jSONObject.optString("name", (String) null));
        setLocale(jSONObject.optString("locale", (String) null));
        setUserId(jSONObject.optString("userId", (String) null));
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLocale(String str) {
        this.locale = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, "id", getId());
        JSONUtils.write(jSONStringer, "ver", getVer());
        JSONUtils.write(jSONStringer, "name", getName());
        JSONUtils.write(jSONStringer, "locale", getLocale());
        JSONUtils.write(jSONStringer, "userId", getUserId());
    }
}
