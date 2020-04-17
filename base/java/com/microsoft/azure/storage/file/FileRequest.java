package com.microsoft.azure.storage.file;

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
import java.util.EnumSet;
import java.util.Map;

public final class FileRequest {
    public static final String RANGE_LIST_QUERY_ELEMENT_NAME = "rangelist";
    public static final String RANGE_QUERY_ELEMENT_NAME = "range";
    public static final String SNAPSHOTS_QUERY_ELEMENT_NAME = "snapshots";

    /* renamed from: com.microsoft.azure.storage.file.FileRequest$1  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$file$DeleteShareSnapshotsOption;

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000e */
        static {
            /*
                com.microsoft.azure.storage.file.DeleteShareSnapshotsOption[] r0 = com.microsoft.azure.storage.file.DeleteShareSnapshotsOption.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$file$DeleteShareSnapshotsOption = r0
                com.microsoft.azure.storage.file.DeleteShareSnapshotsOption r1 = com.microsoft.azure.storage.file.DeleteShareSnapshotsOption.NONE     // Catch:{ NoSuchFieldError -> 0x000e }
                r1 = 1
                r0[r1] = r1     // Catch:{ NoSuchFieldError -> 0x000e }
            L_0x000e:
                int[] r0 = $SwitchMap$com$microsoft$azure$storage$file$DeleteShareSnapshotsOption     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.file.DeleteShareSnapshotsOption r1 = com.microsoft.azure.storage.file.DeleteShareSnapshotsOption.INCLUDE_SNAPSHOTS     // Catch:{ NoSuchFieldError -> 0x0016 }
                r1 = 0
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.file.FileRequest.AnonymousClass1.<clinit>():void");
        }
    }

    public static HttpURLConnection abortCopy(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "copy");
        uriQueryBuilder.add(Constants.QueryConstants.COPY_ID, str);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setRequestProperty(Constants.HeaderConstants.COPY_ACTION_HEADER, Constants.HeaderConstants.COPY_ACTION_ABORT);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static void addMetadata(HttpURLConnection httpURLConnection, Map<String, String> map, OperationContext operationContext) {
        BaseRequest.addMetadata(httpURLConnection, map, operationContext);
    }

    public static void addProperties(HttpURLConnection httpURLConnection, FileProperties fileProperties) {
        BaseRequest.addOptionalHeader(httpURLConnection, FileConstants.CACHE_CONTROL_HEADER, fileProperties.getCacheControl());
        BaseRequest.addOptionalHeader(httpURLConnection, FileConstants.CONTENT_DISPOSITION_HEADER, fileProperties.getContentDisposition());
        BaseRequest.addOptionalHeader(httpURLConnection, FileConstants.CONTENT_ENCODING_HEADER, fileProperties.getContentEncoding());
        BaseRequest.addOptionalHeader(httpURLConnection, FileConstants.CONTENT_LANGUAGE_HEADER, fileProperties.getContentLanguage());
        BaseRequest.addOptionalHeader(httpURLConnection, FileConstants.FILE_CONTENT_MD5_HEADER, fileProperties.getContentMD5());
        BaseRequest.addOptionalHeader(httpURLConnection, FileConstants.CONTENT_TYPE_HEADER, fileProperties.getContentType());
    }

    public static void addShareSnapshot(UriQueryBuilder uriQueryBuilder, String str) {
        if (str != null) {
            uriQueryBuilder.add(Constants.QueryConstants.SHARE_SNAPSHOT, str);
        }
    }

    public static HttpURLConnection copyFrom(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, AccessCondition accessCondition2, String str) {
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, (UriQueryBuilder) null, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setRequestProperty("x-ms-copy-source", str);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        if (accessCondition2 != null) {
            accessCondition2.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection createDirectory(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return BaseRequest.create(uri, fileRequestOptions, getDirectoryUriQueryBuilder(), operationContext);
    }

    public static HttpURLConnection createShare(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, FileShareProperties fileShareProperties) {
        HttpURLConnection create = BaseRequest.create(uri, fileRequestOptions, getShareUriQueryBuilder(), operationContext);
        addProperties(create, fileShareProperties);
        return create;
    }

    public static HttpURLConnection deleteDirectory(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        HttpURLConnection delete = BaseRequest.delete(uri, fileRequestOptions, getDirectoryUriQueryBuilder(), operationContext);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(delete);
        }
        return delete;
    }

    public static HttpURLConnection deleteFile(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        HttpURLConnection delete = BaseRequest.delete(uri, fileRequestOptions, new UriQueryBuilder(), operationContext);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(delete);
        }
        return delete;
    }

    public static HttpURLConnection deleteShare(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str, DeleteShareSnapshotsOption deleteShareSnapshotsOption) {
        UriQueryBuilder shareUriQueryBuilder = getShareUriQueryBuilder();
        addShareSnapshot(shareUriQueryBuilder, str);
        HttpURLConnection delete = BaseRequest.delete(uri, fileRequestOptions, shareUriQueryBuilder, operationContext);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(delete);
        }
        if (deleteShareSnapshotsOption.ordinal() == 0) {
            delete.setRequestProperty(Constants.HeaderConstants.DELETE_SNAPSHOT_HEADER, "include");
        }
        return delete;
    }

    public static HttpURLConnection getAcl(URI uri, FileRequestOptions fileRequestOptions, AccessCondition accessCondition, OperationContext operationContext) {
        UriQueryBuilder shareUriQueryBuilder = getShareUriQueryBuilder();
        shareUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, shareUriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null && !Utility.isNullOrEmpty(accessCondition.getLeaseID())) {
            accessCondition.applyLeaseConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection getDirectoryProperties(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        return getProperties(uri, fileRequestOptions, operationContext, accessCondition, getDirectoryUriQueryBuilder(), str);
    }

    public static UriQueryBuilder getDirectoryUriQueryBuilder() {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        try {
            uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, SR.DIRECTORY);
            return uriQueryBuilder;
        } catch (IllegalArgumentException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public static HttpURLConnection getFile(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str, Long l2, Long l3, boolean z) {
        if (l2 != null && z) {
            Utility.assertNotNull("count", l3);
            Utility.assertInBounds("count", l3.longValue(), 1, (long) Constants.MAX_RANGE_CONTENT_MD5);
        }
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        addShareSnapshot(uriQueryBuilder, str);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        if (l2 != null) {
            long longValue = l2.longValue();
            if (l3 != null) {
                long longValue2 = l2.longValue();
                createURLConnection.setRequestProperty(Constants.HeaderConstants.STORAGE_RANGE_HEADER, String.format(Utility.LOCALE_US, Constants.HeaderConstants.RANGE_HEADER_FORMAT, new Object[]{Long.valueOf(longValue), Long.valueOf((l3.longValue() + longValue2) - 1)}));
            } else {
                createURLConnection.setRequestProperty(Constants.HeaderConstants.STORAGE_RANGE_HEADER, String.format(Utility.LOCALE_US, Constants.HeaderConstants.BEGIN_RANGE_HEADER_FORMAT, new Object[]{Long.valueOf(longValue)}));
            }
        }
        if (l2 != null && z) {
            createURLConnection.setRequestProperty(Constants.HeaderConstants.RANGE_GET_CONTENT_MD5, "true");
        }
        return createURLConnection;
    }

    public static HttpURLConnection getFileProperties(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        return getProperties(uri, fileRequestOptions, operationContext, accessCondition, new UriQueryBuilder(), str);
    }

    public static HttpURLConnection getFileRanges(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        addShareSnapshot(uriQueryBuilder, str);
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, RANGE_LIST_QUERY_ELEMENT_NAME);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection getProperties(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, UriQueryBuilder uriQueryBuilder, String str) {
        addShareSnapshot(uriQueryBuilder, str);
        HttpURLConnection properties = BaseRequest.getProperties(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        if (accessCondition != null) {
            accessCondition.applyLeaseConditionToRequest(properties);
        }
        return properties;
    }

    public static HttpURLConnection getShareProperties(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, String str) {
        return getProperties(uri, fileRequestOptions, operationContext, accessCondition, getShareUriQueryBuilder(), str);
    }

    public static HttpURLConnection getShareStats(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        UriQueryBuilder shareUriQueryBuilder = getShareUriQueryBuilder();
        shareUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "stats");
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, shareUriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static UriQueryBuilder getShareUriQueryBuilder() {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        try {
            uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, SR.SHARE);
            return uriQueryBuilder;
        } catch (IllegalArgumentException e2) {
            throw Utility.generateNewUnexpectedStorageException(e2);
        }
    }

    public static HttpURLConnection listFilesAndDirectories(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, ListingContext listingContext, String str) {
        UriQueryBuilder directoryUriQueryBuilder = getDirectoryUriQueryBuilder();
        addShareSnapshot(directoryUriQueryBuilder, str);
        directoryUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.LIST);
        if (listingContext != null) {
            if (!Utility.isNullOrEmpty(listingContext.getMarker())) {
                directoryUriQueryBuilder.add(Constants.QueryConstants.MARKER, listingContext.getMarker());
            }
            if (listingContext.getMaxResults() != null && listingContext.getMaxResults().intValue() > 0) {
                directoryUriQueryBuilder.add(Constants.QueryConstants.MAX_RESULTS, listingContext.getMaxResults().toString());
            }
            if (!Utility.isNullOrEmpty(listingContext.getPrefix())) {
                directoryUriQueryBuilder.add(Constants.QueryConstants.PREFIX, listingContext.getPrefix().toString());
            }
        }
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, directoryUriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection listShares(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, ListingContext listingContext, EnumSet<ShareListingDetails> enumSet) {
        UriQueryBuilder listUriQueryBuilder = BaseRequest.getListUriQueryBuilder(listingContext);
        if (enumSet != null && enumSet.size() > 0) {
            StringBuilder sb = new StringBuilder();
            boolean z = false;
            if (enumSet.contains(ShareListingDetails.SNAPSHOTS)) {
                z = true;
                sb.append("snapshots");
            }
            if (enumSet.contains(ShareListingDetails.METADATA)) {
                if (z) {
                    sb.append(",");
                }
                sb.append("metadata");
            }
            listUriQueryBuilder.add("include", sb.toString());
        }
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, listUriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("GET");
        return createURLConnection;
    }

    public static HttpURLConnection putFile(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, FileProperties fileProperties, long j2) {
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, (UriQueryBuilder) null, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        addProperties(createURLConnection, fileProperties);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_LENGTH, Schema.Value.FALSE);
        createURLConnection.setRequestProperty(FileConstants.FILE_TYPE_HEADER, "File");
        createURLConnection.setRequestProperty(FileConstants.CONTENT_LENGTH_HEADER, String.valueOf(j2));
        fileProperties.setLength(j2);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection putRange(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, FileRange fileRange, FileRangeOperationType fileRangeOperationType) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, RANGE_QUERY_ELEMENT_NAME);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (fileRangeOperationType == FileRangeOperationType.CLEAR) {
            createURLConnection.setFixedLengthStreamingMode(0);
        }
        createURLConnection.setRequestProperty(FileConstants.FILE_RANGE_WRITE, fileRangeOperationType.toString());
        createURLConnection.setRequestProperty(Constants.HeaderConstants.STORAGE_RANGE_HEADER, fileRange.toString());
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection resize(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, Long l2) {
        HttpURLConnection fileProperties = setFileProperties(uri, fileRequestOptions, operationContext, accessCondition, (FileProperties) null);
        if (l2 != null) {
            fileProperties.setRequestProperty(FileConstants.CONTENT_LENGTH_HEADER, l2.toString());
        }
        return fileProperties;
    }

    public static HttpURLConnection setAcl(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        UriQueryBuilder shareUriQueryBuilder = getShareUriQueryBuilder();
        shareUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, Constants.QueryConstants.ACL);
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, shareUriQueryBuilder, operationContext);
        createURLConnection.setRequestMethod("PUT");
        createURLConnection.setDoOutput(true);
        if (accessCondition != null && !Utility.isNullOrEmpty(accessCondition.getLeaseID())) {
            accessCondition.applyLeaseConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static HttpURLConnection setDirectoryMetadata(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        return setMetadata(uri, fileRequestOptions, operationContext, accessCondition, getDirectoryUriQueryBuilder());
    }

    public static HttpURLConnection setFileMetadata(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        return setMetadata(uri, fileRequestOptions, operationContext, accessCondition, (UriQueryBuilder) null);
    }

    public static HttpURLConnection setFileProperties(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, FileProperties fileProperties) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "properties");
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        if (fileProperties != null) {
            addProperties(createURLConnection, fileProperties);
        }
        return createURLConnection;
    }

    public static HttpURLConnection setMetadata(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, UriQueryBuilder uriQueryBuilder) {
        HttpURLConnection metadata = BaseRequest.setMetadata(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(metadata);
        }
        return metadata;
    }

    public static HttpURLConnection setShareMetadata(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        return setMetadata(uri, fileRequestOptions, operationContext, accessCondition, getShareUriQueryBuilder());
    }

    public static HttpURLConnection setShareProperties(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition, FileShareProperties fileShareProperties) {
        UriQueryBuilder shareUriQueryBuilder = getShareUriQueryBuilder();
        shareUriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "properties");
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, shareUriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        if (fileShareProperties != null) {
            addProperties(createURLConnection, fileShareProperties);
        }
        return createURLConnection;
    }

    public static HttpURLConnection snapshotShare(URI uri, FileRequestOptions fileRequestOptions, OperationContext operationContext, AccessCondition accessCondition) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add(Constants.QueryConstants.RESOURCETYPE, SR.SHARE);
        uriQueryBuilder.add(Constants.QueryConstants.COMPONENT, "snapshot");
        HttpURLConnection createURLConnection = BaseRequest.createURLConnection(uri, fileRequestOptions, uriQueryBuilder, operationContext);
        createURLConnection.setFixedLengthStreamingMode(0);
        createURLConnection.setDoOutput(true);
        createURLConnection.setRequestMethod("PUT");
        if (accessCondition != null) {
            accessCondition.applyConditionToRequest(createURLConnection);
        }
        return createURLConnection;
    }

    public static void addProperties(HttpURLConnection httpURLConnection, FileShareProperties fileShareProperties) {
        String str;
        Integer shareQuota = fileShareProperties.getShareQuota();
        if (shareQuota == null) {
            str = null;
        } else {
            str = shareQuota.toString();
        }
        BaseRequest.addOptionalHeader(httpURLConnection, FileConstants.SHARE_QUOTA_HEADER, str);
    }
}
