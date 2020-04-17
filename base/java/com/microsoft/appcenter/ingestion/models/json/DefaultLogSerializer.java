package com.microsoft.appcenter.ingestion.models.json;

import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.LogContainer;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaLog;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

public class DefaultLogSerializer implements LogSerializer {
    public static final String LOGS = "logs";
    public final Map<String, LogFactory> mLogFactories = new HashMap();

    private Log readLog(JSONObject jSONObject, String str) {
        if (str == null) {
            str = jSONObject.getString("type");
        }
        LogFactory logFactory = this.mLogFactories.get(str);
        if (logFactory != null) {
            Log create = logFactory.create();
            create.read(jSONObject);
            return create;
        }
        throw new JSONException(a.b("Unknown log type: ", str));
    }

    private JSONStringer writeLog(JSONStringer jSONStringer, Log log) {
        jSONStringer.object();
        log.write(jSONStringer);
        jSONStringer.endObject();
        return jSONStringer;
    }

    public void addLogFactory(String str, LogFactory logFactory) {
        this.mLogFactories.put(str, logFactory);
    }

    public LogContainer deserializeContainer(String str, String str2) {
        JSONObject jSONObject = new JSONObject(str);
        LogContainer logContainer = new LogContainer();
        JSONArray jSONArray = jSONObject.getJSONArray("logs");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(readLog(jSONArray.getJSONObject(i2), str2));
        }
        logContainer.setLogs(arrayList);
        return logContainer;
    }

    public Log deserializeLog(String str, String str2) {
        return readLog(new JSONObject(str), str2);
    }

    public String serializeContainer(LogContainer logContainer) {
        JSONStringer jSONStringer = new JSONStringer();
        jSONStringer.object();
        jSONStringer.key("logs").array();
        for (Log writeLog : logContainer.getLogs()) {
            writeLog(jSONStringer, writeLog);
        }
        jSONStringer.endArray();
        jSONStringer.endObject();
        return jSONStringer.toString();
    }

    public String serializeLog(Log log) {
        return writeLog(new JSONStringer(), log).toString();
    }

    public Collection<CommonSchemaLog> toCommonSchemaLog(Log log) {
        return this.mLogFactories.get(log.getType()).toCommonSchemaLogs(log);
    }
}
