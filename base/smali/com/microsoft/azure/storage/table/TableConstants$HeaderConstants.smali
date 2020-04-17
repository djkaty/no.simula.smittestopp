.class public Lcom/microsoft/azure/storage/table/TableConstants$HeaderConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/table/TableConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderConstants"
.end annotation


# static fields
.field public static final CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final DATA_SERVICE_VERSION:Ljava/lang/String; = "DataServiceVersion"

.field public static final DATA_SERVICE_VERSION_VALUE:Ljava/lang/String; = "3.0"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final JSON_ACCEPT_TYPE:Ljava/lang/String; = "application/json;odata=minimalmetadata"

.field public static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field public static final JSON_FULL_METADATA_ACCEPT_TYPE:Ljava/lang/String; = "application/json;odata=fullmetadata"

.field public static final JSON_NO_METADATA_ACCEPT_TYPE:Ljava/lang/String; = "application/json;odata=nometadata"

.field public static final MAX_DATA_SERVICE_VERSION:Ljava/lang/String; = "MaxDataServiceVersion"

.field public static final MAX_DATA_SERVICE_VERSION_VALUE:Ljava/lang/String; = "3.0"

.field public static final MULTIPART_MIXED_FORMAT:Ljava/lang/String; = "multipart/mixed; boundary=%s"

.field public static final PREFER:Ljava/lang/String; = "Prefer"

.field public static final RETURN_CONTENT:Ljava/lang/String; = "return-content"

.field public static final RETURN_NO_CONTENT:Ljava/lang/String; = "return-no-content"

.field public static final X_HTTP_METHOD:Ljava/lang/String; = "X-HTTP-Method"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
