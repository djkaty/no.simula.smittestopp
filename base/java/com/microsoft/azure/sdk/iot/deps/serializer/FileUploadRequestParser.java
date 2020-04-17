package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;

public class FileUploadRequestParser {
    public static final String BLOB_NAME_TAG = "blobName";
    @a(deserialize = true, serialize = true)
    @c("blobName")
    public String blobName;

    public FileUploadRequestParser(String str) {
        ParserUtility.validateBlobName(str);
        this.blobName = str;
    }

    public String toJson() {
        e eVar = new e();
        eVar.f1303l = false;
        eVar.f1298g = true;
        return eVar.a().a((Object) this);
    }

    public FileUploadRequestParser() {
    }
}
