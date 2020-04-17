.class public Lcom/microsoft/azure/storage/Constants$AnalyticsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/storage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnalyticsConstants"
.end annotation


# static fields
.field public static final ALLOWED_HEADERS_ELEMENT:Ljava/lang/String; = "AllowedHeaders"

.field public static final ALLOWED_METHODS_ELEMENT:Ljava/lang/String; = "AllowedMethods"

.field public static final ALLOWED_ORIGINS_ELEMENT:Ljava/lang/String; = "AllowedOrigins"

.field public static final CORS_ELEMENT:Ljava/lang/String; = "Cors"

.field public static final CORS_RULE_ELEMENT:Ljava/lang/String; = "CorsRule"

.field public static final DAYS_ELEMENT:Ljava/lang/String; = "Days"

.field public static final DEFAULT_SERVICE_VERSION:Ljava/lang/String; = "DefaultServiceVersion"

.field public static final DELETE_ELEMENT:Ljava/lang/String; = "Delete"

.field public static final DELETE_RETENTION_POLICY_ELEMENT:Ljava/lang/String; = "DeleteRetentionPolicy"

.field public static final ENABLED_ELEMENT:Ljava/lang/String; = "Enabled"

.field public static final EXPOSED_HEADERS_ELEMENT:Ljava/lang/String; = "ExposedHeaders"

.field public static final HOUR_METRICS_ELEMENT:Ljava/lang/String; = "HourMetrics"

.field public static final INCLUDE_APIS_ELEMENT:Ljava/lang/String; = "IncludeAPIs"

.field public static final LOGGING_ELEMENT:Ljava/lang/String; = "Logging"

.field public static final LOGS_CONTAINER:Ljava/lang/String; = "$logs"

.field public static final MAX_AGE_IN_SECONDS_ELEMENT:Ljava/lang/String; = "MaxAgeInSeconds"

.field public static final METRICS_CAPACITY_BLOB:Ljava/lang/String; = "$MetricsCapacityBlob"

.field public static final METRICS_HOUR_PRIMARY_TRANSACTIONS_BLOB:Ljava/lang/String; = "$MetricsHourPrimaryTransactionsBlob"

.field public static final METRICS_HOUR_PRIMARY_TRANSACTIONS_FILE:Ljava/lang/String; = "$MetricsHourPrimaryTransactionsFile"

.field public static final METRICS_HOUR_PRIMARY_TRANSACTIONS_QUEUE:Ljava/lang/String; = "$MetricsHourPrimaryTransactionsQueue"

.field public static final METRICS_HOUR_PRIMARY_TRANSACTIONS_TABLE:Ljava/lang/String; = "$MetricsHourPrimaryTransactionsTable"

.field public static final METRICS_HOUR_SECONDARY_TRANSACTIONS_BLOB:Ljava/lang/String; = "$MetricsHourSecondaryTransactionsBlob"

.field public static final METRICS_HOUR_SECONDARY_TRANSACTIONS_FILE:Ljava/lang/String; = "$MetricsHourSecondaryTransactionsFile"

.field public static final METRICS_HOUR_SECONDARY_TRANSACTIONS_QUEUE:Ljava/lang/String; = "$MetricsHourSecondaryTransactionsQueue"

.field public static final METRICS_HOUR_SECONDARY_TRANSACTIONS_TABLE:Ljava/lang/String; = "$MetricsHourSecondaryTransactionsTable"

.field public static final METRICS_MINUTE_PRIMARY_TRANSACTIONS_BLOB:Ljava/lang/String; = "$MetricsMinutePrimaryTransactionsBlob"

.field public static final METRICS_MINUTE_PRIMARY_TRANSACTIONS_FILE:Ljava/lang/String; = "$MetricsMinutePrimaryTransactionsFile"

.field public static final METRICS_MINUTE_PRIMARY_TRANSACTIONS_QUEUE:Ljava/lang/String; = "$MetricsMinutePrimaryTransactionsQueue"

.field public static final METRICS_MINUTE_PRIMARY_TRANSACTIONS_TABLE:Ljava/lang/String; = "$MetricsMinutePrimaryTransactionsTable"

.field public static final METRICS_MINUTE_SECONDARY_TRANSACTIONS_BLOB:Ljava/lang/String; = "$MetricsMinuteSecondaryTransactionsBlob"

.field public static final METRICS_MINUTE_SECONDARY_TRANSACTIONS_FILE:Ljava/lang/String; = "$MetricsMinuteSecondaryTransactionsFile"

.field public static final METRICS_MINUTE_SECONDARY_TRANSACTIONS_QUEUE:Ljava/lang/String; = "$MetricsMinuteSecondaryTransactionsQueue"

.field public static final METRICS_MINUTE_SECONDARY_TRANSACTIONS_TABLE:Ljava/lang/String; = "$MetricsMinuteSecondaryTransactionsTable"

.field public static final MINUTE_METRICS_ELEMENT:Ljava/lang/String; = "MinuteMetrics"

.field public static final READ_ELEMENT:Ljava/lang/String; = "Read"

.field public static final RETENTION_POLICY_ELEMENT:Ljava/lang/String; = "RetentionPolicy"

.field public static final STATIC_WEBSITE_ELEMENT:Ljava/lang/String; = "StaticWebsite"

.field public static final STATIC_WEBSITE_ERROR_DOCUMENT_404_PATH_ELEMENT:Ljava/lang/String; = "ErrorDocument404Path"

.field public static final STATIC_WEBSITE_INDEX_DOCUMENT_ELEMENT:Ljava/lang/String; = "IndexDocument"

.field public static final STORAGE_SERVICE_PROPERTIES_ELEMENT:Ljava/lang/String; = "StorageServiceProperties"

.field public static final STORAGE_SERVICE_STATS:Ljava/lang/String; = "StorageServiceStats"

.field public static final VERSION_ELEMENT:Ljava/lang/String; = "Version"

.field public static final WRITE_ELEMENT:Ljava/lang/String; = "Write"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
