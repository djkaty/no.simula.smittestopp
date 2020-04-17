package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.j;
import e.c.c.m;
import java.util.Map;

@Deprecated
public class TwinProperties {
    public static final String DESIRED_TAG = "desired";
    public static final String REPORTED_TAG = "reported";
    public TwinProperty desired = new TwinProperty();
    public TwinProperty reported = new TwinProperty();

    public void clearDesired() {
        this.desired = new TwinProperty();
    }

    public void clearReported() {
        this.reported = new TwinProperty();
    }

    public void enableDesiredMetadata() {
        this.desired.enableMetadata();
    }

    public void enableReportedMetadata() {
        this.reported.enableMetadata();
    }

    public Map<String, Object> getDesiredPropertyMap() {
        return this.desired.getPropertyMap();
    }

    public Integer getDesiredVersion() {
        return this.desired.getVersion();
    }

    public Map<String, Object> getReportedPropertyMap() {
        return this.reported.getPropertyMap();
    }

    public Integer getReportedVersion() {
        return this.reported.getVersion();
    }

    public j resetDesired(Map<String, Object> map) {
        TwinProperty twinProperty = new TwinProperty();
        this.desired = twinProperty;
        return twinProperty.update(map);
    }

    public j resetReported(Map<String, Object> map) {
        TwinProperty twinProperty = new TwinProperty();
        this.reported = twinProperty;
        return twinProperty.update(map);
    }

    public String toJson() {
        return toJsonElement().toString();
    }

    public j toJsonElement() {
        m mVar = new m();
        mVar.a("desired", this.desired.toJsonElement());
        mVar.a("reported", this.reported.toJsonElement());
        return mVar;
    }

    public void update(Map<String, Object> map, TwinChangedCallback twinChangedCallback, TwinChangedCallback twinChangedCallback2) {
        for (Map.Entry next : map.entrySet()) {
            if (((String) next.getKey()).equals("desired")) {
                this.desired.update((Map<String, Object>) (Map) next.getValue(), twinChangedCallback);
            } else if (((String) next.getKey()).equals("reported")) {
                this.reported.update((Map<String, Object>) (Map) next.getValue(), twinChangedCallback2);
            } else {
                throw new IllegalArgumentException("Invalid Property");
            }
        }
    }

    public j updateDesired(Map<String, Object> map) {
        return this.desired.update(map);
    }

    public j updateReported(Map<String, Object> map) {
        return this.reported.update(map);
    }

    public void validate(Map<String, Object> map) {
        for (Map.Entry next : map.entrySet()) {
            if (((String) next.getKey()).equals("desired")) {
                this.desired.validate((Map) next.getValue());
            } else if (((String) next.getKey()).equals("reported")) {
                this.reported.validate((Map) next.getValue());
            } else {
                throw new IllegalArgumentException("Invalid Property");
            }
        }
    }

    public void updateDesired(String str, TwinChangedCallback twinChangedCallback) {
        this.desired.update(str, twinChangedCallback);
    }

    public void updateReported(String str, TwinChangedCallback twinChangedCallback) {
        this.reported.update(str, twinChangedCallback);
    }
}
