.class public Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/appcenter/ingestion/models/json/ModelFactory<",
        "Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;",
        ">;"
    }
.end annotation


# static fields
.field public static final sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;->sInstance:Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;
    .locals 1

    .line 2
    new-instance v0, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;

    invoke-direct {v0}, Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Lcom/microsoft/appcenter/ingestion/models/Model;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/appcenter/crashes/ingestion/models/json/ThreadFactory;->create()Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;

    move-result-object v0

    return-object v0
.end method

.method public createList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/microsoft/appcenter/crashes/ingestion/models/Thread;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
