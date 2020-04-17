package com.microsoft.appcenter.ingestion.models.one;

import com.microsoft.appcenter.ingestion.models.AbstractLog;
import com.microsoft.appcenter.ingestion.models.json.JSONDateUtils;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import org.json.JSONObject;
import org.json.JSONStringer;

public abstract class CommonSchemaLog extends AbstractLog {
    public static final String CV = "cV";
    public static final String DATA = "data";
    public static final String EXT = "ext";
    public static final String FLAGS = "flags";
    public static final String IKEY = "iKey";
    public static final String NAME = "name";
    public static final String POP_SAMPLE = "popSample";
    public static final String TIME = "time";
    public static final String VER = "ver";
    public String cV;
    public Data data;
    public Extensions ext;
    public Long flags;
    public String iKey;
    public String name;
    public Double popSample;
    public String ver;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        CommonSchemaLog commonSchemaLog = (CommonSchemaLog) obj;
        String str = this.ver;
        if (str == null ? commonSchemaLog.ver != null : !str.equals(commonSchemaLog.ver)) {
            return false;
        }
        String str2 = this.name;
        if (str2 == null ? commonSchemaLog.name != null : !str2.equals(commonSchemaLog.name)) {
            return false;
        }
        Double d2 = this.popSample;
        if (d2 == null ? commonSchemaLog.popSample != null : !d2.equals(commonSchemaLog.popSample)) {
            return false;
        }
        String str3 = this.iKey;
        if (str3 == null ? commonSchemaLog.iKey != null : !str3.equals(commonSchemaLog.iKey)) {
            return false;
        }
        Long l2 = this.flags;
        if (l2 == null ? commonSchemaLog.flags != null : !l2.equals(commonSchemaLog.flags)) {
            return false;
        }
        String str4 = this.cV;
        if (str4 == null ? commonSchemaLog.cV != null : !str4.equals(commonSchemaLog.cV)) {
            return false;
        }
        Extensions extensions = this.ext;
        if (extensions == null ? commonSchemaLog.ext != null : !extensions.equals(commonSchemaLog.ext)) {
            return false;
        }
        Data data2 = this.data;
        Data data3 = commonSchemaLog.data;
        if (data2 != null) {
            return data2.equals(data3);
        }
        if (data3 == null) {
            return true;
        }
        return false;
    }

    public String getCV() {
        return this.cV;
    }

    public Data getData() {
        return this.data;
    }

    public Extensions getExt() {
        return this.ext;
    }

    public Long getFlags() {
        return this.flags;
    }

    public String getIKey() {
        return this.iKey;
    }

    public String getName() {
        return this.name;
    }

    public Double getPopSample() {
        return this.popSample;
    }

    public String getVer() {
        return this.ver;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.ver;
        int i2 = 0;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.name;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Double d2 = this.popSample;
        int hashCode4 = (hashCode3 + (d2 != null ? d2.hashCode() : 0)) * 31;
        String str3 = this.iKey;
        int hashCode5 = (hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Long l2 = this.flags;
        int hashCode6 = (hashCode5 + (l2 != null ? l2.hashCode() : 0)) * 31;
        String str4 = this.cV;
        int hashCode7 = (hashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31;
        Extensions extensions = this.ext;
        int hashCode8 = (hashCode7 + (extensions != null ? extensions.hashCode() : 0)) * 31;
        Data data2 = this.data;
        if (data2 != null) {
            i2 = data2.hashCode();
        }
        return hashCode8 + i2;
    }

    public void read(JSONObject jSONObject) {
        setVer(jSONObject.getString("ver"));
        setName(jSONObject.getString("name"));
        setTimestamp(JSONDateUtils.toDate(jSONObject.getString(TIME)));
        if (jSONObject.has(POP_SAMPLE)) {
            setPopSample(Double.valueOf(jSONObject.getDouble(POP_SAMPLE)));
        }
        setIKey(jSONObject.optString(IKEY, (String) null));
        setFlags(JSONUtils.readLong(jSONObject, FLAGS));
        setCV(jSONObject.optString(CV, (String) null));
        if (jSONObject.has(EXT)) {
            Extensions extensions = new Extensions();
            extensions.read(jSONObject.getJSONObject(EXT));
            setExt(extensions);
        }
        if (jSONObject.has("data")) {
            Data data2 = new Data();
            data2.read(jSONObject.getJSONObject("data"));
            setData(data2);
        }
    }

    public void setCV(String str) {
        this.cV = str;
    }

    public void setData(Data data2) {
        this.data = data2;
    }

    public void setExt(Extensions extensions) {
        this.ext = extensions;
    }

    public void setFlags(Long l2) {
        this.flags = l2;
    }

    public void setIKey(String str) {
        this.iKey = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPopSample(Double d2) {
        this.popSample = d2;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void write(JSONStringer jSONStringer) {
        jSONStringer.key("ver").value(getVer());
        jSONStringer.key("name").value(getName());
        jSONStringer.key(TIME).value(JSONDateUtils.toString(getTimestamp()));
        JSONUtils.write(jSONStringer, POP_SAMPLE, getPopSample());
        JSONUtils.write(jSONStringer, IKEY, getIKey());
        JSONUtils.write(jSONStringer, FLAGS, getFlags());
        JSONUtils.write(jSONStringer, CV, getCV());
        if (getExt() != null) {
            jSONStringer.key(EXT).object();
            getExt().write(jSONStringer);
            jSONStringer.endObject();
        }
        if (getData() != null) {
            jSONStringer.key("data").object();
            getData().write(jSONStringer);
            jSONStringer.endObject();
        }
    }
}
