package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.s;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class SymmetricKeyParser {
    public static final String PRIMARY_KEY_SERIALIZED_NAME = "primaryKey";
    public static final String SECONDARY_KEY_SERIALIZED_NAME = "secondaryKey";
    public transient Gson gson = new Gson();
    @c("primaryKey")
    public String primaryKey;
    @c("secondaryKey")
    public String secondaryKey;

    public SymmetricKeyParser() {
    }

    @Deprecated
    public String getPrimaryKey() {
        return this.primaryKey;
    }

    public final String getPrimaryKeyFinal() {
        return this.primaryKey;
    }

    @Deprecated
    public String getSecondaryKey() {
        return this.secondaryKey;
    }

    public final String getSecondaryKeyFinal() {
        return this.secondaryKey;
    }

    public void setPrimaryKey(String str) {
        if (str != null) {
            this.primaryKey = str;
            return;
        }
        throw new IllegalArgumentException("primaryKey cannot be null.");
    }

    public void setSecondaryKey(String str) {
        if (str != null) {
            this.secondaryKey = str;
            return;
        }
        throw new IllegalArgumentException("secondaryKey cannot be null.");
    }

    public String toJson() {
        return this.gson.a((Object) this);
    }

    public SymmetricKeyParser(String str, String str2) {
        this.primaryKey = str;
        this.secondaryKey = str2;
    }

    public SymmetricKeyParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = SymmetricKeyParser.class;
            SymmetricKeyParser symmetricKeyParser = (SymmetricKeyParser) t.a(cls).cast(this.gson.a(str, (Type) cls));
            if (symmetricKeyParser.getPrimaryKeyFinal() == null || symmetricKeyParser.getPrimaryKeyFinal().isEmpty() || symmetricKeyParser.getSecondaryKeyFinal() == null || symmetricKeyParser.getSecondaryKeyFinal().isEmpty()) {
                throw new IllegalArgumentException("Both the primary key and secondary key must be present and have a value in the provided json.");
            }
            this.primaryKey = symmetricKeyParser.primaryKey;
            this.secondaryKey = symmetricKeyParser.secondaryKey;
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
