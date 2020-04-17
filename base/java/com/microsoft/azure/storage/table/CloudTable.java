package com.microsoft.azure.storage.table;

import com.microsoft.azure.sdk.iot.deps.serializer.QueryRequestParser;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.IPRange;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.SharedAccessPolicyHandler;
import com.microsoft.azure.storage.SharedAccessPolicySerializer;
import com.microsoft.azure.storage.SharedAccessProtocols;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageCredentialsHelper;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import javax.xml.stream.XMLStreamException;

public final class CloudTable {
    public String name;
    public StorageUri storageUri;
    public CloudTableClient tableServiceClient;

    public CloudTable(URI uri) {
        this(new StorageUri(uri, (URI) null));
    }

    private StorageRequest<CloudTableClient, CloudTable, TablePermissions> downloadPermissionsImpl(final TableRequestOptions tableRequestOptions) {
        return new StorageRequest<CloudTableClient, CloudTable, TablePermissions>(getStorageUri(), tableRequestOptions) {
            public StorageExtendedErrorInformation parseErrorDetails() {
                return TableStorageErrorDeserializer.parseErrorDetails(this);
            }

            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, CloudTable cloudTable, OperationContext operationContext) {
                return TableRequest.getAcl(cloudTable.getStorageUri().getUri(getCurrentLocation()), tableRequestOptions, operationContext);
            }

            public TablePermissions postProcessResponse(HttpURLConnection httpURLConnection, CloudTable cloudTable, CloudTableClient cloudTableClient, OperationContext operationContext, TablePermissions tablePermissions) {
                HashMap<String, SharedAccessTablePolicy> accessIdentifiers = SharedAccessPolicyHandler.getAccessIdentifiers(getConnection().getInputStream(), SharedAccessTablePolicy.class);
                for (String next : accessIdentifiers.keySet()) {
                    tablePermissions.getSharedAccessPolicies().put(next, accessIdentifiers.get(next));
                }
                return tablePermissions;
            }

            public TablePermissions preProcessResponse(CloudTable cloudTable, CloudTableClient cloudTableClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                }
                return new TablePermissions();
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
            }
        };
    }

    private String getSharedAccessCanonicalName() {
        return String.format("/%s/%s/%s", new Object[]{SR.TABLE, getServiceClient().getCredentials().getAccountName(), getName().toLowerCase(Locale.ENGLISH)});
    }

    private void parseQueryAndVerify(StorageUri storageUri2, StorageCredentials storageCredentials) {
        Utility.assertNotNull("completeUri", storageUri2);
        if (storageUri2.isAbsolute()) {
            this.storageUri = PathUtility.stripURIQueryAndFragment(storageUri2);
            StorageCredentialsSharedAccessSignature parseQuery = SharedAccessSignatureHelper.parseQuery(storageUri2);
            if (storageCredentials == null || parseQuery == null) {
                try {
                    boolean determinePathStyleFromUri = Utility.determinePathStyleFromUri(this.storageUri.getPrimaryUri());
                    StorageUri serviceClientBaseAddress = PathUtility.getServiceClientBaseAddress(getStorageUri(), determinePathStyleFromUri);
                    if (storageCredentials == null) {
                        storageCredentials = parseQuery;
                    }
                    this.tableServiceClient = new CloudTableClient(serviceClientBaseAddress, storageCredentials);
                    this.name = PathUtility.getTableNameFromUri(this.storageUri.getPrimaryUri(), determinePathStyleFromUri);
                } catch (URISyntaxException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            } else {
                throw new IllegalArgumentException(SR.MULTIPLE_CREDENTIALS_PROVIDED);
            }
        } else {
            throw new IllegalArgumentException(String.format(SR.RELATIVE_ADDRESS_NOT_PERMITTED, new Object[]{storageUri2.toString()}));
        }
    }

    private StorageRequest<CloudTableClient, CloudTable, Void> uploadPermissionsImpl(TablePermissions tablePermissions, TableRequestOptions tableRequestOptions) {
        StringWriter stringWriter = new StringWriter();
        try {
            SharedAccessPolicySerializer.writeSharedAccessIdentifiersToStream(tablePermissions.getSharedAccessPolicies(), stringWriter);
            final byte[] bytes = stringWriter.toString().getBytes("UTF-8");
            final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
            return new StorageRequest<CloudTableClient, CloudTable, Void>(tableRequestOptions, getStorageUri()) {
                public StorageExtendedErrorInformation parseErrorDetails() {
                    return TableStorageErrorDeserializer.parseErrorDetails(this);
                }

                public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, CloudTable cloudTable, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(bytes));
                    setLength(Long.valueOf((long) bytes.length));
                    return TableRequest.setAcl(cloudTable.getStorageUri().getUri(getCurrentLocation()), tableRequestOptions2, operationContext);
                }

                public Void preProcessResponse(CloudTable cloudTable, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() == 204) {
                        return null;
                    }
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, (long) bytes.length, operationContext);
                }
            };
        } catch (IllegalArgumentException e2) {
            throw StorageException.translateClientException(e2);
        } catch (XMLStreamException e3) {
            throw StorageException.translateClientException(e3);
        } catch (UnsupportedEncodingException e4) {
            throw StorageException.translateClientException(e4);
        }
    }

    @DoesServiceRequest
    public void create() {
        create((TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean createIfNotExists() {
        return createIfNotExists((TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void delete() {
        delete((TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean deleteIfExists() {
        return deleteIfExists((TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public TablePermissions downloadPermissions() {
        return downloadPermissions((TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ArrayList<TableResult> execute(TableBatchOperation tableBatchOperation) {
        return execute(tableBatchOperation, (TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public <R> ResultSegment<R> executeSegmented(TableQuery<?> tableQuery, EntityResolver<R> entityResolver, ResultContinuation resultContinuation) {
        return executeSegmented(tableQuery, entityResolver, resultContinuation, (TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean exists() {
        return exists((TableRequestOptions) null, (OperationContext) null);
    }

    public String generateSharedAccessSignature(SharedAccessTablePolicy sharedAccessTablePolicy, String str, String str2, String str3, String str4, String str5) {
        return generateSharedAccessSignature(sharedAccessTablePolicy, str, str2, str3, str4, str5, (IPRange) null, (SharedAccessProtocols) null);
    }

    public String getName() {
        return this.name;
    }

    public CloudTableClient getServiceClient() {
        return this.tableServiceClient;
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    @DoesServiceRequest
    public void uploadPermissions(TablePermissions tablePermissions) {
        uploadPermissions(tablePermissions, (TableRequestOptions) null, (OperationContext) null);
    }

    public CloudTable(StorageUri storageUri2) {
        this(storageUri2, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public void create(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this.tableServiceClient);
        populateAndApplyDefaults.clearEncryption();
        Utility.assertNotNullOrEmpty("tableName", this.name);
        DynamicTableEntity dynamicTableEntity = new DynamicTableEntity();
        dynamicTableEntity.getProperties().put(TableConstants.TABLE_NAME, new EntityProperty(this.name));
        TableOperation.insert(dynamicTableEntity).execute(this.tableServiceClient, TableConstants.TABLES_SERVICE_TABLES_NAME, populateAndApplyDefaults, operationContext);
    }

    @DoesServiceRequest
    public boolean createIfNotExists(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this.tableServiceClient);
        if (exists(true, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            create(populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 409 && StorageErrorCodeStrings.TABLE_ALREADY_EXISTS.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public void delete(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this.tableServiceClient);
        Utility.assertNotNullOrEmpty("tableName", this.name);
        DynamicTableEntity dynamicTableEntity = new DynamicTableEntity();
        dynamicTableEntity.getProperties().put(TableConstants.TABLE_NAME, new EntityProperty(this.name));
        new TableOperation(dynamicTableEntity, TableOperationType.DELETE).execute(this.tableServiceClient, TableConstants.TABLES_SERVICE_TABLES_NAME, populateAndApplyDefaults, operationContext);
    }

    @DoesServiceRequest
    public boolean deleteIfExists(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this.tableServiceClient);
        if (!exists(true, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            delete(populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 404 && StorageErrorCodeStrings.RESOURCE_NOT_FOUND.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public TablePermissions downloadPermissions(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this.tableServiceClient);
        return (TablePermissions) ExecutionEngine.executeWithRetry(this.tableServiceClient, this, downloadPermissionsImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public ArrayList<TableResult> execute(TableBatchOperation tableBatchOperation, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("batch", tableBatchOperation);
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        return tableBatchOperation.execute(getServiceClient(), getName(), TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, getServiceClient()), operationContext);
    }

    @DoesServiceRequest
    public <R> ResultSegment<R> executeSegmented(TableQuery<?> tableQuery, EntityResolver<R> entityResolver, ResultContinuation resultContinuation, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull(SR.QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER, entityResolver);
        tableQuery.setSourceTableName(getName());
        return getServiceClient().executeQuerySegmentedImpl(tableQuery, entityResolver, resultContinuation, tableRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public boolean exists(TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        return exists(false, tableRequestOptions, operationContext);
    }

    public String generateSharedAccessSignature(SharedAccessTablePolicy sharedAccessTablePolicy, String str, String str2, String str3, String str4, String str5, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols) {
        if (StorageCredentialsHelper.canCredentialsSignRequest(this.tableServiceClient.getCredentials())) {
            return SharedAccessSignatureHelper.generateSharedAccessSignatureForTable(sharedAccessTablePolicy, str2, str3, str4, str5, str, iPRange, sharedAccessProtocols, this.name, SharedAccessSignatureHelper.generateSharedAccessSignatureHashForTable(sharedAccessTablePolicy, str, getSharedAccessCanonicalName(), iPRange, sharedAccessProtocols, str2, str3, str4, str5, this.tableServiceClient)).toString();
        }
        throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY);
    }

    @DoesServiceRequest
    public void uploadPermissions(TablePermissions tablePermissions, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this.tableServiceClient);
        ExecutionEngine.executeWithRetry(this.tableServiceClient, this, uploadPermissionsImpl(tablePermissions, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudTable(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri, (URI) null), storageCredentials);
    }

    @DoesServiceRequest
    private boolean exists(boolean z, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, this.tableServiceClient);
        populateAndApplyDefaults.clearEncryption();
        Utility.assertNotNullOrEmpty("tableName", this.name);
        QueryTableOperation queryTableOperation = (QueryTableOperation) TableOperation.retrieve(this.name, (String) null, (Class<? extends TableEntity>) DynamicTableEntity.class);
        queryTableOperation.setPrimaryOnlyRetrieve(z);
        TableResult execute = queryTableOperation.execute(this.tableServiceClient, TableConstants.TABLES_SERVICE_TABLES_NAME, populateAndApplyDefaults, operationContext);
        if (execute.getHttpStatusCode() == 200) {
            return true;
        }
        if (execute.getHttpStatusCode() == 404) {
            return false;
        }
        throw new StorageException(StorageErrorCodeStrings.OUT_OF_RANGE_INPUT, SR.UNEXPECTED_STATUS_CODE_RECEIVED, execute.getHttpStatusCode(), (StorageExtendedErrorInformation) null, (Exception) null);
    }

    public CloudTable(StorageUri storageUri2, StorageCredentials storageCredentials) {
        parseQueryAndVerify(storageUri2, storageCredentials);
    }

    @DoesServiceRequest
    public <T extends TableEntity> ResultSegment<T> executeSegmented(TableQuery<T> tableQuery, ResultContinuation resultContinuation) {
        return executeSegmented(tableQuery, resultContinuation, (TableRequestOptions) null, (OperationContext) null);
    }

    public CloudTable(String str, CloudTableClient cloudTableClient) {
        Utility.assertNotNull("client", cloudTableClient);
        Utility.assertNotNull("tableName", str);
        this.storageUri = PathUtility.appendPathToUri(cloudTableClient.getStorageUri(), str);
        this.name = str;
        this.tableServiceClient = cloudTableClient;
    }

    @DoesServiceRequest
    public <T extends TableEntity> ResultSegment<T> executeSegmented(TableQuery<T> tableQuery, ResultContinuation resultContinuation, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull(QueryRequestParser.QUERY_TAG, tableQuery);
        tableQuery.setSourceTableName(getName());
        return getServiceClient().executeQuerySegmentedImpl(tableQuery, (EntityResolver) null, resultContinuation, tableRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public TableResult execute(TableOperation tableOperation) {
        return execute(tableOperation, (TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public TableResult execute(TableOperation tableOperation, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("operation", tableOperation);
        return tableOperation.execute(getServiceClient(), getName(), tableRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public <R> Iterable<R> execute(TableQuery<?> tableQuery, EntityResolver<R> entityResolver) {
        return execute(tableQuery, entityResolver, (TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public <R> Iterable<R> execute(TableQuery<?> tableQuery, EntityResolver<R> entityResolver, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull(QueryRequestParser.QUERY_TAG, tableQuery);
        Utility.assertNotNull(SR.QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER, entityResolver);
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, getServiceClient());
        tableQuery.setSourceTableName(getName());
        return getServiceClient().generateIteratorForQuery(tableQuery, entityResolver, populateAndApplyDefaults, operationContext);
    }

    @DoesServiceRequest
    public <T extends TableEntity> Iterable<T> execute(TableQuery<T> tableQuery) {
        return execute(tableQuery, (TableRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public <T extends TableEntity> Iterable<T> execute(TableQuery<T> tableQuery, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull(QueryRequestParser.QUERY_TAG, tableQuery);
        Utility.assertNotNull(SR.QUERY_REQUIRES_VALID_CLASSTYPE_OR_RESOLVER, tableQuery.getClazzType());
        TableRequestOptions populateAndApplyDefaults = TableRequestOptions.populateAndApplyDefaults(tableRequestOptions, getServiceClient());
        tableQuery.setSourceTableName(getName());
        return getServiceClient().generateIteratorForQuery(tableQuery, (EntityResolver) null, populateAndApplyDefaults, operationContext);
    }
}
