.class public Lcom/microsoft/azure/storage/Constants$HeaderConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderConstants"
.end annotation


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final ACCOUNT_KIND:Ljava/lang/String; = "x-ms-account-kind"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final BEARER:Ljava/lang/String; = "Bearer"

.field public static final BEGIN_RANGE_HEADER_FORMAT:Ljava/lang/String; = "bytes=%d-"

.field public static final BLOB_APPEND_OFFSET:Ljava/lang/String; = "x-ms-blob-append-offset"

.field public static final BLOB_COMMITTED_BLOCK_COUNT:Ljava/lang/String; = "x-ms-blob-committed-block-count"

.field public static final BLOB_SEQUENCE_NUMBER:Ljava/lang/String; = "x-ms-blob-sequence-number"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CACHE_CONTROL_HEADER:Ljava/lang/String; = "x-ms-blob-cache-control"

.field public static final CLIENT_REQUEST_ID_HEADER:Ljava/lang/String; = "x-ms-client-request-id"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COPY_ACTION_ABORT:Ljava/lang/String; = "abort"

.field public static final COPY_ACTION_HEADER:Ljava/lang/String; = "x-ms-copy-action"

.field public static final COPY_COMPLETION_TIME:Ljava/lang/String; = "x-ms-copy-completion-time"

.field public static final COPY_DESTINATION_SNAPSHOT_ID:Ljava/lang/String; = "x-ms-copy-destination-snapshot"

.field public static final COPY_ID:Ljava/lang/String; = "x-ms-copy-id"

.field public static final COPY_PROGRESS:Ljava/lang/String; = "x-ms-copy-progress"

.field public static final COPY_SOURCE:Ljava/lang/String; = "x-ms-copy-source"

.field public static final COPY_SOURCE_HEADER:Ljava/lang/String; = "x-ms-copy-source"

.field public static final COPY_STATUS:Ljava/lang/String; = "x-ms-copy-status"

.field public static final COPY_STATUS_DESCRIPTION:Ljava/lang/String; = "x-ms-copy-status-description"

.field public static final DATE:Ljava/lang/String; = "x-ms-date"

.field public static final DELETE_SNAPSHOT_HEADER:Ljava/lang/String; = "x-ms-delete-snapshots"

.field public static final ERROR_CODE:Ljava/lang/String; = "x-ms-error-code"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final HTTP_UNUSED_306:I = 0x132

.field public static final IF_APPEND_POSITION_EQUAL_HEADER:Ljava/lang/String; = "x-ms-blob-condition-appendpos"

.field public static final IF_MATCH:Ljava/lang/String; = "If-Match"

.field public static final IF_MAX_SIZE_LESS_THAN_OR_EQUAL:Ljava/lang/String; = "x-ms-blob-condition-maxsize"

.field public static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final IF_SEQUENCE_NUMBER_EQUAL:Ljava/lang/String; = "x-ms-if-sequence-number-eq"

.field public static final IF_SEQUENCE_NUMBER_LESS_THAN:Ljava/lang/String; = "x-ms-if-sequence-number-lt"

.field public static final IF_SEQUENCE_NUMBER_LESS_THAN_OR_EQUAL:Ljava/lang/String; = "x-ms-if-sequence-number-le"

.field public static final IF_UNMODIFIED_SINCE:Ljava/lang/String; = "If-Unmodified-Since"

.field public static final INCLUDE_SNAPSHOTS_VALUE:Ljava/lang/String; = "include"

.field public static final INCREMENTAL_COPY:Ljava/lang/String; = "x-ms-incremental-copy"

.field public static final LEASE_ACTION_HEADER:Ljava/lang/String; = "x-ms-lease-action"

.field public static final LEASE_BREAK_PERIOD_HEADER:Ljava/lang/String; = "x-ms-lease-break-period"

.field public static final LEASE_DURATION:Ljava/lang/String; = "x-ms-lease-duration"

.field public static final LEASE_ID_HEADER:Ljava/lang/String; = "x-ms-lease-id"

.field public static final LEASE_STATE:Ljava/lang/String; = "x-ms-lease-state"

.field public static final LEASE_STATUS:Ljava/lang/String; = "x-ms-lease-status"

.field public static final LEASE_TIME_HEADER:Ljava/lang/String; = "x-ms-lease-time"

.field public static final POP_RECEIPT_HEADER:Ljava/lang/String; = "x-ms-popreceipt"

.field public static final PREFIX_FOR_STORAGE_METADATA:Ljava/lang/String; = "x-ms-meta-"

.field public static final PREFIX_FOR_STORAGE_PROPERTIES:Ljava/lang/String; = "x-ms-prop-"

.field public static final PROPOSED_LEASE_ID_HEADER:Ljava/lang/String; = "x-ms-proposed-lease-id"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final RANGE_GET_CONTENT_MD5:Ljava/lang/String; = "x-ms-range-get-content-md5"

.field public static final RANGE_HEADER_FORMAT:Ljava/lang/String; = "bytes=%d-%d"

.field public static final REQUEST_ID_HEADER:Ljava/lang/String; = "x-ms-request-id"

.field public static final REQUIRES_SYNC_HEADER:Ljava/lang/String; = "x-ms-requires-sync"

.field public static final SERVER:Ljava/lang/String; = "Server"

.field public static final SERVER_ENCRYPTED:Ljava/lang/String; = "x-ms-server-encrypted"

.field public static final SERVER_REQUEST_ENCRYPTED:Ljava/lang/String; = "x-ms-request-server-encrypted"

.field public static final SKU_NAME:Ljava/lang/String; = "x-ms-sku-name"

.field public static final SNAPSHOT_ID_HEADER:Ljava/lang/String; = "x-ms-snapshot"

.field public static final SOURCE_CONTENT_MD5_HEADER:Ljava/lang/String; = "x-ms-source-content-md5"

.field public static final SOURCE_IF_MATCH_HEADER:Ljava/lang/String; = "x-ms-source-if-match"

.field public static final SOURCE_IF_MODIFIED_SINCE_HEADER:Ljava/lang/String; = "x-ms-source-if-modified-since"

.field public static final SOURCE_IF_NONE_MATCH_HEADER:Ljava/lang/String; = "x-ms-source-if-none-match"

.field public static final SOURCE_IF_UNMODIFIED_SINCE_HEADER:Ljava/lang/String; = "x-ms-source-if-unmodified-since"

.field public static final SOURCE_LEASE_ID_HEADER:Ljava/lang/String; = "x-ms-source-lease-id"

.field public static final STORAGE_RANGE_HEADER:Ljava/lang/String; = "x-ms-range"

.field public static final STORAGE_SOURCE_RANGE_HEADER:Ljava/lang/String; = "x-ms-source-range"

.field public static final STORAGE_VERSION_HEADER:Ljava/lang/String; = "x-ms-version"

.field public static final TARGET_STORAGE_VERSION:Ljava/lang/String; = "2018-03-28"

.field public static final TIME_NEXT_VISIBLE_HEADER:Ljava/lang/String; = "x-ms-time-next-visible"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final USER_AGENT_PREFIX:Ljava/lang/String; = "Azure-Storage"

.field public static final USER_AGENT_VERSION:Ljava/lang/String; = "8.1.0"

.field public static final XML_TYPE:Ljava/lang/String; = "application/xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
