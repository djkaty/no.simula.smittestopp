package com.microsoft.azure.sdk.iot.deps.serializer;

import com.google.gson.Gson;
import e.c.c.e;
import e.c.c.s;
import e.c.c.v.a;
import e.c.c.v.c;
import e.c.c.w.t;
import java.lang.reflect.Type;

public class FileUploadResponseParser {
    public static final String BLOB_NAME_TAG = "blobName";
    public static final String CONTAINER_NAME_TAG = "containerName";
    public static final String CORRELATION_ID_TAG = "correlationId";
    public static final String HOST_NAME_TAG = "hostName";
    public static final String SAS_TOKEN_TAG = "sasToken";
    @a(deserialize = true, serialize = true)
    @c("blobName")
    public String blobName = null;
    @a(deserialize = true, serialize = true)
    @c("containerName")
    public String containerName = null;
    @a(deserialize = true, serialize = true)
    @c("correlationId")
    public String correlationId = null;
    @a(deserialize = true, serialize = true)
    @c("hostName")
    public String hostName = null;
    @a(deserialize = true, serialize = true)
    @c("sasToken")
    public String sasToken = null;

    public FileUploadResponseParser(String str) {
        e eVar = new e();
        eVar.f1303l = false;
        eVar.f1298g = true;
        Gson a = eVar.a();
        ParserUtility.validateStringUTF8(str);
        Class cls = FileUploadResponseParser.class;
        try {
            FileUploadResponseParser fileUploadResponseParser = (FileUploadResponseParser) t.a(cls).cast(a.a(str, (Type) cls));
            ParserUtility.validateStringUTF8(fileUploadResponseParser.hostName);
            ParserUtility.validateStringUTF8(fileUploadResponseParser.containerName);
            ParserUtility.validateStringUTF8(fileUploadResponseParser.correlationId);
            ParserUtility.validateBlobName(fileUploadResponseParser.blobName);
            ParserUtility.validateStringUTF8(fileUploadResponseParser.sasToken);
            this.hostName = fileUploadResponseParser.hostName;
            this.containerName = fileUploadResponseParser.containerName;
            this.correlationId = fileUploadResponseParser.correlationId;
            this.blobName = fileUploadResponseParser.blobName;
            this.sasToken = fileUploadResponseParser.sasToken;
        } catch (s e2) {
            throw new IllegalArgumentException("Malformed json:" + e2);
        }
    }

    public String getBlobName() {
        return this.blobName;
    }

    public String getContainerName() {
        return this.containerName;
    }

    public String getCorrelationId() {
        return this.correlationId;
    }

    public String getHostName() {
        return this.hostName;
    }

    public String getSasToken() {
        return this.sasToken;
    }

    public FileUploadResponseParser() {
    }
}
