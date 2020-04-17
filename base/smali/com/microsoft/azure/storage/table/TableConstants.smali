.class public final Lcom/microsoft/azure/storage/table/TableConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/storage/table/TableConstants$HeaderConstants;,
        Lcom/microsoft/azure/storage/table/TableConstants$ErrorConstants;
    }
.end annotation


# static fields
.field public static final ETAG_PREFIX:Ljava/lang/String; = "\"datetime\'"

.field public static final FILTER:Ljava/lang/String; = "$filter"

.field public static final PARTITION_KEY:Ljava/lang/String; = "PartitionKey"

.field public static final ROW_KEY:Ljava/lang/String; = "RowKey"

.field public static final SELECT:Ljava/lang/String; = "$select"

.field public static final TABLES_SERVICE_TABLES_NAME:Ljava/lang/String; = "Tables"

.field public static final TABLE_NAME:Ljava/lang/String; = "TableName"

.field public static final TABLE_SERVICE_NEXT_MARKER:Ljava/lang/String; = "NextMarker"

.field public static final TABLE_SERVICE_NEXT_PARTITION_KEY:Ljava/lang/String; = "NextPartitionKey"

.field public static final TABLE_SERVICE_NEXT_ROW_KEY:Ljava/lang/String; = "NextRowKey"

.field public static final TABLE_SERVICE_NEXT_TABLE_NAME:Ljava/lang/String; = "NextTableName"

.field public static final TABLE_SERVICE_PREFIX_FOR_TABLE_CONTINUATION:Ljava/lang/String; = "x-ms-continuation-"

.field public static final TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field public static final TOP:Ljava/lang/String; = "$top"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
