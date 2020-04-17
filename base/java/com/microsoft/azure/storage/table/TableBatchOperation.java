package com.microsoft.azure.storage.table;

import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;

public class TableBatchOperation extends ArrayList<TableOperation> {
    public static final long serialVersionUID = -1192644463287355790L;
    public boolean containsWrites = false;
    public boolean hasQuery = false;
    public String partitionKey = null;

    private void checkResetEntityLocks() {
        if (size() == 0) {
            this.partitionKey = null;
            this.hasQuery = false;
            this.containsWrites = false;
        }
    }

    private void checkSingleQueryPerBatch(TableOperation tableOperation, int i2) {
        if (!this.hasQuery) {
            boolean z = true;
            if (tableOperation.getOperationType() == TableOperationType.RETRIEVE) {
                if (i2 <= 0) {
                    this.hasQuery = true;
                } else {
                    throw new IllegalArgumentException(SR.RETRIEVE_MUST_BE_ONLY_OPERATION_IN_BATCH);
                }
            }
            if (tableOperation.getOperationType() == TableOperationType.RETRIEVE) {
                z = false;
            }
            this.containsWrites = z;
            return;
        }
        throw new IllegalArgumentException(SR.RETRIEVE_MUST_BE_ONLY_OPERATION_IN_BATCH);
    }

