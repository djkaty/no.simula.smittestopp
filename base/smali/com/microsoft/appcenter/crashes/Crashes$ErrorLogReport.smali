.class public Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/crashes/Crashes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorLogReport"
.end annotation


# instance fields
.field public final log:Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

.field public final report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->log:Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    .line 4
    iput-object p2, p0, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Lcom/microsoft/appcenter/crashes/model/ErrorReport;Lcom/microsoft/appcenter/crashes/Crashes$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;-><init>(Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;Lcom/microsoft/appcenter/crashes/model/ErrorReport;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/model/ErrorReport;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->report:Lcom/microsoft/appcenter/crashes/model/ErrorReport;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;)Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/appcenter/crashes/Crashes$ErrorLogReport;->log:Lcom/microsoft/appcenter/crashes/ingestion/models/ManagedErrorLog;

    return-object p0
.end method
