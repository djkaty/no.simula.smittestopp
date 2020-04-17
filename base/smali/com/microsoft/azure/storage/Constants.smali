.class public final Lcom/microsoft/azure/storage/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/storage/Constants$QueryConstants;,
        Lcom/microsoft/azure/storage/Constants$HeaderConstants;,
        Lcom/microsoft/azure/storage/Constants$EncryptionConstants;,
        Lcom/microsoft/azure/storage/Constants$AnalyticsConstants;
    }
.end annotation


# static fields
.field public static final ACCESS_POLICY:Ljava/lang/String; = "AccessPolicy"

.field public static final ACCESS_TIER:Ljava/lang/String; = "AccessTier"

.field public static final ACCESS_TIER_CHANGE_TIME:Ljava/lang/String; = "AccessTierChangeTime"

.field public static final ACCESS_TIER_INFERRED:Ljava/lang/String; = "AccessTierInferred"

.field public static final ARCHIVE_STATUS:Ljava/lang/String; = "ArchiveStatus"

.field public static final BUFFER_COPY_LENGTH:I = 0x2000

.field public static final COPY_COMPLETION_TIME_ELEMENT:Ljava/lang/String; = "CopyCompletionTime"

.field public static final COPY_DESTINATION_SNAPSHOT_ID_ELEMENT:Ljava/lang/String; = "CopyDestinationSnapshot"

.field public static final COPY_ID_ELEMENT:Ljava/lang/String; = "CopyId"

.field public static final COPY_PROGRESS_ELEMENT:Ljava/lang/String; = "CopyProgress"

.field public static final COPY_SOURCE_ELEMENT:Ljava/lang/String; = "CopySource"

.field public static final COPY_STATUS_DESCRIPTION_ELEMENT:Ljava/lang/String; = "CopyStatusDescription"

.field public static final COPY_STATUS_ELEMENT:Ljava/lang/String; = "CopyStatus"

.field public static final DEFAULT_MINIMUM_READ_SIZE_IN_BYTES:I = 0x400000

.field public static final DEFAULT_READ_TIMEOUT:I = 0x493e0

.field public static final DEFAULT_STREAM_WRITE_IN_BYTES:I = 0x400000

.field public static final DELIMITER_ELEMENT:Ljava/lang/String; = "Delimiter"

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final END_ELEMENT:Ljava/lang/String; = "End"

.field public static final ERROR_CODE:Ljava/lang/String; = "Code"

.field public static final ERROR_EXCEPTION:Ljava/lang/String; = "ExceptionDetails"

.field public static final ERROR_EXCEPTION_MESSAGE:Ljava/lang/String; = "ExceptionMessage"

.field public static final ERROR_EXCEPTION_STACK_TRACE:Ljava/lang/String; = "StackTrace"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "Message"

.field public static final ERROR_ROOT_ELEMENT:Ljava/lang/String; = "Error"

.field public static final ETAG_ELEMENT:Ljava/lang/String; = "Etag"

.field public static final EXPIRY:Ljava/lang/String; = "Expiry"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final GB:I = 0x40000000

.field public static final GEO_BOOTSTRAP_VALUE:Ljava/lang/String; = "bootstrap"

.field public static final GEO_LIVE_VALUE:Ljava/lang/String; = "live"

.field public static final GEO_UNAVAILABLE_VALUE:Ljava/lang/String; = "unavailable"

.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_HTTP:Ljava/lang/String; = "https,http"

.field public static final HTTP_DELETE:Ljava/lang/String; = "DELETE"

.field public static final HTTP_GET:Ljava/lang/String; = "GET"

.field public static final HTTP_HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_POST:Ljava/lang/String; = "POST"

.field public static final HTTP_PUT:Ljava/lang/String; = "PUT"

.field public static final ID:Ljava/lang/String; = "Id"

.field public static final INCREMENTAL_COPY_ELEMENT:Ljava/lang/String; = "IncrementalCopy"

.field public static final INVALID_METADATA_NAME:Ljava/lang/String; = "x-ms-invalid-name"

