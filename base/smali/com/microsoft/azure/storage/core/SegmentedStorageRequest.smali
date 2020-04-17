.class public Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public token:Lcom/microsoft/azure/storage/ResultContinuation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->token:Lcom/microsoft/azure/storage/ResultContinuation;

    return-void
.end method


# virtual methods
.method public final getToken()Lcom/microsoft/azure/storage/ResultContinuation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->token:Lcom/microsoft/azure/storage/ResultContinuation;

    return-object v0
.end method

.method public final setToken(Lcom/microsoft/azure/storage/ResultContinuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/SegmentedStorageRequest;->token:Lcom/microsoft/azure/storage/ResultContinuation;

    return-void
.end method
