package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.core.Utility;
import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;

public class TableResult {
    public String etag;
    public int httpStatusCode = -1;
    public HashMap<String, EntityProperty> properties;
    public Object result;

    public TableResult() {
    }

    public static Date parseETagForTimestamp(String str) {
        if (str.startsWith("W/")) {
            str = str.substring(2);
        }
        return Utility.parseDate(URLDecoder.decode(str.substring(10, str.length() - 2), "UTF-8"));
    }

    public String getEtag() {
        return this.etag;
    }

    public int getHttpStatusCode() {
        return this.httpStatusCode;
    }

    public HashMap<String, EntityProperty> getProperties() {
        return this.properties;
    }

    public Object getResult() {
        return this.result;
    }

    public <T> T getResultAsType() {
        return getResult();
    }

    public void setEtag(String str) {
        this.etag = str;
    }

    public void setHttpStatusCode(int i2) {
        this.httpStatusCode = i2;
    }

    public void setProperties(HashMap<String, EntityProperty> hashMap) {
        this.properties = hashMap;
    }

    public void setResult(Object obj) {
        this.result = obj;
    }

    public void updateResultObject(TableEntity tableEntity) {
        this.result = tableEntity;
        tableEntity.setEtag(this.etag);
        String str = this.etag;
        if (str != null) {
            tableEntity.setTimestamp(parseETagForTimestamp(str));
        }
    }

    public TableResult(int i2) {
        this.httpStatusCode = i2;
    }
}
