package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.ServiceProperties;
import com.microsoft.azure.storage.ServiceStats;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsAnonymous;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.LazySegmentedIterable;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SegmentedStorageRequest;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public final class CloudTableClient extends ServiceClient {
    public TableRequestOptions defaultRequestOptions;
    public final EntityResolver<String> tableNameResolver;

    public CloudTableClient(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    public static void addEncryptionProperties(TableQuery<?> tableQuery) {
        if (tableQuery.getColumns() != null) {
            String[] strArr = new String[(tableQuery.getColumns().length + 2)];
            System.arraycopy(tableQuery.getColumns(), 0, strArr, 2, tableQuery.getColumns().length);
            strArr[0] = Constants.EncryptionConstants.TABLE_ENCRYPTION_KEY_DETAILS;
            strArr[1] = Constants.EncryptionConstants.TABLE_ENCRYPTION_PROPERTY_DETAILS;
            tableQuery.setColumns(strArr);
        }
    }

    private <T extends TableEntity, R> StorageRequest<CloudTableClient, TableQuery<T>, ResultSegment<T>> executeQuerySegmentedCoreImpl(TableQuery<T> tableQuery, EntityResolver<R> entityResolver, TableRequestOptions tableRequestOptions, SegmentedStorageRequest segmentedStorageRequest) {
        if (entityResolver == null) {
            Utility.assertNotNull(SR.QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER, tableQuery.getClazzType());
        }
        tableRequestOptions.assertPolicyIfRequired();
        if (tableRequestOptions.getEncryptionPolicy() != null) {
            addEncryptionProperties(tableQuery);
        }
        final SegmentedStorageRequest segmentedStorageRequest2 = segmentedStorageRequest;
        final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
        final TableQuery<T> tableQuery2 = tableQuery;
        return new StorageRequest<CloudTableClient, TableQuery<T>, ResultSegment<T>>(tableRequestOptions, getStorageUri()) {
            public StorageExtendedErrorInformation parseErrorDetails() {
                return TableStorageErrorDeserializer.parseErrorDetails(this);
            }

            public void setRequestLocationMode() {
                setRequestLocationMode(Utility.getListingLocationMode(segmentedStorageRequest2.getToken()));
            }

            public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, TableQuery<T> tableQuery, OperationContext operationContext) {
                return TableRequest.query(cloudTableClient.getTransformedEndPoint(operationContext).getUri(getCurrentLocation()), tableRequestOptions2, tableQuery2.generateQueryBuilder(), operationContext, tableQuery2.getSourceTableName(), (String) null, segmentedStorageRequest2.getToken());
            }

            public ResultSegment<T> postProcessResponse(HttpURLConnection httpURLConnection, TableQuery<T> tableQuery, CloudTableClient cloudTableClient, OperationContext operationContext, ResultSegment<T> resultSegment) {
                int i2;
                ODataPayload<?> parseQueryResponse = TableDeserializer.parseQueryResponse(httpURLConnection.getInputStream(), tableRequestOptions2, tableQuery2.getClazzType(), (EntityResolver) null, operationContext);
                ResultContinuation tableContinuationFromResponse = TableResponse.getTableContinuationFromResponse(httpURLConnection);
                if (tableContinuationFromResponse != null) {
                    tableContinuationFromResponse.setTargetLocation(getResult().getTargetLocation());
                }
                segmentedStorageRequest2.setToken(tableContinuationFromResponse);
                ArrayList<T> arrayList = parseQueryResponse.results;
                if (tableQuery2.getTakeCount() == null) {
                    i2 = parseQueryResponse.results.size();
                } else {
                    i2 = tableQuery2.getTakeCount().intValue();
                }
                return new ResultSegment<>(arrayList, Integer.valueOf(i2), tableContinuationFromResponse);
            }

            public ResultSegment<T> preProcessResponse(TableQuery<T> tableQuery, CloudTableClient cloudTableClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                throw TableServiceException.generateTableServiceException(getResult(), (TableOperation) null, getConnection().getErrorStream(), tableRequestOptions2.getTablePayloadFormat());
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
            }
        };
    }

    private <T extends TableEntity, R> StorageRequest<CloudTableClient, TableQuery<T>, ResultSegment<R>> executeQuerySegmentedWithResolverCoreImpl(TableQuery<T> tableQuery, EntityResolver<R> entityResolver, TableRequestOptions tableRequestOptions, SegmentedStorageRequest segmentedStorageRequest) {
        if (entityResolver == null) {
            Utility.assertNotNull(SR.QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER, tableQuery.getClazzType());
        }
        if (tableRequestOptions.getEncryptionPolicy() != null) {
            addEncryptionProperties(tableQuery);
        }
        final SegmentedStorageRequest segmentedStorageRequest2 = segmentedStorageRequest;
        final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
        final TableQuery<T> tableQuery2 = tableQuery;
        final EntityResolver<R> entityResolver2 = entityResolver;
        return new StorageRequest<CloudTableClient, TableQuery<T>, ResultSegment<R>>(tableRequestOptions, getStorageUri()) {
            public StorageExtendedErrorInformation parseErrorDetails() {
                return TableStorageErrorDeserializer.parseErrorDetails(this);
            }

            public void setRequestLocationMode() {
                setRequestLocationMode(Utility.getListingLocationMode(segmentedStorageRequest2.getToken()));
            }

            public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, TableQuery<T> tableQuery, OperationContext operationContext) {
                return TableRequest.query(cloudTableClient.getTransformedEndPoint(operationContext).getUri(getCurrentLocation()), tableRequestOptions2, tableQuery2.generateQueryBuilder(), operationContext, tableQuery2.getSourceTableName(), (String) null, segmentedStorageRequest2.getToken());
            }

            public ResultSegment<R> postProcessResponse(HttpURLConnection httpURLConnection, TableQuery<T> tableQuery, CloudTableClient cloudTableClient, OperationContext operationContext, ResultSegment<R> resultSegment) {
                int i2;
                ODataPayload<?> parseQueryResponse = TableDeserializer.parseQueryResponse(httpURLConnection.getInputStream(), tableRequestOptions2, tableQuery2.getClazzType(), entityResolver2, operationContext);
                ResultContinuation tableContinuationFromResponse = TableResponse.getTableContinuationFromResponse(httpURLConnection);
                if (tableContinuationFromResponse != null) {
                    tableContinuationFromResponse.setTargetLocation(getResult().getTargetLocation());
                }
                segmentedStorageRequest2.setToken(tableContinuationFromResponse);
                ArrayList<T> arrayList = parseQueryResponse.results;
                if (tableQuery2.getTakeCount() == null) {
                    i2 = parseQueryResponse.results.size();
                } else {
                    i2 = tableQuery2.getTakeCount().intValue();
                }
                return new ResultSegment<>(arrayList, Integer.valueOf(i2), tableContinuationFromResponse);
            }

            public ResultSegment<R> preProcessResponse(TableQuery<T> tableQuery, CloudTableClient cloudTableClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                throw TableServiceException.generateTableServiceException(getResult(), (TableOperation) null, getConnection().getErrorStream(), tableRequestOptions2.getTablePayloadFormat());
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
            }
        };
    }

    private TableQuery<TableServiceEntity> generateListTablesQuery(String str) {
        TableQuery<TableServiceEntity> from = TableQuery.from(TableServiceEntity.class);
        from.setSourceTableName(TableConstants.TABLES_SERVICE_TABLES_NAME);
        if (Utility.isNullOrEmpty(str)) {
            return from;
        }
        return from.where(String.format("(%s ge '%s') and (%s lt '%s{')", new Object[]{TableConstants.TABLE_NAME, str, TableConstants.TABLE_NAME, str}));
    }

    @DoesServiceRequest
    public final ServiceProperties downloadServiceProperties() {
        return downloadServiceProperties((TableRequestOptions) null, (OperationContext) null);
    }

    public <T extends TableEntity, R> ResultSegment<?> executeQuerySegmentedImpl(TableQuery<T> tableQuery, EntityResolver<R> entityResolver, ResultContinuation resultContinuation, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this);
        Utility.assertContinuationType(resultContinuation, ResultContinuationType.TABLE);
        SegmentedStorageRequest segmentedStorageRequest = new SegmentedStorageRequest();
        segmentedStorageRequest.setToken(resultContinuation);
        return (ResultSegment) ExecutionEngine.executeWithRetry(this, tableQuery, executeQuerySegmentedWithResolverCoreImpl(tableQuery, entityResolver, populateAndApplyDefaults, segmentedStorageRequest), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public <T extends TableEntity, R> Iterable<?> generateIteratorForQuery(TableQuery<T> tableQuery, EntityResolver<R> entityResolver, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        OperationContext operationContext2 = operationContext;
        operationContext2.initialize();
        SegmentedStorageRequest segmentedStorageRequest = new SegmentedStorageRequest();
        if (entityResolver == null) {
            return new LazySegmentedIterable(executeQuerySegmentedCoreImpl(tableQuery, entityResolver, tableRequestOptions, segmentedStorageRequest), this, tableQuery, tableRequestOptions.getRetryPolicyFactory(), operationContext2);
        }
        return new LazySegmentedIterable(executeQuerySegmentedWithResolverCoreImpl(tableQuery, entityResolver, tableRequestOptions, segmentedStorageRequest), this, tableQuery, tableRequestOptions.getRetryPolicyFactory(), operationContext2);
    }

    @DoesServiceRequest
    public ServiceStats getServiceStats() {
        return getServiceStats((TableRequestOptions) null, (OperationContext) null);
    }

    public CloudTable getTableReference(String str) {
        return new CloudTable(str, this);
    }

    public final StorageUri getTransformedEndPoint(OperationContext operationContext) {
        return getCredentials().transformUri(getStorageUri(), operationContext);
    }

    public boolean isUsePathStyleUris() {
        return super.isUsePathStyleUris();
    }

    @DoesServiceRequest
    public Iterable<String> listTables() {
        return listTables((String) null);
    }

    @DoesServiceRequest
    public ResultSegment<String> listTablesSegmented() {
        return listTablesSegmented((String) null);
    }

    public void setDefaultRequestOptions(TableRequestOptions tableRequestOptions) {
        Utility.assertNotNull("defaultRequestOptions", tableRequestOptions);
        this.defaultRequestOptions = tableRequestOptions;
    }

    @DoesServiceRequest
    public void uploadServiceProperties(ServiceProperties serviceProperties) {
        uploadServiceProperties(serviceProperties, (TableRequestOptions) null, (OperationContext) null);
    }

    public CloudTableClient(StorageUri storageUri, StorageCredentials storageCredentials) {
        super(storageUri, storageCredentials);
        this.defaultRequestOptions = new TableRequestOptions();
        this.tableNameResolver = new EntityResolver<String>() {
            public String resolve(String str, String str2, Date date, HashMap<String, EntityProperty> hashMap, String str3) {
                return hashMap.get(TableConstants.TABLE_NAME).getValueAsString();
            }
        };
        if (storageCredentials == null || storageCredentials.getClass().equals(StorageCredentialsAnonymous.class)) {
            throw new IllegalArgumentException(SR.STORAGE_CREDENTIALS_NULL_OR_ANONYMOUS);
        }
        TableRequestOptions.applyDefaults(this.defaultRequestOptions);
    }

    @DoesServiceRequest
    public final ServiceProperties downloadServiceProperties(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this);
        return (ServiceProperties) ExecutionEngine.executeWithRetry(this, null, downloadServicePropertiesImpl(populateAndApplyDefaults, true), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public TableRequestOptions getDefaultRequestOptions() {
        return this.defaultRequestOptions;
    }

    @DoesServiceRequest
    public ServiceStats getServiceStats(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this);
        return (ServiceStats) ExecutionEngine.executeWithRetry(this, null, getServiceStatsImpl(populateAndApplyDefaults, true), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public Iterable<String> listTables(String str) {
        return listTables(str, (TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<String> listTablesSegmented(String str) {
        return listTablesSegmented(str, (Integer) null, (ResultContinuation) null, (TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadServiceProperties(ServiceProperties serviceProperties, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (Utility.isNullOrEmpty(serviceProperties.getDefaultServiceVersion())) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this);
            Utility.assertNotNull("properties", serviceProperties);
            ExecutionEngine.executeWithRetry(this, null, uploadServicePropertiesImpl(serviceProperties, populateAndApplyDefaults, operationContext, true), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(SR.DEFAULT_SERVICE_VERSION_ONLY_SET_FOR_BLOB_SERVICE);
    }

    @DoesServiceRequest
    public Iterable<String> listTables(String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this);
        populateAndApplyDefaults.clearEncryption();
        return generateIteratorForQuery(generateListTablesQuery(str), this.tableNameResolver, populateAndApplyDefaults, operationContext);
    }

    @DoesServiceRequest
    public ResultSegment<String> listTablesSegmented(String str, Integer num, ResultContinuation resultContinuation, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (num != null) {
            Utility.assertGreaterThanOrEqual("maxResults", (long) num.intValue(), 1);
        }
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this);
        populateAndApplyDefaults.clearEncryption();
        return executeQuerySegmentedImpl(generateListTablesQuery(str).take(num), this.tableNameResolver, resultContinuation, populateAndApplyDefaults, operationContext);
    }
}
