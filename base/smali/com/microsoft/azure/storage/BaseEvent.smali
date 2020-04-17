.class public abstract Lcom/microsoft/azure/storage/BaseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final connectionObject:Ljava/lang/Object;

.field public final opContext:Lcom/microsoft/azure/storage/OperationContext;

.field public final requestResult:Lcom/microsoft/azure/storage/RequestResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/azure/storage/OperationContext;Ljava/lang/Object;Lcom/microsoft/azure/storage/RequestResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/BaseEvent;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    .line 3
    iput-object p2, p0, Lcom/microsoft/azure/storage/BaseEvent;->connectionObject:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/microsoft/azure/storage/BaseEvent;->requestResult:Lcom/microsoft/azure/storage/RequestResult;

    return-void
.end method


# virtual methods
.method public getConnectionObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/BaseEvent;->connectionObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getOpContext()Lcom/microsoft/azure/storage/OperationContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/BaseEvent;->opContext:Lcom/microsoft/azure/storage/OperationContext;

    return-object v0
.end method

.method public getRequestResult()Lcom/microsoft/azure/storage/RequestResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/BaseEvent;->requestResult:Lcom/microsoft/azure/storage/RequestResult;

    return-object v0
.end method
