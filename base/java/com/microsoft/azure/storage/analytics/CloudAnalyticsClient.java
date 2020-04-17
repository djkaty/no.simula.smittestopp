package com.microsoft.azure.storage.analytics;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.LoggingOperations;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageLocation;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.blob.BlobListingDetails;
import com.microsoft.azure.storage.blob.BlobRequestOptions;
import com.microsoft.azure.storage.blob.CloudBlobClient;
import com.microsoft.azure.storage.blob.CloudBlobDirectory;
import com.microsoft.azure.storage.blob.ListBlobItem;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.table.CloudTable;
import com.microsoft.azure.storage.table.CloudTableClient;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;

public class CloudAnalyticsClient {
    public String LogContainer = Constants.AnalyticsConstants.LOGS_CONTAINER;
    public final CloudBlobClient blobClient;
    public final CloudTableClient tableClient;

    /* renamed from: com.microsoft.azure.storage.analytics.CloudAnalyticsClient$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$analytics$StorageService;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x001d */
        static {
            /*
                com.microsoft.azure.storage.analytics.StorageService[] r0 = com.microsoft.azure.storage.analytics.StorageService.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$analytics$StorageService = r0
                r1 = 1
                com.microsoft.azure.storage.analytics.StorageService r2 = com.microsoft.azure.storage.analytics.StorageService.BLOB     // Catch:{ NoSuchFieldError -> 0x000f }
                r2 = 0
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r2 = $SwitchMap$com$microsoft$azure$storage$analytics$StorageService     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.analytics.StorageService r3 = com.microsoft.azure.storage.analytics.StorageService.FILE     // Catch:{ NoSuchFieldError -> 0x0016 }
                r2[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                r1 = 3
                int[] r2 = $SwitchMap$com$microsoft$azure$storage$analytics$StorageService     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.storage.analytics.StorageService r3 = com.microsoft.azure.storage.analytics.StorageService.QUEUE     // Catch:{ NoSuchFieldError -> 0x001d }
                r2[r0] = r1     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$microsoft$azure$storage$analytics$StorageService     // Catch:{ NoSuchFieldError -> 0x0024 }
                com.microsoft.azure.storage.analytics.StorageService r2 = com.microsoft.azure.storage.analytics.StorageService.TABLE     // Catch:{ NoSuchFieldError -> 0x0024 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0024 }
            L_0x0024:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.analytics.CloudAnalyticsClient.AnonymousClass1.<clinit>():void");
        }
    }

    public CloudAnalyticsClient(StorageUri storageUri, StorageUri storageUri2, StorageCredentials storageCredentials) {
        Utility.assertNotNull("blobStorageUri", storageUri);
        Utility.assertNotNull("tableStorageUri", storageUri2);
        this.blobClient = new CloudBlobClient(storageUri, storageCredentials);
        this.tableClient = new CloudTableClient(storageUri2, storageCredentials);
    }

    public static Iterable<LogRecord> parseLogBlob(ListBlobItem listBlobItem) {
        Utility.assertNotNull("logBlob", listBlobItem);
        ArrayList arrayList = new ArrayList();
        arrayList.add(listBlobItem);
        return new LogRecordIterable(arrayList.iterator());
    }

    public static Iterable<LogRecord> parseLogBlobs(Iterable<ListBlobItem> iterable) {
        Utility.assertNotNull("logBlobs", iterable);
        return new LogRecordIterable(iterable.iterator());
    }

    public CloudTable getCapacityTable() {
        return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_CAPACITY_BLOB);
    }

    public CloudTable getHourMetricsTable(StorageService storageService) {
        return getHourMetricsTable(storageService, (StorageLocation) null);
    }

    public CloudBlobDirectory getLogDirectory(StorageService storageService) {
        Utility.assertNotNull(BaseRequest.SERVICE, storageService);
        return this.blobClient.getContainerReference(this.LogContainer).getDirectoryReference(storageService.toString().toLowerCase(Locale.US));
    }

    public CloudTable getMinuteMetricsTable(StorageService storageService) {
        return getMinuteMetricsTable(storageService, (StorageLocation) null);
    }

    public Iterable<ListBlobItem> listLogBlobs(StorageService storageService) {
        return listLogBlobs(storageService, (Date) null, (Date) null, (EnumSet<LoggingOperations>) null, (BlobListingDetails) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public Iterable<LogRecord> listLogRecords(StorageService storageService) {
        return listLogRecords(storageService, (Date) null, (Date) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudTable getHourMetricsTable(StorageService storageService, StorageLocation storageLocation) {
        Utility.assertNotNull(BaseRequest.SERVICE, storageService);
        if (storageLocation == null) {
            storageLocation = StorageLocation.PRIMARY;
        }
        int ordinal = storageService.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        throw new IllegalArgumentException(SR.INVALID_STORAGE_SERVICE);
                    } else if (storageLocation == StorageLocation.PRIMARY) {
                        return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_PRIMARY_TRANSACTIONS_TABLE);
                    } else {
                        return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_SECONDARY_TRANSACTIONS_TABLE);
                    }
                } else if (storageLocation == StorageLocation.PRIMARY) {
                    return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_PRIMARY_TRANSACTIONS_QUEUE);
                } else {
                    return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_SECONDARY_TRANSACTIONS_QUEUE);
                }
            } else if (storageLocation == StorageLocation.PRIMARY) {
                return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_PRIMARY_TRANSACTIONS_FILE);
            } else {
                return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_SECONDARY_TRANSACTIONS_FILE);
            }
        } else if (storageLocation == StorageLocation.PRIMARY) {
            return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_PRIMARY_TRANSACTIONS_BLOB);
        } else {
            return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_HOUR_SECONDARY_TRANSACTIONS_BLOB);
        }
    }

    public CloudTable getMinuteMetricsTable(StorageService storageService, StorageLocation storageLocation) {
        Utility.assertNotNull(BaseRequest.SERVICE, storageService);
        if (storageLocation == null) {
            storageLocation = StorageLocation.PRIMARY;
        }
        int ordinal = storageService.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        throw new IllegalArgumentException(SR.INVALID_STORAGE_SERVICE);
                    } else if (storageLocation == StorageLocation.PRIMARY) {
                        return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_PRIMARY_TRANSACTIONS_TABLE);
                    } else {
                        return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_SECONDARY_TRANSACTIONS_TABLE);
                    }
                } else if (storageLocation == StorageLocation.PRIMARY) {
                    return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_PRIMARY_TRANSACTIONS_QUEUE);
                } else {
                    return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_SECONDARY_TRANSACTIONS_QUEUE);
                }
            } else if (storageLocation == StorageLocation.PRIMARY) {
                return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_PRIMARY_TRANSACTIONS_FILE);
            } else {
                return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_SECONDARY_TRANSACTIONS_FILE);
            }
        } else if (storageLocation == StorageLocation.PRIMARY) {
            return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_PRIMARY_TRANSACTIONS_BLOB);
        } else {
            return this.tableClient.getTableReference(Constants.AnalyticsConstants.METRICS_MINUTE_SECONDARY_TRANSACTIONS_BLOB);
        }
    }

    public Iterable<ListBlobItem> listLogBlobs(StorageService storageService, Date date, Date date2, EnumSet<LoggingOperations> enumSet, BlobListingDetails blobListingDetails, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        EnumSet<E> enumSet2;
        Utility.assertNotNull(BaseRequest.SERVICE, storageService);
        if (enumSet == null) {
            enumSet = EnumSet.allOf(LoggingOperations.class);
        }
        EnumSet<LoggingOperations> enumSet3 = enumSet;
        if (blobListingDetails != null && !blobListingDetails.equals(BlobListingDetails.METADATA)) {
            throw new IllegalArgumentException(SR.INVALID_LISTING_DETAILS);
        } else if (!enumSet3.equals(EnumSet.noneOf(LoggingOperations.class))) {
            if (blobListingDetails == null || (!blobListingDetails.equals(BlobListingDetails.METADATA) && enumSet3.equals(EnumSet.allOf(LoggingOperations.class)))) {
                enumSet2 = EnumSet.noneOf(BlobListingDetails.class);
            } else {
                enumSet2 = EnumSet.of(BlobListingDetails.METADATA);
            }
            return new LogBlobIterable(getLogDirectory(storageService), date, date2, enumSet3, enumSet2, blobRequestOptions, operationContext);
        } else {
            throw new IllegalArgumentException(SR.INVALID_LOGGING_LEVEL);
        }
    }

    public Iterable<LogRecord> listLogRecords(StorageService storageService, Date date, Date date2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull(BaseRequest.SERVICE, storageService);
        return new LogRecordIterable(new LogBlobIterable(getLogDirectory(storageService), date, date2, EnumSet.allOf(LoggingOperations.class), EnumSet.noneOf(BlobListingDetails.class), blobRequestOptions, operationContext).iterator());
    }
}
