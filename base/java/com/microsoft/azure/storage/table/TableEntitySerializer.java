package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.core.Utility;
import e.a.a.a.a;
import e.b.a.a.f;
import e.b.a.a.q.c;
import java.io.OutputStream;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

public final class TableEntitySerializer {
    public static Map<String, EntityProperty> getPropertiesFromDictionary(TableEntity tableEntity, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        HashMap<String, EntityProperty> writeEntity = tableEntity.writeEntity(operationContext);
        if (writeEntity == null) {
            writeEntity = new HashMap<>();
        }
        tableRequestOptions.assertPolicyIfRequired();
        return tableRequestOptions.getEncryptionPolicy() != null ? tableRequestOptions.getEncryptionPolicy().encryptEntity(writeEntity, tableEntity.getPartitionKey(), tableEntity.getRowKey(), tableRequestOptions.getEncryptionResolver()) : writeEntity;
    }

    public static void writeJsonEntity(f fVar, TableRequestOptions tableRequestOptions, TableEntity tableEntity, boolean z, OperationContext operationContext) {
        Map<String, EntityProperty> propertiesFromDictionary = getPropertiesFromDictionary(tableEntity, tableRequestOptions, operationContext);
        fVar.c();
        if (!z) {
            Utility.assertNotNull(TableConstants.PARTITION_KEY, tableEntity.getPartitionKey());
            Utility.assertNotNull(TableConstants.ROW_KEY, tableEntity.getRowKey());
            Utility.assertNotNull(TableConstants.TIMESTAMP, tableEntity.getTimestamp());
            String partitionKey = tableEntity.getPartitionKey();
            c cVar = (c) fVar;
            cVar.a(TableConstants.PARTITION_KEY);
            cVar.b(partitionKey);
            String rowKey = tableEntity.getRowKey();
            cVar.a(TableConstants.ROW_KEY);
            cVar.b(rowKey);
            String javaISO8601Time = Utility.getJavaISO8601Time(tableEntity.getTimestamp());
            cVar.a(TableConstants.TIMESTAMP);
            cVar.b(javaISO8601Time);
        }
        for (Map.Entry next : propertiesFromDictionary.entrySet()) {
            if (!((String) next.getKey()).equals(TableConstants.PARTITION_KEY) && !((String) next.getKey()).equals(TableConstants.ROW_KEY) && !((String) next.getKey()).equals(TableConstants.TIMESTAMP) && !((String) next.getKey()).equals(Constants.ETAG_ELEMENT)) {
                EntityProperty entityProperty = (EntityProperty) next.getValue();
                if (entityProperty.getEdmType().mustAnnotateType()) {
                    String edmType = entityProperty.getEdmType().toString();
                    c cVar2 = (c) fVar;
                    cVar2.a(a.a(new StringBuilder(), (String) next.getKey(), ODataConstants.ODATA_TYPE_SUFFIX));
                    cVar2.b(edmType);
                    String valueAsString = ((EntityProperty) next.getValue()).getValueAsString();
                    cVar2.a((String) next.getKey());
                    cVar2.b(valueAsString);
                } else if (entityProperty.getEdmType() != EdmType.DOUBLE || entityProperty.getIsNull()) {
                    writeJsonProperty(fVar, next);
                } else {
                    String edmType2 = entityProperty.getEdmType().toString();
                    Double valueOf = Double.valueOf(entityProperty.getValueAsDouble());
                    if (valueOf.equals(Double.valueOf(Double.POSITIVE_INFINITY)) || valueOf.equals(Double.valueOf(Double.NEGATIVE_INFINITY)) || valueOf.equals(Double.valueOf(Double.NaN))) {
                        c cVar3 = (c) fVar;
                        cVar3.a(a.a(new StringBuilder(), (String) next.getKey(), ODataConstants.ODATA_TYPE_SUFFIX));
                        cVar3.b(edmType2);
                        String valueAsString2 = ((EntityProperty) next.getValue()).getValueAsString();
                        cVar3.a((String) next.getKey());
                        cVar3.b(valueAsString2);
                    } else {
                        writeJsonProperty(fVar, next);
                    }
                }
            }
        }
        fVar.a();
    }

    public static void writeJsonProperty(f fVar, Map.Entry<String, EntityProperty> entry) {
        EdmType edmType = entry.getValue().getEdmType();
        if (entry.getValue().getIsNull()) {
            fVar.a(entry.getKey());
            fVar.b();
        } else if (edmType == EdmType.BOOLEAN) {
            boolean valueAsBoolean = entry.getValue().getValueAsBoolean();
            fVar.a(entry.getKey());
            fVar.a(valueAsBoolean);
        } else if (edmType == EdmType.DOUBLE) {
            double valueAsDouble = entry.getValue().getValueAsDouble();
            fVar.a(entry.getKey());
            fVar.a(valueAsDouble);
        } else if (edmType == EdmType.INT32) {
            int valueAsInteger = entry.getValue().getValueAsInteger();
            fVar.a(entry.getKey());
            fVar.a(valueAsInteger);
        } else {
            String valueAsString = entry.getValue().getValueAsString();
            c cVar = (c) fVar;
            cVar.a(entry.getKey());
            cVar.b(valueAsString);
        }
    }

    public static void writeSingleEntityToStream(OutputStream outputStream, TableRequestOptions tableRequestOptions, TableEntity tableEntity, boolean z, OperationContext operationContext) {
        f jsonGenerator = Utility.getJsonGenerator(outputStream);
        try {
            writeJsonEntity(jsonGenerator, tableRequestOptions, tableEntity, z, operationContext);
        } finally {
            jsonGenerator.close();
        }
    }

    public static void writeSingleEntityToString(StringWriter stringWriter, TableRequestOptions tableRequestOptions, TableEntity tableEntity, boolean z, OperationContext operationContext) {
        f jsonGenerator = Utility.getJsonGenerator(stringWriter);
        try {
            writeJsonEntity(jsonGenerator, tableRequestOptions, tableEntity, z, operationContext);
        } finally {
            jsonGenerator.close();
        }
    }
}
