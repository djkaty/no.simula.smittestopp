package com.microsoft.azure.sdk.iot.deps.twin;

import com.microsoft.azure.sdk.iot.deps.util.Tools;
import e.c.c.e;
import e.c.c.j;
import e.c.c.m;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;
import java.util.Map;

public class TwinState extends RegisterManager {
    public static final String CONFIGURATION_TAG = "configurations";
    public static final String PROPERTIES_TAG = "properties";
    public static final String TAGS_TAG = "tags";
    @a(deserialize = true, serialize = false)
    @c("configurations")
    public Map<String, ConfigurationInfo> configurations;
    @a(deserialize = true, serialize = false)
    @c("properties")
    public TwinProperties properties;
    @a(deserialize = true, serialize = false)
    @c("tags")
    public TwinCollection tags;

    public TwinState(TwinCollection twinCollection, TwinCollection twinCollection2, TwinCollection twinCollection3) {
        if (twinCollection != null) {
            this.tags = TwinCollection.createFromRawCollection(twinCollection);
        }
        if (twinCollection2 != null || twinCollection3 != null) {
            this.properties = new TwinProperties(twinCollection2, twinCollection3);
        }
    }

    public static TwinState createFromDesiredPropertyJson(String str) {
        if (!Tools.isNullOrEmpty(str).booleanValue()) {
            e eVar = new e();
            eVar.b();
            eVar.f1303l = false;
            Class cls = TwinCollection.class;
            return new TwinState((TwinCollection) null, (TwinCollection) t.a(cls).cast(eVar.a().a(str, (Type) cls)), (TwinCollection) null);
        }
        throw new IllegalArgumentException("JSON with result is null or empty");
    }

    public static TwinState createFromPropertiesJson(String str) {
        if (!Tools.isNullOrEmpty(str).booleanValue()) {
            e eVar = new e();
            eVar.b();
            eVar.f1303l = false;
            Class cls = TwinProperties.class;
            TwinProperties twinProperties = (TwinProperties) t.a(cls).cast(eVar.a().a(str, (Type) cls));
            return new TwinState((TwinCollection) null, twinProperties.getDesired(), twinProperties.getReported());
        }
        throw new IllegalArgumentException("JSON with result is null or empty");
    }

    public static TwinState createFromReportedPropertyJson(String str) {
        if (!Tools.isNullOrEmpty(str).booleanValue()) {
            e eVar = new e();
            eVar.b();
            eVar.f1303l = false;
            Class cls = TwinCollection.class;
            return new TwinState((TwinCollection) null, (TwinCollection) null, (TwinCollection) t.a(cls).cast(eVar.a().a(str, (Type) cls)));
        }
        throw new IllegalArgumentException("JSON with result is null or empty");
    }

    public static TwinState createFromTwinJson(String str) {
        if (!Tools.isNullOrEmpty(str).booleanValue()) {
            e eVar = new e();
            eVar.b();
            eVar.f1303l = false;
            Class cls = TwinState.class;
            TwinState twinState = (TwinState) t.a(cls).cast(eVar.a().a(str, (Type) cls));
            twinState.tags = new TwinCollection(twinState.getTags());
            TwinProperties twinProperties = twinState.properties;
            if (twinProperties != null) {
                twinState.properties = new TwinProperties(twinProperties.getDesired(), twinState.properties.getReported());
            }
            return twinState;
        }
        throw new IllegalArgumentException("JSON with result is null or empty");
    }

    public Map<String, ConfigurationInfo> getConfigurations() {
        return this.configurations;
    }

    public String getConnectionState() {
        TwinConnectionState twinConnectionState = this.connectionState;
        if (twinConnectionState == null) {
            return null;
        }
        return twinConnectionState.toString();
    }

    public TwinCollection getDesiredProperty() {
        TwinProperties twinProperties = this.properties;
        if (twinProperties == null) {
            return null;
        }
        return twinProperties.getDesired();
    }

    public TwinCollection getReportedProperty() {
        TwinProperties twinProperties = this.properties;
        if (twinProperties == null) {
            return null;
        }
        return twinProperties.getReported();
    }

    public TwinCollection getTags() {
        return new TwinCollection(this.tags);
    }

    public j toJsonElement() {
        e eVar = new e();
        eVar.f1303l = false;
        eVar.f1298g = true;
        m c2 = eVar.a().b(this).c();
        if (this.properties != null) {
            c2.c().a("properties", this.properties.toJsonElement());
        }
        return c2;
    }

    public String toString() {
        e eVar = new e();
        eVar.b();
        eVar.m = true;
        eVar.f1303l = false;
        m c2 = eVar.a().b(this).c();
        TwinCollection twinCollection = this.tags;
        if (twinCollection != null) {
            c2.a("tags", twinCollection.toJsonElementWithMetadata());
        }
        TwinProperties twinProperties = this.properties;
        if (twinProperties != null) {
            c2.a("properties", twinProperties.toJsonElementWithMetadata());
        }
        return c2.toString();
    }

    public TwinState() {
    }
}
