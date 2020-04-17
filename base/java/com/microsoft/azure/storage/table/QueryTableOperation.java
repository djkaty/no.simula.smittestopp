package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import java.io.InputStream;
import java.net.HttpURLConnection;

public class QueryTableOperation extends TableOperation {
    public Class<? extends TableEntity> clazzType;
    public boolean isPrimaryOnlyRetrieve = false;
    public String partitionKey;
    public EntityResolver<?> resolver;
    public String rowKey;

    public QueryTableOperation() {
        super((TableEntity) null, TableOperationType.RETRIEVE);
    }

    private StorageRequest<CloudTableClient, QueryTableOperation, TableResult> retrieveImpl(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions) {
        final boolean equals = TableConstants.TABLES_SERVICE_TABLES_NAME.equals(str);
        if (getClazzType() != null) {
            Utility.checkNullaryCtor(getClazzType());
        } else {
            Utility.assertNotNull(SR.QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER, getResolver());
        }
        final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
        final String str2 = str;
        return new StorageRequest<CloudTableClient, QueryTableOperation, TableResult>(tableRequestOptions, cloudTableClient.getStorageUri()) {
            public StorageExtendedErrorInformation parseErrorDetails() {
                return TableStorageErrorDeserializer.parseErrorDetails(this);
            }

            public void setRequestLocationMode() {
                setRequestLocationMode(QueryTableOperation.this.isPrimaryOnlyRetrieve() ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, QueryTableOperation queryTableOperation, OperationContext operationContext) {
                return TableRequest.query(cloudTableClient.getTransformedEndPoint(operationContext).getUri(getCurrentLocation()), tableRequestOptions2, (UriQueryBuilder) null, operationContext, str2, QueryTableOperation.this.generateRequestIdentity(equals, queryTableOperation.getPartitionKey()), (ResultContinuation) null);
            }

            public TableResult postProcessResponse(HttpURLConnection httpURLConnection, QueryTableOperation queryTableOperation, CloudTableClient cloudTableClient, OperationContext operationContext, TableResult tableResult) {
                if (getResult().getStatusCode() == 404) {
                    return new TableResult(getResult().getStatusCode());
                }
                return QueryTableOperation.this.parseResponse(httpURLConnection.getInputStream(), getResult().getStatusCode(), getConnection().getHeaderField("ETag"), operationContext, tableRequestOptions2);
            }

            public TableResult preProcessResponse(QueryTableOperation queryTableOperation, CloudTableClient cloudTableClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200 || getResult().getStatusCode() == 404) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
            }
        };
    }

    public Class<? extends TableEntity> getClazzType() {
        return this.clazzType;
    }

    public String getPartitionKey() {
        return this.partitionKey;
    }

    public EntityResolver<?> getResolver() {
        return this.resolver;
    }

    public String getRowKey() {
        return this.rowKey;
    }

    public final boolean isPrimaryOnlyRetrieve() {
        return this.isPrimaryOnlyRetrieve;
    }

    public TableResult parseResponse(InputStream inputStream, int i2, String str, OperationContext operationContext, TableRequestOptions tableRequestOptions) {
        TableResult parseSingleOpResponse = TableDeserializer.parseSingleOpResponse(inputStream, tableRequestOptions, i2, getClazzType(), getResolver(), operationContext);
        parseSingleOpResponse.setEtag(str);
        return parseSingleOpResponse;
    }

    public TableResult performRetrieve(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        tableRequestOptions.assertPolicyIfRequired();
        return (TableResult) ExecutionEngine.executeWithRetry(cloudTableClient, this, retrieveImpl(cloudTableClient, str, tableRequestOptions), tableRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    public void setClazzType(Class<? extends TableEntity> cls) {
        Utility.assertNotNull("clazzType", cls);
        Utility.checkNullaryCtor(cls);
        this.clazzType = cls;
    }

    public void setPartitionKey(String str) {
        this.partitionKey = str;
    }

    public void setPrimaryOnlyRetrieve(boolean z) {
        this.isPrimaryOnlyRetrieve = z;
    }

    public void setResolver(EntityResolver<?> entityResolver) {
        Utility.assertNotNull(SR.QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER, entityResolver);
        this.resolver = entityResolver;
    }

    public void setRowKey(String str) {
        this.rowKey = str;
    }

    public QueryTableOperation(String str, String str2) {
        super((TableEntity) null, TableOperationType.RETRIEVE);
        Utility.assertNotNull("partitionKey", str);
        this.partitionKey = str;
        this.rowKey = str2;
    }
}
