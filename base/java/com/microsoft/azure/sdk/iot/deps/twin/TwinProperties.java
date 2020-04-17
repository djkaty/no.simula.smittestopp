package com.microsoft.azure.sdk.iot.deps.twin;

import e.c.c.j;
import e.c.c.m;
import e.c.c.v.a;
import e.c.c.v.c;

public class TwinProperties {
    public static final String DESIRED_PROPERTIES_TAG = "desired";
    public static final String REPORTED_PROPERTIES_TAG = "reported";
    @a(deserialize = true, serialize = true)
    @c("desired")
    public TwinCollection desired;
    @a(deserialize = true, serialize = true)
    @c("reported")
    public TwinCollection reported;

    public TwinProperties(TwinCollection twinCollection, TwinCollection twinCollection2) {
        if (twinCollection == null && twinCollection2 == null) {
            throw new IllegalArgumentException("Desired property cannot be null.");
        }
        if (twinCollection != null) {
            this.desired = TwinCollection.createFromRawCollection(twinCollection);
        }
        if (twinCollection2 != null) {
            this.reported = TwinCollection.createFromRawCollection(twinCollection2);
        }
    }

    public TwinCollection getDesired() {
        if (this.desired == null) {
            return null;
        }
        return new TwinCollection(this.desired);
    }

    public TwinCollection getReported() {
        if (this.reported == null) {
            return null;
        }
        return new TwinCollection(this.reported);
    }

    public j toJsonElement() {
        m mVar = new m();
        TwinCollection twinCollection = this.desired;
        if (twinCollection != null) {
            mVar.a("desired", twinCollection.toJsonElement());
        }
        TwinCollection twinCollection2 = this.reported;
        if (twinCollection2 != null) {
            mVar.a("reported", twinCollection2.toJsonElement());
        }
        return mVar;
    }

    public j toJsonElementWithMetadata() {
        m mVar = new m();
        TwinCollection twinCollection = this.desired;
        if (twinCollection != null) {
            mVar.a("desired", twinCollection.toJsonElementWithMetadata());
        }
        TwinCollection twinCollection2 = this.reported;
        if (twinCollection2 != null) {
            mVar.a("reported", twinCollection2.toJsonElementWithMetadata());
        }
        return mVar;
    }

    public String toString() {
        return toJsonElementWithMetadata().toString();
    }

    public TwinProperties() {
    }
}
