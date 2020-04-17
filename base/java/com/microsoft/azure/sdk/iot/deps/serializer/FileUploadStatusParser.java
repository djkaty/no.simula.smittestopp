package com.microsoft.azure.sdk.iot.deps.serializer;

import e.c.c.e;
import e.c.c.v.a;
import e.c.c.v.c;

public class FileUploadStatusParser {
    public static final String CORRELATION_ID_TAG = "correlationId";
    public static final String IS_SUCCESS_TAG = "isSuccess";
    public static final String STATUS_CODE_TAG = "statusCode";
    public static final String STATUS_DESCRIPTION_TAG = "statusDescription";
    @a(deserialize = true, serialize = true)
    @c("correlationId")
    public String correlationId = null;
    @a(deserialize = true, serialize = true)
    @c("isSuccess")
    public Boolean isSuccess = null;
    @a(deserialize = true, serialize = true)
    @c("statusCode")
    public Integer statusCode = null;
    @a(deserialize = true, serialize = true)
    @c("statusDescription")
    public String statusDescription = null;

    public FileUploadStatusParser(String str, Boolean bool, Integer num, String str2) {
        setCorrelationId(str);
        updateStatus(bool, num, str2);
    }

    private void setCorrelationId(String str) {
        ParserUtility.validateStringUTF8(str);
        this.correlationId = str;
    }

    private void updateStatus(Boolean bool, Integer num, String str) {
        ParserUtility.validateObject(bool);
        ParserUtility.validateObject(num);
        ParserUtility.validateStringUTF8(str);
        this.isSuccess = bool;
        this.statusCode = num;
        this.statusDescription = str;
    }

    public String toJson() {
        e eVar = new e();
        eVar.f1303l = false;
        eVar.f1298g = true;
        return eVar.a().a((Object) this);
    }

    public FileUploadStatusParser() {
    }
}
