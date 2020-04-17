package com.microsoft.appcenter.ingestion.models.properties;

import com.microsoft.appcenter.ingestion.models.CommonProperties;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TypedPropertyUtils {
    public static TypedProperty create(String str) {
        if ("boolean".equals(str)) {
            return new BooleanTypedProperty();
        }
        if ("dateTime".equals(str)) {
            return new DateTimeTypedProperty();
        }
        if (DoubleTypedProperty.TYPE.equals(str)) {
            return new DoubleTypedProperty();
        }
        if (LongTypedProperty.TYPE.equals(str)) {
            return new LongTypedProperty();
        }
        if ("string".equals(str)) {
            return new StringTypedProperty();
        }
        throw new JSONException(a.b("Unsupported type: ", str));
    }

    public static List<TypedProperty> read(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray(CommonProperties.TYPED_PROPERTIES);
        if (optJSONArray == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(optJSONArray.length());
        for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
            JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
            TypedProperty create = create(jSONObject2.getString("type"));
            create.read(jSONObject2);
            arrayList.add(create);
        }
        return arrayList;
    }
}
