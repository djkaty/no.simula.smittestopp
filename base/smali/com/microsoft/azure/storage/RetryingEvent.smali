.class public final Lcom/microsoft/azure/storage/RetryingEvent;
.super Lcom/microsoft/azure/storage/BaseEvent;
.source "SourceFile"


# instance fields
.field public final retryContext:Lcom/microsoft/azure/storage/RetryContext;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;Lcom/microsoft/azure/storage/RetryContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/azure/storage/BaseEvent;-><init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;)V

    .line 2
    iput-object p4, p0, Lcom/microsoft/azure/storage/RetryingEvent;->retryContext:Lcom/microsoft/azure/storage/RetryContext;

    return-void
.end method


# virtual methods
.method public getRetryContext()Lcom/microsoft/azure/storage/RetryContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/RetryingEvent;->retryContext:Lcom/microsoft/azure/storage/RetryContext;

    return-object v0
.end method
