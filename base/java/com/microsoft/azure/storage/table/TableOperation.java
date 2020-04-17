package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class TableOperation {
    public boolean echoContent;
    public TableEntity entity;
    public TableOperationType opType;

    public TableOperation() {
        this.opType = null;
    }

    public static TableOperation delete(TableEntity tableEntity) {
        Utility.assertNotNull("entity", tableEntity);
        Utility.assertNotNullOrEmpty("entity etag", tableEntity.getEtag());
        return new TableOperation(tableEntity, TableOperationType.DELETE);
    }

    private StorageRequest<CloudTableClient, TableOperation, TableResult> deleteImpl(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        final boolean equals = TableConstants.TABLES_SERVICE_TABLES_NAME.equals(str);
        final String valueAsString = equals ? getEntity().writeEntity(operationContext).get(TableConstants.TABLE_NAME).getValueAsString() : null;
        if (!equals) {
            Utility.assertNotNullOrEmpty(SR.ETAG_INVALID_FOR_DELETE, getEntity().getEtag());
            Utility.assertNotNull(SR.PARTITIONKEY_MISSING_FOR_DELETE, getEntity().getPartitionKey());
            Utility.assertNotNull(SR.ROWKEY_MISSING_FOR_DELETE, getEntity().getRowKey());
        }
        final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
        final String str2 = str;
        final OperationContext operationContext2 = operationContext;
        return new StorageRequest<CloudTableClient, TableOperation, TableResult>(tableRequestOptions, cloudTableClient.getStorageUri()) {
            public StorageExtendedErrorInformation parseErrorDetails() {
                return TableStorageErrorDeserializer.parseErrorDetails(this);
            }

            public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, TableOperation tableOperation, OperationContext operationContext) {
                return TableRequest.delete(cloudTableClient.getTransformedEndPoint(operationContext).getUri(getCurrentLocation()), tableRequestOptions2, (UriQueryBuilder) null, operationContext, str2, TableOperation.this.generateRequestIdentity(equals, valueAsString), tableOperation.getEntity().getEtag());
            }

            public TableResult preProcessResponse(TableOperation tableOperation, CloudTableClient cloudTableClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 204) {
                    return tableOperation.parseResponse((InputStream) null, getResult().getStatusCode(), (String) null, operationContext2, tableRequestOptions2);
                }
                throw TableServiceException.generateTableServiceException(getResult(), tableOperation, getConnection().getErrorStream(), tableRequestOptions2.getTablePayloadFormat());
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
            }
        };
    }

    public static TableOperation insert(TableEntity tableEntity) {
        return insert(tableEntity, false);
    }

    private StorageRequest<CloudTableClient, TableOperation, TableResult> insertImpl(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        final boolean equals = TableConstants.TABLES_SERVICE_TABLES_NAME.equals(str);
        final String valueAsString = equals ? getEntity().writeEntity(operationContext).get(TableConstants.TABLE_NAME).getValueAsString() : null;
        if (!equals) {
            Utility.assertNotNull(SR.PARTITIONKEY_MISSING_FOR_INSERT, getEntity().getPartitionKey());
            Utility.assertNotNull(SR.ROWKEY_MISSING_FOR_INSERT, getEntity().getRowKey());
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            TableEntitySerializer.writeSingleEntityToStream(byteArrayOutputStream, tableRequestOptions, this.entity, equals, operationContext);
            final byte[] byteArray = byteArrayOutputStream.toByteArray();
            final OperationContext operationContext2 = operationContext;
            final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
            final String str2 = str;
            return new StorageRequest<CloudTableClient, TableOperation, TableResult>(tableRequestOptions, cloudTableClient.getStorageUri()) {
                public StorageExtendedErrorInformation parseErrorDetails() {
                    return TableStorageErrorDeserializer.parseErrorDetails(this);
                }

                public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, TableOperation tableOperation, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(byteArray));
                    setLength(Long.valueOf((long) byteArray.length));
                    return TableRequest.insert(cloudTableClient.getTransformedEndPoint(operationContext2).getUri(getCurrentLocation()), tableRequestOptions2, (UriQueryBuilder) null, operationContext2, str2, TableOperation.this.generateRequestIdentity(equals, valueAsString), tableOperation.opType != TableOperationType.INSERT ? tableOperation.getEntity().getEtag() : null, tableOperation.getEchoContent(), tableOperation.opType.getUpdateType());
                }

                public TableResult postProcessResponse(HttpURLConnection httpURLConnection, TableOperation tableOperation, CloudTableClient cloudTableClient, OperationContext operationContext, TableResult tableResult) {
                    if (tableOperation.opType != TableOperationType.INSERT || !tableOperation.getEchoContent()) {
                        return tableResult;
                    }
                    return tableOperation.parseResponse(getConnection().getInputStream(), getResult().getStatusCode(), getConnection().getHeaderField("ETag"), operationContext2, tableRequestOptions2);
                }

                public TableResult preProcessResponse(TableOperation tableOperation, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    if (tableOperation.opType == TableOperationType.INSERT) {
                        if (tableOperation.getEchoContent() && getResult().getStatusCode() == 201) {
                            return new TableResult();
                        }
                        if (!tableOperation.getEchoContent() && getResult().getStatusCode() == 204) {
                            return tableOperation.parseResponse((InputStream) null, getResult().getStatusCode(), getConnection().getHeaderField("ETag"), operationContext2, tableRequestOptions2);
                        }
                    } else if (getResult().getStatusCode() == 204) {
                        return tableOperation.parseResponse((InputStream) null, getResult().getStatusCode(), getConnection().getHeaderField("ETag"), operationContext2, tableRequestOptions2);
                    }
                    throw TableServiceException.generateTableServiceException(getResult(), tableOperation, getConnection().getErrorStream(), tableRequestOptions2.getTablePayloadFormat());
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
                }
            };
        } catch (IOException e2) {
            throw StorageException.translateClientException(e2);
        }
    }

    public static TableOperation insertOrMerge(TableEntity tableEntity) {
        Utility.assertNotNull("entity", tableEntity);
        return new TableOperation(tableEntity, TableOperationType.INSERT_OR_MERGE);
    }

    public static TableOperation insertOrReplace(TableEntity tableEntity) {
        Utility.assertNotNull("entity", tableEntity);
        return new TableOperation(tableEntity, TableOperationType.INSERT_OR_REPLACE);
    }

    public static TableOperation merge(TableEntity tableEntity) {
        Utility.assertNotNull("entity", tableEntity);
        Utility.assertNotNullOrEmpty("entity etag", tableEntity.getEtag());
        return new TableOperation(tableEntity, TableOperationType.MERGE);
    }

    private StorageRequest<CloudTableClient, TableOperation, TableResult> mergeImpl(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNullOrEmpty(SR.ETAG_INVALID_FOR_MERGE, getEntity().getEtag());
        Utility.assertNotNull(SR.PARTITIONKEY_MISSING_FOR_MERGE, getEntity().getPartitionKey());
        Utility.assertNotNull(SR.ROWKEY_MISSING_FOR_MERGE, getEntity().getRowKey());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            TableEntitySerializer.writeSingleEntityToStream(byteArrayOutputStream, tableRequestOptions, getEntity(), false, operationContext);
            final byte[] byteArray = byteArrayOutputStream.toByteArray();
            final OperationContext operationContext2 = operationContext;
            final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
            final String str2 = str;
            return new StorageRequest<CloudTableClient, TableOperation, TableResult>(tableRequestOptions, cloudTableClient.getStorageUri()) {
                public StorageExtendedErrorInformation parseErrorDetails() {
                    return TableStorageErrorDeserializer.parseErrorDetails(this);
                }

                public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, TableOperation tableOperation, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(byteArray));
                    setLength(Long.valueOf((long) byteArray.length));
                    return TableRequest.merge(cloudTableClient.getTransformedEndPoint(operationContext2).getUri(getCurrentLocation()), tableRequestOptions2, (UriQueryBuilder) null, operationContext2, str2, TableOperation.this.generateRequestIdentity(false, (String) null), tableOperation.getEntity().getEtag());
                }

                public TableResult preProcessResponse(TableOperation tableOperation, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() == 204) {
                        return tableOperation.parseResponse((InputStream) null, getResult().getStatusCode(), getConnection().getHeaderField("ETag"), operationContext2, tableRequestOptions2);
                    }
                    throw TableServiceException.generateTableServiceException(getResult(), tableOperation, getConnection().getErrorStream(), tableRequestOptions2.getTablePayloadFormat());
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
                }
            };
        } catch (IOException e2) {
            throw StorageException.translateClientException(e2);
        }
    }

    private TableResult performDelete(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        return (TableResult) ExecutionEngine.executeWithRetry(cloudTableClient, this, deleteImpl(cloudTableClient, str, tableRequestOptions, operationContext), tableRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    private TableResult performInsert(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        return (TableResult) ExecutionEngine.executeWithRetry(cloudTableClient, this, insertImpl(cloudTableClient, str, tableRequestOptions, operationContext), tableRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    private TableResult performMerge(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        return (TableResult) ExecutionEngine.executeWithRetry(cloudTableClient, this, mergeImpl(cloudTableClient, str, tableRequestOptions, operationContext), tableRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    private TableResult performUpdate(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        return (TableResult) ExecutionEngine.executeWithRetry(cloudTableClient, this, updateImpl(cloudTableClient, str, tableRequestOptions, operationContext), tableRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    public static TableOperation replace(TableEntity tableEntity) {
        Utility.assertNotNullOrEmpty("entity etag", tableEntity.getEtag());
        return new TableOperation(tableEntity, TableOperationType.REPLACE);
    }

    public static TableOperation retrieve(String str, String str2, Class<? extends TableEntity> cls) {
        QueryTableOperation queryTableOperation = new QueryTableOperation(str, str2);
        queryTableOperation.setClazzType(cls);
        return queryTableOperation;
    }

    private StorageRequest<CloudTableClient, TableOperation, TableResult> updateImpl(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNullOrEmpty(SR.ETAG_INVALID_FOR_UPDATE, getEntity().getEtag());
        Utility.assertNotNull(SR.PARTITIONKEY_MISSING_FOR_UPDATE, getEntity().getPartitionKey());
        Utility.assertNotNull(SR.ROWKEY_MISSING_FOR_UPDATE, getEntity().getRowKey());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            TableEntitySerializer.writeSingleEntityToStream(byteArrayOutputStream, tableRequestOptions, getEntity(), false, operationContext);
            final byte[] byteArray = byteArrayOutputStream.toByteArray();
            final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
            final String str2 = str;
            final OperationContext operationContext2 = operationContext;
            return new StorageRequest<CloudTableClient, TableOperation, TableResult>(tableRequestOptions, cloudTableClient.getStorageUri()) {
                public StorageExtendedErrorInformation parseErrorDetails() {
                    return TableStorageErrorDeserializer.parseErrorDetails(this);
                }

                public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, TableOperation tableOperation, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(byteArray));
                    setLength(Long.valueOf((long) byteArray.length));
                    return TableRequest.update(cloudTableClient.getTransformedEndPoint(operationContext).getUri(getCurrentLocation()), tableRequestOptions2, (UriQueryBuilder) null, operationContext, str2, TableOperation.this.generateRequestIdentity(false, (String) null), tableOperation.getEntity().getEtag());
                }

                public TableResult preProcessResponse(TableOperation tableOperation, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() == 204) {
                        return tableOperation.parseResponse((InputStream) null, getResult().getStatusCode(), getConnection().getHeaderField("ETag"), operationContext2, tableRequestOptions2);
                    }
                    throw TableServiceException.generateTableServiceException(getResult(), tableOperation, getConnection().getErrorStream(), tableRequestOptions2.getTablePayloadFormat());
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
                }
            };
        } catch (IOException e2) {
            throw StorageException.translateClientException(e2);
        }
    }

    public TableResult execute(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, cloudTableClient);
        Utility.assertNotNullOrEmpty(TableConstants.TABLE_NAME, str);
        if (getOperationType() == TableOperationType.INSERT || getOperationType() == TableOperationType.INSERT_OR_MERGE || getOperationType() == TableOperationType.INSERT_OR_REPLACE) {
            return performInsert(cloudTableClient, str, populateAndApplyDefaults, operationContext);
        }
        if (getOperationType() == TableOperationType.DELETE) {
            return performDelete(cloudTableClient, str, populateAndApplyDefaults, operationContext);
        }
        if (getOperationType() == TableOperationType.MERGE) {
            return performMerge(cloudTableClient, str, populateAndApplyDefaults, operationContext);
        }
        if (getOperationType() == TableOperationType.REPLACE) {
            return performUpdate(cloudTableClient, str, populateAndApplyDefaults, operationContext);
        }
        if (getOperationType() == TableOperationType.RETRIEVE) {
            return ((QueryTableOperation) this).performRetrieve(cloudTableClient, str, populateAndApplyDefaults, operationContext);
        }
        throw new IllegalArgumentException(SR.UNKNOWN_TABLE_OPERATION);
    }

    public String generateRequestIdentity(boolean z, String str) {
        String str2;
        String str3;
        if (z) {
            return String.format("'%s'", new Object[]{str.replace("'", "''")});
        }
        TableOperationType tableOperationType = this.opType;
        if (tableOperationType == TableOperationType.INSERT) {
            return "";
        }
        if (tableOperationType == TableOperationType.RETRIEVE) {
            QueryTableOperation queryTableOperation = (QueryTableOperation) this;
            str2 = queryTableOperation.getPartitionKey();
            str3 = queryTableOperation.getRowKey();
        } else {
            str2 = getEntity().getPartitionKey();
            str3 = getEntity().getRowKey();
        }
        return String.format("%s='%s',%s='%s'", new Object[]{TableConstants.PARTITION_KEY, str2.replace("'", "''"), TableConstants.ROW_KEY, str3.replace("'", "''")});
    }

    public String generateRequestIdentityWithTable(String str) {
        return String.format("%s(%s)", new Object[]{str, generateRequestIdentity(false, (String) null)});
    }

    public boolean getEchoContent() {
        return this.echoContent;
    }

    public final synchronized TableEntity getEntity() {
        return this.entity;
    }

    public final synchronized TableOperationType getOperationType() {
        return this.opType;
    }

    public TableResult parseResponse(InputStream inputStream, int i2, String str, OperationContext operationContext, TableRequestOptions tableRequestOptions) {
        if (this.opType != TableOperationType.INSERT || !this.echoContent) {
            TableResult tableResult = new TableResult(i2);
            tableResult.setResult(getEntity());
            if (this.opType == TableOperationType.DELETE || str == null) {
                return tableResult;
            }
            tableResult.setEtag(str);
            tableResult.updateResultObject(getEntity());
            return tableResult;
        }
        TableResult parseSingleOpResponse = TableDeserializer.parseSingleOpResponse(inputStream, tableRequestOptions, i2, (Class) null, (EntityResolver) null, operationContext);
        parseSingleOpResponse.setEtag(str);
        parseSingleOpResponse.updateResultObject(getEntity());
        return parseSingleOpResponse;
    }

    public void setEchoContent(boolean z) {
        this.echoContent = z;
    }

    public final synchronized void setEntity(TableEntity tableEntity) {
        this.entity = tableEntity;
    }

    public static TableOperation insert(TableEntity tableEntity, boolean z) {
        Utility.assertNotNull("entity", tableEntity);
        return new TableOperation(tableEntity, TableOperationType.INSERT, z);
    }

    public TableOperation(TableEntity tableEntity, TableOperationType tableOperationType) {
        this(tableEntity, tableOperationType, false);
    }

    public static TableOperation retrieve(String str, String str2, EntityResolver<?> entityResolver) {
        QueryTableOperation queryTableOperation = new QueryTableOperation(str, str2);
        queryTableOperation.setResolver(entityResolver);
        return queryTableOperation;
    }

    public TableOperation(TableEntity tableEntity, TableOperationType tableOperationType, boolean z) {
        this.opType = null;
        this.entity = tableEntity;
        this.opType = tableOperationType;
        this.echoContent = z;
    }
}
