package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import com.microsoft.azure.sdk.iot.deps.twin.TwinCollection;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class ExportImportDeviceParser {
    public static final String AUTHENTICATION_NAME = "authentication";
    public static final String E_TAG_NAME = "eTag";
    public static final String ID_NAME = "id";
    public static final String IMPORT_MODE_NAME = "importMode";
    public static final String STATUS_NAME = "status";
    public static final String STATUS_REASON_NAME = "statusReason";
    public static final String TAGS_NAME = "tags";
    public static transient Gson gson = new Gson();
    @a(deserialize = true, serialize = true)
    @c("authentication")
    public AuthenticationParser authentication;
    @a(deserialize = true, serialize = true)
    @c("eTag")
    public String eTag;
    @a(deserialize = true, serialize = true)
    @c("id")
    public String id;
    @a(deserialize = true, serialize = true)
    @c("importMode")
    public String importMode;
    @a(deserialize = true, serialize = true)
    @c("status")
    public String status;
    @a(deserialize = true, serialize = true)
    @c("statusReason")
    public String statusReason;
    @a(deserialize = true, serialize = true)
    @c("tags")
    public TwinCollection tags;

    public ExportImportDeviceParser() {
    }

    @Deprecated
    public AuthenticationParser getAuthentication() {
        return this.authentication;
    }

    public final AuthenticationParser getAuthenticationFinal() {
        return this.authentication;
    }

    public String getETag() {
        return this.eTag;
    }

    @Deprecated
    public String getId() {
        return this.id;
    }

    public final String getIdFinal() {
        return this.id;
    }

    public String getImportMode() {
        return this.importMode;
    }

    public String getStatus() {
        return this.status;
    }

    public String getStatusReason() {
        return this.statusReason;
    }

    public TwinCollection getTags() {
        return this.tags;
    }

    public void setAuthentication(AuthenticationParser authenticationParser) {
        if (authenticationParser != null) {
            this.authentication = authenticationParser;
            return;
        }
        throw new IllegalArgumentException("Authentication cannot be null");
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setId(String str) {
        if (str != null) {
            this.id = str;
            return;
        }
        throw new IllegalArgumentException("Argument 'id' cannot be null");
    }

    public void setImportMode(String str) {
        this.importMode = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setStatusReason(String str) {
        this.statusReason = str;
    }

    public void setTags(TwinCollection twinCollection) {
        this.tags = twinCollection;
    }

    public String toJson() {
        return gson.a((Object) this);
    }

    public ExportImportDeviceParser(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("The provided json cannot be null or empty");
        }
        try {
            Class cls = ExportImportDeviceParser.class;
            ExportImportDeviceParser exportImportDeviceParser = (ExportImportDeviceParser) t.a(cls).cast(gson.a(str, (Type) cls));
            if (exportImportDeviceParser.getIdFinal() == null) {
                throw new IllegalArgumentException("The id field must be present in the provided json");
            } else if (exportImportDeviceParser.getAuthenticationFinal() != null) {
                this.authentication = exportImportDeviceParser.authentication;
                this.id = exportImportDeviceParser.id;
                this.importMode = exportImportDeviceParser.importMode;
                this.eTag = exportImportDeviceParser.eTag;
                this.statusReason = exportImportDeviceParser.statusReason;
                this.status = exportImportDeviceParser.status;
                this.tags = exportImportDeviceParser.tags;
            } else {
                throw new IllegalArgumentException("The authentication field must be present in the provided json");
            }
        } catch (s unused) {
            throw new IllegalArgumentException("The provided json could not be parsed");
        }
    }
}
