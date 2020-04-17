package com.microsoft.azure.sdk.iot.deps.twin;

import com.microsoft.azure.sdk.iot.deps.serializer.ParserUtility;
import com.microsoft.azure.sdk.iot.deps.util.Tools;
import e.c.c.j;
import e.c.c.m;
import java.util.HashMap;
import java.util.Map;

public class TwinCollection extends HashMap<String, Object> {
    public static final String METADATA_TAG = "$metadata";
    public static final String VERSION_TAG = "$version";
    public Map<String, TwinMetadata> metadataMap = new HashMap();
    public TwinMetadata twinMetadata;
    public Integer version;

    public TwinCollection() {
    }

    public static void addMetadata(TwinCollection twinCollection, Map<? extends String, Object> map) {
        Integer num = null;
        String str = null;
        for (Map.Entry next : map.entrySet()) {
            String str2 = (String) next.getKey();
            if (str2.equals("$lastUpdated")) {
                str = (String) next.getValue();
            } else if (!str2.equals("$lastUpdatedVersion") || !(next.getValue() instanceof Number)) {
                Object obj = twinCollection.get(str2);
                if (obj != null) {
                    TwinMetadata tryExtractFromMap = TwinMetadata.tryExtractFromMap(next.getValue());
                    if (tryExtractFromMap != null) {
                        twinCollection.metadataMap.put(str2, tryExtractFromMap);
                    }
                    if (obj instanceof TwinCollection) {
                        addMetadata((TwinCollection) obj, (Map) next.getValue());
                    }
                } else {
                    throw new IllegalArgumentException("Twin metadata is inconsistent");
                }
            } else {
                num = Integer.valueOf(((Number) next.getValue()).intValue());
            }
        }
        if (num != null || !Tools.isNullOrEmpty(str).booleanValue()) {
            twinCollection.twinMetadata = new TwinMetadata(str, num);
        }
    }

    public static TwinCollection createFromRawCollection(Map<? extends String, Object> map) {
        TwinCollection twinCollection = new TwinCollection();
        Map map2 = null;
        for (Map.Entry next : map.entrySet()) {
            if (((String) next.getKey()).equals("$version")) {
                if (next.getValue() instanceof Number) {
                    twinCollection.version = Integer.valueOf(((Number) next.getValue()).intValue());
                } else {
                    throw new IllegalArgumentException("version is not a number");
                }
            } else if (((String) next.getKey()).equals("$metadata")) {
                map2 = (Map) next.getValue();
            } else {
                twinCollection.putFinal((String) next.getKey(), next.getValue());
            }
        }
        if (map2 != null) {
            addMetadata(twinCollection, map2);
        }
        return twinCollection;
    }

    private void fillJsonMetadata(m mVar) {
        TwinMetadata twinMetadata2 = this.twinMetadata;
        if (twinMetadata2 != null) {
            mVar.a("$lastUpdated", mVar.a((Object) ParserUtility.dateTimeUtcToString(twinMetadata2.getLastUpdated())));
            mVar.a("$lastUpdatedVersion", mVar.a((Object) this.twinMetadata.getLastUpdatedVersion()));
        }
        for (Map.Entry next : this.metadataMap.entrySet()) {
            if (next.getValue() != null) {
                m c2 = ((TwinMetadata) next.getValue()).toJsonElement().c();
                Object obj = get(next.getKey());
                if (obj instanceof TwinCollection) {
                    ((TwinCollection) obj).fillJsonMetadata(c2);
                }
                mVar.a((String) next.getKey(), (j) c2);
            }
        }
    }

    @Deprecated
    public TwinMetadata getTwinMetadata() {
        TwinMetadata twinMetadata2 = this.twinMetadata;
        if (twinMetadata2 == null) {
            return null;
        }
        return new TwinMetadata(twinMetadata2);
    }

    public final TwinMetadata getTwinMetadataFinal() {
        TwinMetadata twinMetadata2 = this.twinMetadata;
        if (twinMetadata2 == null) {
            return null;
        }
        return new TwinMetadata(twinMetadata2);
    }

    @Deprecated
    public Integer getVersion() {
        return this.version;
    }

    public final Integer getVersionFinal() {
        return this.version;
    }

    @Deprecated
    public void putAll(Map<? extends String, ?> map) {
        if (map == null || map.isEmpty()) {
            throw new IllegalArgumentException("map to add cannot be null or empty.");
        }
        for (Map.Entry next : map.entrySet()) {
            putFinal((String) next.getKey(), next.getValue());
        }
    }

    public final void putAllFinal(Map<? extends String, ?> map) {
        if (map == null || map.isEmpty()) {
            throw new IllegalArgumentException("map to add cannot be null or empty.");
        }
        for (Map.Entry next : map.entrySet()) {
            putFinal((String) next.getKey(), next.getValue());
        }
    }

    public final Object putFinal(String str, Object obj) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Key cannot be null or empty");
        }
        Object obj2 = get(str);
        if (obj instanceof Map) {
            super.put(str, new TwinCollection((Map<? extends String, Object>) (Map) obj));
        } else {
            super.put(str, obj);
        }
        if (!str.equals("$version") && !str.equals("$metadata")) {
            ParserUtility.validateMap(this);
        }
        return obj2;
    }

    public j toJsonElement() {
        return ParserUtility.mapToJsonElement(this);
    }

    public j toJsonElementWithMetadata() {
        m c2 = ParserUtility.mapToJsonElement(this).c();
        Integer num = this.version;
        if (num != null) {
            c2.a("$version", c2.a((Object) num));
        }
        m mVar = new m();
        fillJsonMetadata(mVar);
        if (!mVar.g().isEmpty()) {
            c2.a("$metadata", (j) mVar);
        }
        return c2;
    }

    public String toString() {
        return toJsonElementWithMetadata().toString();
    }

    @Deprecated
    public Object put(String str, Object obj) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Key cannot be null or empty");
        }
        Object obj2 = get(str);
        if (obj instanceof Map) {
            super.put(str, new TwinCollection((Map<? extends String, Object>) (Map) obj));
        } else {
            super.put(str, obj);
        }
        if (!str.equals("$version") && !str.equals("$metadata")) {
            ParserUtility.validateMap(this);
        }
        return obj2;
    }

    public TwinCollection(Map<? extends String, Object> map) {
        if (map != null && !map.isEmpty()) {
            putAllFinal(map);
        }
    }

    @Deprecated
    public TwinMetadata getTwinMetadata(String str) {
        if (this.metadataMap.get(str) == null) {
            return null;
        }
        return new TwinMetadata(this.metadataMap.get(str));
    }

    public final TwinMetadata getTwinMetadataFinal(String str) {
        if (this.metadataMap.get(str) == null) {
            return null;
        }
        return new TwinMetadata(this.metadataMap.get(str));
    }

    public TwinCollection(TwinCollection twinCollection) {
        if (twinCollection != null && !twinCollection.isEmpty()) {
            this.version = twinCollection.getVersionFinal();
            this.twinMetadata = twinCollection.getTwinMetadataFinal();
            for (Map.Entry entry : twinCollection.entrySet()) {
                if (entry.getValue() instanceof TwinCollection) {
                    super.put((String) entry.getKey(), new TwinCollection((TwinCollection) entry.getValue()));
                } else {
                    super.put((String) entry.getKey(), entry.getValue());
                }
                this.metadataMap.put((String) entry.getKey(), twinCollection.getTwinMetadataFinal((String) entry.getKey()));
            }
        }
    }
}
