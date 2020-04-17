package com.microsoft.appcenter.ingestion.models;

import org.json.JSONObject;
import org.json.JSONStringer;

public interface Model {
    void read(JSONObject jSONObject);

    void write(JSONStringer jSONStringer);
}
