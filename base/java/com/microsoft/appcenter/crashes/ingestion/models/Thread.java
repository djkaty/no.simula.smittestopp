package com.microsoft.appcenter.crashes.ingestion.models;

import com.microsoft.appcenter.crashes.ingestion.models.json.StackFrameFactory;
import com.microsoft.appcenter.ingestion.models.CommonProperties;
import com.microsoft.appcenter.ingestion.models.Model;
import com.microsoft.appcenter.ingestion.models.json.JSONUtils;
import java.util.List;
import org.json.JSONObject;
import org.json.JSONStringer;

public class Thread implements Model {
    public List<StackFrame> frames;
    public long id;
    public String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Thread.class != obj.getClass()) {
            return false;
        }
        Thread thread = (Thread) obj;
        if (this.id != thread.id) {
            return false;
        }
        String str = this.name;
        if (str == null ? thread.name != null : !str.equals(thread.name)) {
            return false;
        }
        List<StackFrame> list = this.frames;
        List<StackFrame> list2 = thread.frames;
        if (list != null) {
            return list.equals(list2);
        }
        if (list2 == null) {
            return true;
        }
        return false;
    }

    public List<StackFrame> getFrames() {
        return this.frames;
    }

    public long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        long j2 = this.id;
        int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
        String str = this.name;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        List<StackFrame> list = this.frames;
        if (list != null) {
            i3 = list.hashCode();
        }
        return hashCode + i3;
    }

    public void read(JSONObject jSONObject) {
        setId(jSONObject.getLong("id"));
        setName(jSONObject.optString("name", (String) null));
        setFrames(JSONUtils.readArray(jSONObject, CommonProperties.FRAMES, StackFrameFactory.getInstance()));
    }

    public void setFrames(List<StackFrame> list) {
        this.frames = list;
    }

    public void setId(long j2) {
        this.id = j2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void write(JSONStringer jSONStringer) {
        JSONUtils.write(jSONStringer, "id", Long.valueOf(getId()));
        JSONUtils.write(jSONStringer, "name", getName());
        JSONUtils.writeArray(jSONStringer, CommonProperties.FRAMES, getFrames());
    }
}
