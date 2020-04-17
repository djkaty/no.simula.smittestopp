package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.OperationContext;
import java.util.HashMap;

public class DynamicTableEntity extends TableServiceEntity {
    public HashMap<String, EntityProperty> properties;

    public DynamicTableEntity() {
        this.properties = new HashMap<>();
    }

    public HashMap<String, EntityProperty> getProperties() {
        return this.properties;
    }

    public void readEntity(HashMap<String, EntityProperty> hashMap, OperationContext operationContext) {
        setProperties(hashMap);
    }

    public void setProperties(HashMap<String, EntityProperty> hashMap) {
        this.properties = hashMap;
    }

    public HashMap<String, EntityProperty> writeEntity(OperationContext operationContext) {
        return getProperties();
    }

    public DynamicTableEntity(String str, String str2) {
        super(str, str2);
        this.properties = new HashMap<>();
    }

    public DynamicTableEntity(HashMap<String, EntityProperty> hashMap) {
        this.properties = new HashMap<>();
        setProperties(hashMap);
    }

    public DynamicTableEntity(String str, String str2, HashMap<String, EntityProperty> hashMap) {
        this(str, str2, (String) null, hashMap);
    }

    public DynamicTableEntity(String str, String str2, String str3, HashMap<String, EntityProperty> hashMap) {
        super(str, str2);
        this.properties = new HashMap<>();
        this.etag = str3;
        setProperties(hashMap);
    }
}