    private StorageRequest<CloudTableClient, TableBatchOperation, ArrayList<TableResult>> executeImpl(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        String format = String.format("batch_%s", new Object[]{UUID.randomUUID().toString()});
        String format2 = String.format("changeset_%s", new Object[]{UUID.randomUUID().toString()});
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        CloudTableClient cloudTableClient2 = cloudTableClient;
        try {
            MimeHelper.writeBatchToStream(byteArrayOutputStream, tableRequestOptions, str, cloudTableClient.getTransformedEndPoint(operationContext).getPrimaryUri(), this, format, format2, operationContext);
            final byte[] byteArray = byteArrayOutputStream.toByteArray();
            final TableRequestOptions tableRequestOptions2 = tableRequestOptions;
            final String str2 = format;
            final OperationContext operationContext2 = operationContext;
            return new StorageRequest<CloudTableClient, TableBatchOperation, ArrayList<TableResult>>(tableRequestOptions, cloudTableClient.getStorageUri()) {
                public StorageExtendedErrorInformation parseErrorDetails() {
                    return TableStorageErrorDeserializer.parseErrorDetails(this);
                }

                public void setRequestLocationMode() {
                    setRequestLocationMode(TableBatchOperation.this.containsWrites ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
                }

                public HttpURLConnection buildRequest(CloudTableClient cloudTableClient, TableBatchOperation tableBatchOperation, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(byteArray));
                    setLength(Long.valueOf((long) byteArray.length));
                    return TableRequest.batch(cloudTableClient.getTransformedEndPoint(operationContext).getUri(getCurrentLocation()), tableRequestOptions2, (UriQueryBuilder) null, operationContext, str2);
                }

                /* JADX WARNING: Code restructure failed: missing block: B:12:0x0057, code lost:
                    if (r7.httpStatusCode != 201) goto L_0x0085;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:16:0x0062, code lost:
                    if (r7.httpStatusCode != 204) goto L_0x0085;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:24:0x007e, code lost:
                    if (r8 != 200) goto L_0x0085;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:26:0x0083, code lost:
                    if (r7.httpStatusCode != 204) goto L_0x0085;
                 */
                /* JADX WARNING: Removed duplicated region for block: B:30:0x008a  */
                /* JADX WARNING: Removed duplicated region for block: B:43:0x00ca A[SYNTHETIC] */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public java.util.ArrayList<com.microsoft.azure.storage.table.TableResult> postProcessResponse(java.net.HttpURLConnection r15, com.microsoft.azure.storage.table.TableBatchOperation r16, com.microsoft.azure.storage.table.CloudTableClient r17, com.microsoft.azure.storage.OperationContext r18, java.util.ArrayList<com.microsoft.azure.storage.table.TableResult> r19) {
                    /*
                        r14 = this;
                        r0 = r14
                        java.io.InputStream r1 = r15.getInputStream()
                        java.lang.String r2 = "Content-Type"
                        r3 = r15
                        java.lang.String r2 = r15.getHeaderField(r2)
                        java.lang.String r3 = "multipart/mixed; boundary="
                        java.lang.String[] r2 = r2.split(r3)
                        if (r2 == 0) goto L_0x00e3
                        int r3 = r2.length
                        r4 = 2
                        if (r3 != r4) goto L_0x00e3
                        r3 = 1
                        r2 = r2[r3]
                        com.microsoft.azure.storage.OperationContext r4 = r11
                        com.microsoft.azure.storage.table.TableRequestOptions r5 = r9
                        com.microsoft.azure.storage.table.TablePayloadFormat r5 = r5.getTablePayloadFormat()
                        java.util.ArrayList r1 = com.microsoft.azure.storage.table.MimeHelper.readBatchResponseStream(r1, r2, r4, r5)
                        java.util.ArrayList r2 = new java.util.ArrayList
                        r2.<init>()
                        r4 = 0
                        r5 = 0
                    L_0x002e:
                        int r6 = r16.size()
                        if (r5 >= r6) goto L_0x00e2
                        r6 = r16
                        java.lang.Object r7 = r6.get(r5)
                        r11 = r7
                        com.microsoft.azure.storage.table.TableOperation r11 = (com.microsoft.azure.storage.table.TableOperation) r11
                        java.lang.Object r7 = r1.get(r5)
                        com.microsoft.azure.storage.table.MimePart r7 = (com.microsoft.azure.storage.table.MimePart) r7
                        com.microsoft.azure.storage.table.TableOperationType r8 = r11.getOperationType()
                        com.microsoft.azure.storage.table.TableOperationType r9 = com.microsoft.azure.storage.table.TableOperationType.INSERT
                        r10 = 204(0xcc, float:2.86E-43)
                        if (r8 != r9) goto L_0x0065
                        boolean r8 = r11.getEchoContent()
                        if (r8 == 0) goto L_0x005a
                        int r8 = r7.httpStatusCode
                        r9 = 201(0xc9, float:2.82E-43)
                        if (r8 == r9) goto L_0x005a
                        goto L_0x0085
                    L_0x005a:
                        boolean r8 = r11.getEchoContent()
                        if (r8 != 0) goto L_0x0087
                        int r8 = r7.httpStatusCode
                        if (r8 == r10) goto L_0x0087
                        goto L_0x0085
                    L_0x0065:
                        com.microsoft.azure.storage.table.TableOperationType r8 = r11.getOperationType()
                        com.microsoft.azure.storage.table.TableOperationType r9 = com.microsoft.azure.storage.table.TableOperationType.RETRIEVE
                        if (r8 != r9) goto L_0x0081
                        int r8 = r7.httpStatusCode
                        r9 = 404(0x194, float:5.66E-43)
                        if (r8 != r9) goto L_0x007c
                        com.microsoft.azure.storage.table.TableResult r1 = new com.microsoft.azure.storage.table.TableResult
                        r1.<init>(r8)
                        r2.add(r1)
                        return r2
                    L_0x007c:
                        r9 = 200(0xc8, float:2.8E-43)
                        if (r8 == r9) goto L_0x0087
                        goto L_0x0085
                    L_0x0081:
                        int r8 = r7.httpStatusCode
                        if (r8 == r10) goto L_0x0087
                    L_0x0085:
                        r8 = 1
                        goto L_0x0088
                    L_0x0087:
                        r8 = 0
                    L_0x0088:
                        if (r8 != 0) goto L_0x00ca
                        r8 = 0
                        com.microsoft.azure.storage.table.TableOperationType r9 = r11.getOperationType()
                        com.microsoft.azure.storage.table.TableOperationType r10 = com.microsoft.azure.storage.table.TableOperationType.INSERT
                        if (r9 != r10) goto L_0x0099
                        boolean r9 = r11.getEchoContent()
                        if (r9 != 0) goto L_0x00a1
                    L_0x0099:
                        com.microsoft.azure.storage.table.TableOperationType r9 = r11.getOperationType()
                        com.microsoft.azure.storage.table.TableOperationType r10 = com.microsoft.azure.storage.table.TableOperationType.RETRIEVE
                        if (r9 != r10) goto L_0x00ac
                    L_0x00a1:
                        java.io.ByteArrayInputStream r8 = new java.io.ByteArrayInputStream
                        java.lang.String r9 = r7.payload
                        byte[] r9 = r9.getBytes()
                        r8.<init>(r9)
                    L_0x00ac:
                        r9 = r8
                        int r10 = r7.httpStatusCode
                        java.util.HashMap<java.lang.String, java.lang.String> r7 = r7.headers
                        java.lang.String r8 = "ETag"
                        java.lang.Object r7 = r7.get(r8)
                        java.lang.String r7 = (java.lang.String) r7
                        com.microsoft.azure.storage.OperationContext r12 = r11
                        com.microsoft.azure.storage.table.TableRequestOptions r13 = r9
                        r8 = r11
                        r11 = r7
                        com.microsoft.azure.storage.table.TableResult r7 = r8.parseResponse(r9, r10, r11, r12, r13)
                        r2.add(r7)
                        int r5 = r5 + 1
                        goto L_0x002e
                    L_0x00ca:
                        com.microsoft.azure.storage.table.TableServiceException r1 = new com.microsoft.azure.storage.table.TableServiceException
                        int r9 = r7.httpStatusCode
                        java.lang.String r10 = r7.httpStatusMessage
                        java.io.StringReader r12 = new java.io.StringReader
                        java.lang.String r2 = r7.payload
                        r12.<init>(r2)
                        com.microsoft.azure.storage.table.TableRequestOptions r2 = r9
                        com.microsoft.azure.storage.table.TablePayloadFormat r13 = r2.getTablePayloadFormat()
                        r8 = r1
                        r8.<init>((int) r9, (java.lang.String) r10, (com.microsoft.azure.storage.table.TableOperation) r11, (java.io.Reader) r12, (com.microsoft.azure.storage.table.TablePayloadFormat) r13)
                        throw r1
                    L_0x00e2:
                        return r2
                    L_0x00e3:
                        com.microsoft.azure.storage.StorageException r1 = new com.microsoft.azure.storage.StorageException
                        r5 = 306(0x132, float:4.29E-43)
                        r6 = 0
                        r7 = 0
                        java.lang.String r3 = "OutOfRangeInput"
                        java.lang.String r4 = "An incorrect Content-Type was returned from the server."
                        r2 = r1
                        r2.<init>(r3, r4, r5, r6, r7)
                        throw r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.table.TableBatchOperation.AnonymousClass1.postProcessResponse(java.net.HttpURLConnection, com.microsoft.azure.storage.table.TableBatchOperation, com.microsoft.azure.storage.table.CloudTableClient, com.microsoft.azure.storage.OperationContext, java.util.ArrayList):java.util.ArrayList");
                }

                public ArrayList<TableResult> preProcessResponse(TableBatchOperation tableBatchOperation, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() == 202) {
                        return null;
                    }
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudTableClient cloudTableClient, OperationContext operationContext) {
                    StorageRequest.signTableRequest(httpURLConnection, cloudTableClient, -1, operationContext);
                }
            };
        } catch (IOException e2) {
            throw StorageException.translateClientException(e2);
        } catch (URISyntaxException e3) {
            throw StorageException.translateClientException(e3);
        }
    }

    private void lockToPartitionKey(String str) {
        if (this.partitionKey == null) {
            this.partitionKey = str;
        } else if (str.length() != str.length() || !this.partitionKey.equals(str)) {
            throw new IllegalArgumentException(SR.OPS_IN_BATCH_MUST_HAVE_SAME_PARTITION_KEY);
        }
    }

    public boolean addAll(int i2, Collection<? extends TableOperation> collection) {
        int size = size();
        for (TableOperation tableOperation : collection) {
            Utility.assertNotNull("operation", tableOperation);
            checkSingleQueryPerBatch(tableOperation, size);
            if (tableOperation.getEntity() == null) {
                lockToPartitionKey(((QueryTableOperation) tableOperation).getPartitionKey());
            } else {
                lockToPartitionKey(tableOperation.getEntity().getPartitionKey());
            }
            size++;
        }
        return super.addAll(i2, collection);
    }

    public void clear() {
        super.clear();
        checkResetEntityLocks();
    }

    public void delete(TableEntity tableEntity) {
        lockToPartitionKey(tableEntity.getPartitionKey());
        add(TableOperation.delete(tableEntity));
    }

    public ArrayList<TableResult> execute(CloudTableClient cloudTableClient, String str, TableRequestOptions tableRequestOptions, OperationContext operationContext) {
        Utility.assertNotNullOrEmpty(TableConstants.TABLE_NAME, str);
        if (size() != 0) {
            return (ArrayList) ExecutionEngine.executeWithRetry(cloudTableClient, this, executeImpl(cloudTableClient, str, tableRequestOptions, operationContext), tableRequestOptions.getRetryPolicyFactory(), operationContext);
        }
        throw new IllegalArgumentException(SR.EMPTY_BATCH_NOT_ALLOWED);
    }

    public void insert(TableEntity tableEntity) {
        insert(tableEntity, false);
    }

    public void insertOrMerge(TableEntity tableEntity) {
        lockToPartitionKey(tableEntity.getPartitionKey());
        add(TableOperation.insertOrMerge(tableEntity));
    }

    public void insertOrReplace(TableEntity tableEntity) {
        lockToPartitionKey(tableEntity.getPartitionKey());
        add(TableOperation.insertOrReplace(tableEntity));
    }

    public void merge(TableEntity tableEntity) {
        lockToPartitionKey(tableEntity.getPartitionKey());
        add(TableOperation.merge(tableEntity));
    }

    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = super.removeAll(collection);
        checkResetEntityLocks();
        return removeAll;
    }

    public void removeRange(int i2, int i3) {
        super.removeRange(i2, i3);
        checkResetEntityLocks();
    }

    public void replace(TableEntity tableEntity) {
        lockToPartitionKey(tableEntity.getPartitionKey());
        add(TableOperation.replace(tableEntity));
    }

    public void retrieve(String str, String str2, Class<? extends TableEntity> cls) {
        lockToPartitionKey(str);
        add(TableOperation.retrieve(str, str2, cls));
    }

    public void insert(TableEntity tableEntity, boolean z) {
        lockToPartitionKey(tableEntity.getPartitionKey());
        add(TableOperation.insert(tableEntity, z));
    }

    public TableOperation remove(int i2) {
        TableOperation tableOperation = (TableOperation) super.remove(i2);
        checkResetEntityLocks();
        return tableOperation;
    }

    public void add(int i2, TableOperation tableOperation) {
        Utility.assertNotNull("element", tableOperation);
        checkSingleQueryPerBatch(tableOperation, size());
        if (tableOperation.getOperationType() == TableOperationType.RETRIEVE) {
            lockToPartitionKey(((QueryTableOperation) tableOperation).getPartitionKey());
        } else {
            lockToPartitionKey(tableOperation.getEntity().getPartitionKey());
        }
        super.add(i2, tableOperation);
    }

    public void retrieve(String str, String str2, EntityResolver<?> entityResolver) {
        lockToPartitionKey(str);
        add(TableOperation.retrieve(str, str2, entityResolver));
    }

    public boolean remove(Object obj) {
        boolean remove = super.remove(obj);
        checkResetEntityLocks();
        return remove;
    }

    public boolean add(TableOperation tableOperation) {
        Utility.assertNotNull("element", tableOperation);
        checkSingleQueryPerBatch(tableOperation, size());
        if (tableOperation.getOperationType() == TableOperationType.RETRIEVE) {
            lockToPartitionKey(((QueryTableOperation) tableOperation).getPartitionKey());
        } else {
            lockToPartitionKey(tableOperation.getEntity().getPartitionKey());
        }
        return super.add(tableOperation);
    }

    public boolean addAll(Collection<? extends TableOperation> collection) {
        int size = size();
        for (TableOperation tableOperation : collection) {
            Utility.assertNotNull("operation", tableOperation);
            checkSingleQueryPerBatch(tableOperation, size);
            if (tableOperation.getEntity() == null) {
                lockToPartitionKey(((QueryTableOperation) tableOperation).getPartitionKey());
            } else {
                lockToPartitionKey(tableOperation.getEntity().getPartitionKey());
            }
            size++;
        }
        return super.addAll(collection);
    }
}
