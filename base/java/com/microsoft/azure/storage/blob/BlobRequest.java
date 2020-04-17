package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.ListingContext;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.identity.common.internal.eststelemetry.Schema;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.HashMap;

public final class BlobRequest {
    public static final String APPEND_BLOCK_QUERY_ELEMENT_NAME = "appendblock";
    public static final String BLOCK_ID_QUERY_ELEMENT_NAME = "blockid";
    public static final String BLOCK_LIST_QUERY_ELEMENT_NAME = "blocklist";
    public static final String BLOCK_LIST_TYPE_QUERY_ELEMENT_NAME = "blocklisttype";
    public static final String BLOCK_QUERY_ELEMENT_NAME = "block";
    public static final String COPY_QUERY_ELEMENT_NAME = "copy";
    public static final String DELETED_QUERY_ELEMENT_NAME = "deleted";
    public static final String PAGE_LIST_QUERY_ELEMENT_NAME = "pagelist";
    public static final String PAGE_QUERY_ELEMENT_NAME = "page";
    public static final String SNAPSHOTS_QUERY_ELEMENT_NAME = "snapshots";
    public static final String TIER_QUERY_ELEMENT_NAME = "tier";
    public static final String UNCOMMITTED_BLOBS_QUERY_ELEMENT_NAME = "uncommittedblobs";

