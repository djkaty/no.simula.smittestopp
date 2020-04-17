package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONStringer;

public class Data implements Model {
    public static final String BASE_DATA = "baseData";
    public static final String BASE_TYPE = "baseType";
    public final JSONObject mProperties = new JSONObject();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Data.class != obj.getClass()) {
            return false;
        }
        return this.mProperties.toString().equals(((Data) obj).mProperties.toString());
    }

    public JSONObject getProperties() {
        return this.mProperties;
    }

    public int hashCode() {
        return this.mProperties.toString().hashCode();
    }

    public void read(JSONObject jSONObject) {
        JSONArray names = jSONObject.names();
        if (names != null) {
            for (int i2 = 0; i2 < names.length(); i2++) {
                String string = names.getString(i2);
                this.mProperties.put(string, jSONObject.get(string));
            }
        }
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, BASE_TYPE, this.mProperties.optString(BASE_TYPE, (String) null));
        JSONUtils.write(jSONStringer, BASE_DATA, this.mProperties.optJSONObject(BASE_DATA));
        JSONArray names = this.mProperties.names();
        if (names != null) {
            for (int i2 = 0; i2 < names.length(); i2++) {
                String string = names.getString(i2);
                if (!string.equals(BASE_TYPE) && !string.equals(BASE_DATA)) {
                    jSONStringer.key(string).value(this.mProperties.get(string));
                }
            }
        }
    }
}