.field public static final KB:I = 0x400

.field public static final LAST_MODIFIED_ELEMENT:Ljava/lang/String; = "Last-Modified"

.field public static final LEASE_BREAK_PERIOD_MAX:I = 0x3c

.field public static final LEASE_BREAK_PERIOD_MIN:I = 0x0

.field public static final LEASE_DURATION_ELEMENT:Ljava/lang/String; = "LeaseDuration"

.field public static final LEASE_DURATION_MAX:I = 0x3c

.field public static final LEASE_DURATION_MIN:I = 0xf

.field public static final LEASE_STATE_ELEMENT:Ljava/lang/String; = "LeaseState"

.field public static final LEASE_STATUS_ELEMENT:Ljava/lang/String; = "LeaseStatus"

.field public static final LOCKED_VALUE:Ljava/lang/String; = "Locked"

.field public static final MARKER_ELEMENT:Ljava/lang/String; = "Marker"

.field public static final MAXIMUM_SEGMENTED_RESULTS:I = 0x1388

.field public static MAX_APPEND_BLOCK_SIZE:I = 0x400000

.field public static final MAX_BLOB_SIZE:J

.field public static final MAX_BLOCK_NUMBER:J = 0xc350L

.field public static MAX_BLOCK_SIZE:I = 0x6400000

.field public static MAX_FILE_WRITE_SIZE:I = 0x400000

.field public static final MAX_MARK_LENGTH:I = 0x10000000

.field public static MAX_PAGE_WRITE_SIZE:I = 0x400000

.field public static MAX_RANGE_CONTENT_MD5:I = 0x400000

.field public static final MAX_RESULTS_ELEMENT:Ljava/lang/String; = "MaxResults"

.field public static final MAX_SHARED_ACCESS_POLICY_IDENTIFIERS:I = 0x5

.field public static final MB:I = 0x100000

.field public static final METADATA_ELEMENT:Ljava/lang/String; = "Metadata"

.field public static MIN_LARGE_BLOCK_SIZE:I = 0x400001

.field public static final MIN_PERMITTED_BLOCK_SIZE:I = 0x4000

.field public static MIN_PERMITTED_FILE_WRITE_SIZE:I = 0x200

.field public static final NAME_ELEMENT:Ljava/lang/String; = "Name"

.field public static final NEXT_MARKER_ELEMENT:Ljava/lang/String; = "NextMarker"

.field public static final PAGE_SIZE:I = 0x200

.field public static final PERMISSION:Ljava/lang/String; = "Permission"

.field public static final PREFIX_ELEMENT:Ljava/lang/String; = "Prefix"

.field public static final PREFIX_FOR_STORAGE_HEADER:Ljava/lang/String; = "x-ms-"

.field public static final PROPERTIES:Ljava/lang/String; = "Properties"

.field public static final PUBLIC_ACCESS_ELEMENT:Ljava/lang/String; = "PublicAccess"

.field public static final SERVER_ENCRYPTION_STATUS_ELEMENT:Ljava/lang/String; = "ServerEncrypted"

.field public static final SIGNED_IDENTIFIERS_ELEMENT:Ljava/lang/String; = "SignedIdentifiers"

.field public static final SIGNED_IDENTIFIER_ELEMENT:Ljava/lang/String; = "SignedIdentifier"

.field public static final START:Ljava/lang/String; = "Start"

.field public static final SUBSTREAM_BUFFER_SIZE:I = 0x400000

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final UNLOCKED_VALUE:Ljava/lang/String; = "Unlocked"

.field public static final UNSPECIFIED_VALUE:Ljava/lang/String; = "Unspecified"

.field public static final URL_ELEMENT:Ljava/lang/String; = "Url"

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x6400000

    int-to-long v0, v0

    const-wide/32 v2, 0xc350

    mul-long v0, v0, v2

    .line 1
    sput-wide v0, Lcom/microsoft/azure/storage/Constants;->MAX_BLOB_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
