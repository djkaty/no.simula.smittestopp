package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.OperationContext;
import java.util.Date;
import java.util.HashMap;

public interface TableEntity {
    String getEtag();

    String getPartitionKey();

    String getRowKey();

    Date getTimestamp();

    void readEntity(HashMap<String, EntityProperty> hashMap, OperationContext operationContext);

    void setEtag(String str);

    void setPartitionKey(String str);

    void setRowKey(String str);

    void setTimestamp(Date date);

    HashMap<String, EntityProperty> writeEntity(OperationContext operationContext);
}