    /* renamed from: com.microsoft.azure.storage.blob.BlobRequest$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x0015 */
        static {
            /*
                com.microsoft.azure.storage.blob.DeleteSnapshotsOption[] r0 = com.microsoft.azure.storage.blob.DeleteSnapshotsOption.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption = r0
                r1 = 1
                r2 = 2
                com.microsoft.azure.storage.blob.DeleteSnapshotsOption r3 = com.microsoft.azure.storage.blob.DeleteSnapshotsOption.NONE     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                int[] r0 = $SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption     // Catch:{ NoSuchFieldError -> 0x0015 }
                com.microsoft.azure.storage.blob.DeleteSnapshotsOption r3 = com.microsoft.azure.storage.blob.DeleteSnapshotsOption.INCLUDE_SNAPSHOTS     // Catch:{ NoSuchFieldError -> 0x0015 }
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0015 }
            L_0x0015:
                int[] r0 = $SwitchMap$com$microsoft$azure$storage$blob$DeleteSnapshotsOption     // Catch:{ NoSuchFieldError -> 0x001d }
                com.microsoft.azure.storage.blob.DeleteSnapshotsOption r1 = com.microsoft.azure.storage.blob.DeleteSnapshotsOption.DELETE_SNAPSHOTS_ONLY     // Catch:{ NoSuchFieldError -> 0x001d }
                r1 = 0
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.blob.BlobRequest.AnonymousClass1.<clinit>():void");
        }
    }

    public static HttpURLConnection abortCopy(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "copy");
        uriQueryBuilder.add(Constants.QueryConstants.COPY_ID, str);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, blobRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setRequestProperty(Constants.HeaderConstants.COPY_ACTION_HEADER, Constants.HeaderConstants.COPY_ACTION_ABORT);
        if (accessCondition != null) {
            accessCondition.applyLeaseConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static void addMetadata(HttpURLConnection httpURLConnection, HashMap<String, String> hashMap, OperationContext operationContext) {
        BaseRequest.addMetadata(httpURLConnection, hashMap, operationContext);
    }

    public static void addProperties(HttpURLConnection httpURLConnection, BlobProperties blobProperties) {
        BaseRequest.addOptionalHeader(httpURLConnection, Constants.HeaderConstants.CACHE_CONTROL_HEADER, blobProperties.getCacheControl());
        BaseRequest.addOptionalHeader(httpURLConnection, BlobConstants.CONTENT_DISPOSITION_HEADER, blobProperties.getContentDisposition());
        BaseRequest.addOptionalHeader(httpURLConnection, BlobConstants.CONTENT_ENCODING_HEADER, blobProperties.getContentEncoding());
        BaseRequest.addOptionalHeader(httpURLConnection, BlobConstants.CONTENT_LANGUAGE_HEADER, blobProperties.getContentLanguage());
        BaseRequest.addOptionalHeader(httpURLConnection, BlobConstants.BLOB_CONTENT_MD5_HEADER, blobProperties.getContentMD5());
        BaseRequest.addOptionalHeader(httpURLConnection, BlobConstants.CONTENT_TYPE_HEADER, blobProperties.getContentType());
    }

    public static void addRange(HttpURLConnection httpURLConnection, Long l2, Long l3) {
        addRangeImpl(Constants.HeaderConstants.STORAGE_RANGE_HEADER, httpURLConnection, l2, l3);
    }

    public static void addRangeImpl(String str, HttpURLConnection httpURLConnection, Long l2, Long l3) {
        if (l3 != null) {
            Utility.assertNotNull("offset", l2);
            Utility.assertInBounds("count", l3.longValue(), 1, Long.MAX_VALUE);
        }
        if (l2 != null) {
            long longValue = l2.longValue();
            if (l3 != null) {
                long longValue2 = l2.longValue();
                httpURLConnection.setRequestProperty(str, String.format(Utility.LOCALE_US, Constants.HeaderConstants.RANGE_HEADER_FORMAT, new Object[]{Long.valueOf(longValue), Long.valueOf((l3.longValue() + longValue2) - 1)}));
                return;
            }
            httpURLConnection.setRequestProperty(str, String.format(Utility.LOCALE_US, Constants.HeaderConstants.BEGIN_RANGE_HEADER_FORMAT, new Object[]{Long.valueOf(longValue)}));
        }
    }

    public static void addSnapshot(UriQueryBuilder uriQueryBuilder, String str) {
        if (str != null) {
            uriQueryBuilder.add("snapshot", str);
        }
    }

    public static void addSourceRange(HttpURLConnection httpURLConnection, Long l2, Long l3) {
        addRangeImpl(Constants.HeaderConstants.STORAGE_SOURCE_RANGE_HEADER, httpURLConnection, l2, l3);
    }

    public static HttpURLConnection appendBlock(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, APPEND_BLOCK_QUERY_ELEMENT_NAME);
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
            accessCondition.applyAppendConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection copyFrom(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, AccessCondition accessCondition2, String str, String str2, boolean z, PremiumPageBlobTier premiumPageBlobTier) {
        return copyFrom(uri, blobRequestOptions, operationContext, accessCondition, accessCondition2, str, str2, z, false, (String) null, premiumPageBlobTier);
    }

    public static HttpURLConnection createContainer(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, BlobContainerPublicAccessType blobContainerPublicAccessType) {
        if (blobContainerPublicAccessType != BlobContainerPublicAccessType.UNKNOWN) {
            HttpURLConnection create = BaseRequest.create(uri, blobRequestOptions, getContainerUriQueryBuilder(), operationContext);
            if (!(blobContainerPublicAccessType == null || blobContainerPublicAccessType == BlobContainerPublicAccessType.OFF)) {
                create.setRequestProperty(BlobConstants.BLOB_PUBLIC_ACCESS_HEADER, blobContainerPublicAccessType.toString().toLowerCase());
            }
            return create;
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"accessType", blobContainerPublicAccessType}));
    }

    public static HttpURLConnection createURLConnection(URI uri, UriQueryBuilder uriQueryBuilder, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return BaseRequest.createURLConnection(uri, blobRequestOptions, uriQueryBuilder, operationContext);
    }

    public static HttpURLConnection deleteBlob(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str, DeleteSnapshotsOption deleteSnapshotsOption) {
        if (str == null || deleteSnapshotsOption == DeleteSnapshotsOption.NONE) {
            UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
            addSnapshot(uriQueryBuilder, str);
            HttpURLConnection delete = BaseRequest.delete(uri, blobRequestOptions, uriQueryBuilder, operationContext);
            if (accessCondition != null) {
                accessCondition.applyConditionToRequest(delete);
            }
            int ordinal = deleteSnapshotsOption.ordinal();
            if (ordinal == 0) {
                delete.setRequestProperty(Constants.HeaderConstants.DELETE_SNAPSHOT_HEADER, BlobConstants.SNAPSHOTS_ONLY_VALUE);
            } else if (ordinal == 1) {
                delete.setRequestProperty(Constants.HeaderConstants.DELETE_SNAPSHOT_HEADER, "include");
            }
            return delete;
        }
        throw new IllegalArgumentException(String.format(SR.DELETE_SNAPSHOT_NOT_VALID_ERROR, new Object[]{"deleteSnapshotsOption", "snapshot"}));
    }

    public static HttpURLConnection deleteContainer(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        HttpURLConnection delete = BaseRequest.delete(uri, blobRequestOptions, getContainerUriQueryBuilder(), operationContext);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(delete);
        }
        return delete;
    }

    public static HttpURLConnection getAcl(URI uri, BlobRequestOptions blobRequestOptions, AccessCondition accessCondition, OperationContext operationContext) {
        UriQueryBuilder containerUriQueryBuilder = getContainerUriQueryBuilder();
        containerUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
        HttpURLConnection createURLConnection = createURLConnection(uri, containerUriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null) {
            accessCondition.applyLeaseConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection getBlob(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str, Long l2, Long l3, boolean z) {
        if (l2 != null && z) {
            Utility.assertNotNull("count", l3);
            Utility.assertInBounds("count", l3.longValue(), 1, (long) Constants.MAX_RANGE_CONTENT_MD5);
        }
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        addSnapshot(uriQueryBuilder, str);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, blobRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        addRange(createURLConnection, l2, l3);
        if (l2 != null && z) {
            createURLConnection.setRequestProperty(Constants.HeaderConstants.RANGE_GET_CONTENT_MD5, "true");
        }
        return createURLConnection;
    }

    public static HttpURLConnection getBlobProperties(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        addSnapshot(uriQueryBuilder, str);
        return getProperties(uri, blobRequestOptions, operationContext, accessCondition, uriQueryBuilder);
    }

    public static HttpURLConnection getBlockList(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str, BlockListingFilter blockListingFilter) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, BLOCK_LIST_QUERY_ELEMENT_NAME);
        uriQueryBuilder.add(BLOCK_LIST_TYPE_QUERY_ELEMENT_NAME, blockListingFilter.toString());
        addSnapshot(uriQueryBuilder, str);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, blobRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection getContainerProperties(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        return getProperties(uri, blobRequestOptions, operationContext, accessCondition, getContainerUriQueryBuilder());
    }

    public static UriQueryBuilder getContainerUriQueryBuilder() {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        try {
            uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, SR.CONTAINER);
            return uriQueryBuilder;
        } catch (IllegalArgumentException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public static HttpURLConnection getPageRanges(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str, Long l2, Long l3) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, PAGE_LIST_QUERY_ELEMENT_NAME);
        addSnapshot(uriQueryBuilder, str);
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        addRange(createURLConnection, l2, l3);
        return createURLConnection;
    }

    public static HttpURLConnection getPageRangesDiff(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str, String str2, Long l2, Long l3) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, PAGE_LIST_QUERY_ELEMENT_NAME);
        uriQueryBuilder.add(BlobConstants.PREV_SNAPSHOT, str2);
        addSnapshot(uriQueryBuilder, str);
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        addRange(createURLConnection, l2, l3);
        return createURLConnection;
    }

    public static HttpURLConnection getProperties(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, UriQueryBuilder uriQueryBuilder) {
        HttpURLConnection properties = BaseRequest.getProperties(uri, blobRequestOptions, uriQueryBuilder, operationContext);
        if (accessCondition != null) {
            accessCondition.applyLeaseConditionToRequest(properties);
        }
        return properties;
    }

    public static HttpURLConnection lease(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, LeaseAction leaseAction, Integer num, String str, Integer num2, UriQueryBuilder uriQueryBuilder) {
        String str2;
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setRequestProperty(Constants.HeaderConstants.LEASE_ACTION_HEADER, leaseAction.toString());
        if (leaseAction == LeaseAction.ACQUIRE) {
            if (!(num == null || num.intValue() == -1)) {
                Utility.assertInBounds("leaseTimeInSeconds", (long) num.intValue(), 15, 60);
            }
            if (num == null) {
                str2 = "-1";
            } else {
                str2 = num.toString();
            }
            createURLConnection.setRequestProperty(Constants.HeaderConstants.LEASE_DURATION, str2);
        }
        if (str != null) {
            createURLConnection.setRequestProperty(Constants.HeaderConstants.PROPOSED_LEASE_ID_HEADER, str);
        }
        if (num2 != null) {
            Utility.assertInBounds("breakPeriodInSeconds", (long) num2.intValue(), 0, 60);
            createURLConnection.setRequestProperty(Constants.HeaderConstants.LEASE_BREAK_PERIOD_HEADER, num2.toString());
        }
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection leaseBlob(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, LeaseAction leaseAction, Integer num, String str, Integer num2) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, BlobConstants.LEASE);
        return lease(uri, blobRequestOptions, operationContext, accessCondition, leaseAction, num, str, num2, uriQueryBuilder);
    }

    public static HttpURLConnection leaseContainer(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, LeaseAction leaseAction, Integer num, String str, Integer num2) {
        UriQueryBuilder containerUriQueryBuilder = getContainerUriQueryBuilder();
        containerUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, BlobConstants.LEASE);
        return lease(uri, blobRequestOptions, operationContext, accessCondition, leaseAction, num, str, num2, containerUriQueryBuilder);
    }

    public static HttpURLConnection listBlobs(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, BlobListingContext blobListingContext) {
        UriQueryBuilder containerUriQueryBuilder = getContainerUriQueryBuilder();
        containerUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.LIST);
        if (blobListingContext != null) {
            if (!Utility.isNullOrEmpty(blobListingContext.getPrefix())) {
                containerUriQueryBuilder.add(Constants.QueryConstants.PREFIX, blobListingContext.getPrefix());
            }
            if (!Utility.isNullOrEmpty(blobListingContext.getDelimiter())) {
                containerUriQueryBuilder.add(Constants.QueryConstants.DELIMITER, blobListingContext.getDelimiter());
            }
            if (!Utility.isNullOrEmpty(blobListingContext.getMarker())) {
                containerUriQueryBuilder.add(Constants.QueryConstants.MARKER, blobListingContext.getMarker());
            }
            if (blobListingContext.getMaxResults() != null && blobListingContext.getMaxResults().intValue() > 0) {
                containerUriQueryBuilder.add(Constants.QueryConstants.MAX_RESULTS, blobListingContext.getMaxResults().toString());
            }
            if (blobListingContext.getListingDetails() != null && blobListingContext.getListingDetails().size() > 0) {
                StringBuilder sb = new StringBuilder();
                boolean z = false;
                boolean z2 = true;
                if (blobListingContext.getListingDetails().contains(BlobListingDetails.SNAPSHOTS)) {
                    sb.append("snapshots");
                    z = true;
                }
                if (blobListingContext.getListingDetails().contains(BlobListingDetails.UNCOMMITTED_BLOBS)) {
                    if (!z) {
                        z = true;
                    } else {
                        sb.append(",");
                    }
                    sb.append(UNCOMMITTED_BLOBS_QUERY_ELEMENT_NAME);
                }
                if (blobListingContext.getListingDetails().contains(BlobListingDetails.COPY)) {
                    if (!z) {
                        z = true;
                    } else {
                        sb.append(",");
                    }
                    sb.append("copy");
                }
                if (blobListingContext.getListingDetails().contains(BlobListingDetails.METADATA)) {
                    if (z) {
                        sb.append(",");
                        z2 = z;
                    }
                    sb.append("metadata");
                    z = z2;
                }
                if (blobListingContext.getListingDetails().contains(BlobListingDetails.DELETED)) {
                    if (z) {
                        sb.append(",");
                    }
                    sb.append(DELETED_QUERY_ELEMENT_NAME);
                }
                containerUriQueryBuilder.add("include", sb.toString());
            }
        }
        HttpURLConnection createURLConnection = createURLConnection(uri, containerUriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection listContainers(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, ListingContext listingContext, ContainerListingDetails containerListingDetails) {
        UriQueryBuilder listUriQueryBuilder = BaseRequest.getListUriQueryBuilder(listingContext);
        if (containerListingDetails == ContainerListingDetails.ALL || containerListingDetails == ContainerListingDetails.METADATA) {
            listUriQueryBuilder.add("include", "metadata");
        }
        HttpURLConnection createURLConnection = createURLConnection(uri, listUriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection putBlob(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, BlobProperties blobProperties, BlobType blobType, long j2) {
        return putBlob(uri, blobRequestOptions, operationContext, accessCondition, blobProperties, blobType, j2, (PremiumPageBlobTier) null);
    }

    public static HttpURLConnection putBlock(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, BLOCK_QUERY_ELEMENT_NAME);
        uriQueryBuilder.add(BLOCK_ID_QUERY_ELEMENT_NAME, str);
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection putBlockList(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, BlobProperties blobProperties) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, BLOCK_LIST_QUERY_ELEMENT_NAME);
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        addProperties(createURLConnection, blobProperties);
        return createURLConnection;
    }

    public static HttpURLConnection putPage(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, PageRange pageRange, PageOperationType pageOperationType) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "page");
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (pageOperationType == PageOperationType.CLEAR) {
            createURLConnection.setFixedLengthStreamingMode(0);
        }
        createURLConnection.setRequestProperty(BlobConstants.PAGE_WRITE, pageOperationType.toString());
        createURLConnection.setRequestProperty(Constants.HeaderConstants.STORAGE_RANGE_HEADER, pageRange.toString());
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
            accessCondition.applySequenceConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection resize(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, Long l2) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "properties");
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        if (l2 != null) {
            createURLConnection.setRequestProperty("x-ms-blob-content-length", l2.toString());
        }
        return createURLConnection;
    }

    public static HttpURLConnection setAcl(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, BlobContainerPublicAccessType blobContainerPublicAccessType) {
        if (blobContainerPublicAccessType != BlobContainerPublicAccessType.UNKNOWN) {
            UriQueryBuilder containerUriQueryBuilder = getContainerUriQueryBuilder();
            containerUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
            HttpURLConnection createURLConnection = createURLConnection(uri, containerUriQueryBuilder, blobRequestOptions, operationContext);
            createURLConnection.setRequestMethod("PUT");
            createURLConnection.setDoOutput(true);
            if (blobContainerPublicAccessType != BlobContainerPublicAccessType.OFF) {
                createURLConnection.setRequestProperty(BlobConstants.BLOB_PUBLIC_ACCESS_HEADER, blobContainerPublicAccessType.toString().toLowerCase());
            }
            if (accessCondition != null) {
                accessCondition.applyLeaseConditionToRequest(createURLConnection);
            }
            return createURLConnection;
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"accessType", blobContainerPublicAccessType}));
    }

    public static HttpURLConnection setBlobMetadata(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        return setMetadata(uri, blobRequestOptions, operationContext, accessCondition, (UriQueryBuilder) null);
    }

    public static HttpURLConnection setBlobProperties(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, BlobProperties blobProperties) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "properties");
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        if (blobProperties != null) {
            addProperties(createURLConnection, blobProperties);
        }
        return createURLConnection;
    }

    public static HttpURLConnection setBlobTier(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, String str) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, TIER_QUERY_ELEMENT_NAME);
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_LENGTH, Schema.Value.FALSE);
        createURLConnection.setRequestProperty(BlobConstants.ACCESS_TIER_HEADER, str);
        return createURLConnection;
    }

    public static HttpURLConnection setContainerMetadata(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        return setMetadata(uri, blobRequestOptions, operationContext, accessCondition, getContainerUriQueryBuilder());
    }

    public static HttpURLConnection setMetadata(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, UriQueryBuilder uriQueryBuilder) {
        HttpURLConnection metadata = BaseRequest.setMetadata(uri, blobRequestOptions, uriQueryBuilder, operationContext);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(metadata);
        }
        return metadata;
    }

    public static HttpURLConnection snapshot(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "snapshot");
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection undeleteBlob(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return BaseRequest.undelete(uri, blobRequestOptions, new UriQueryBuilder(), operationContext);
    }

    public static HttpURLConnection copyFrom(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, AccessCondition accessCondition2, String str, String str2, boolean z, boolean z2, String str3, PremiumPageBlobTier premiumPageBlobTier) {
        if (z2 || Utility.isNullOrEmpty(str3)) {
            if (str2 != null) {
                str = str.concat("?snapshot=").concat(str2);
            }
            UriQueryBuilder uriQueryBuilder = null;
            if (z) {
                uriQueryBuilder = new UriQueryBuilder();
                uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "incrementalcopy");
            }
            HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, blobRequestOptions, uriQueryBuilder, operationContext);
            createURLConnection.setFixedLengthStreamingMode(0);
            createURLConnection.setDoOutput(true);
            createURLConnection.setRequestMethod("PUT");
            createURLConnection.setRequestProperty("x-ms-copy-source", str);
            if (premiumPageBlobTier != null) {
                createURLConnection.setRequestProperty(BlobConstants.ACCESS_TIER_HEADER, String.valueOf(premiumPageBlobTier));
            }
            if (accessCondition != null) {
                accessCondition.applySourceConditionToRequest(createURLConnection);
            }
            if (accessCondition2 != null) {
                accessCondition2.applyConditionToRequest(createURLConnection);
            }
            if (z2) {
                createURLConnection.setRequestProperty(Constants.HeaderConstants.REQUIRES_SYNC_HEADER, "true");
            }
            if (!Utility.isNullOrEmpty(str3)) {
                createURLConnection.setRequestProperty(Constants.HeaderConstants.SOURCE_CONTENT_MD5_HEADER, str3);
            }
            return createURLConnection;
        }
        throw new IllegalArgumentException(SR.INVALID_COPY_MD5_OPERATION);
    }

    public static HttpURLConnection putBlob(URI uri, BlobRequestOptions blobRequestOptions, OperationContext operationContext, AccessCondition accessCondition, BlobProperties blobProperties, BlobType blobType, long j2, PremiumPageBlobTier premiumPageBlobTier) {
        if (blobType != BlobType.UNSPECIFIED) {
            HttpURLConnection createURLConnection = createURLConnection(uri, (UriQueryBuilder) null, blobRequestOptions, operationContext);
            createURLConnection.setDoOutput(true);
            createURLConnection.setRequestMethod("PUT");
            addProperties(createURLConnection, blobProperties);
            if (blobType == BlobType.PAGE_BLOB) {
                createURLConnection.setFixedLengthStreamingMode(0);
                createURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_LENGTH, Schema.Value.FALSE);
                createURLConnection.setRequestProperty(BlobConstants.BLOB_TYPE_HEADER, BlobConstants.PAGE_BLOB);
                createURLConnection.setRequestProperty("x-ms-blob-content-length", String.valueOf(j2));
                if (premiumPageBlobTier != null) {
                    createURLConnection.setRequestProperty(BlobConstants.ACCESS_TIER_HEADER, String.valueOf(premiumPageBlobTier));
                }
                blobProperties.setLength(j2);
            } else if (blobType == BlobType.BLOCK_BLOB) {
                createURLConnection.setRequestProperty(BlobConstants.BLOB_TYPE_HEADER, BlobConstants.BLOCK_BLOB);
            } else if (blobType == BlobType.APPEND_BLOB) {
                createURLConnection.setFixedLengthStreamingMode(0);
                createURLConnection.setRequestProperty(BlobConstants.BLOB_TYPE_HEADER, BlobConstants.APPEND_BLOB);
                createURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_LENGTH, Schema.Value.FALSE);
            }
            if (accessCondition != null) {
                accessCondition.applyConditionToRequest(createURLConnection);
            }
            return createURLConnection;
        }
        throw new IllegalArgumentException(SR.BLOB_TYPE_NOT_DEFINED);
    }

    public static HttpURLConnection putBlock(URI uri, String str, long j2, Long l2, BlobRequestOptions blobRequestOptions, String str2, OperationContext operationContext, AccessCondition accessCondition, String str3) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, BLOCK_QUERY_ELEMENT_NAME);
        uriQueryBuilder.add(BLOCK_ID_QUERY_ELEMENT_NAME, str3);
        HttpURLConnection createURLConnection = createURLConnection(uri, uriQueryBuilder, blobRequestOptions, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_LENGTH, Schema.Value.FALSE);
        createURLConnection.setRequestProperty("x-ms-copy-source", str);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        addSourceRange(createURLConnection, Long.valueOf(j2), l2);
        BaseRequest.addOptionalHeader(createURLConnection, Constants.HeaderConstants.SOURCE_CONTENT_MD5_HEADER, str2);
        return createURLConnection;
    }
}
