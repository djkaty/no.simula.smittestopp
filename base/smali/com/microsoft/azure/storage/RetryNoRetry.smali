.class public final Lcom/microsoft/azure/storage/RetryNoRetry;
.super Lcom/microsoft/azure/storage/RetryPolicy;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/storage/RetryPolicyFactory;


# static fields
.field public static instance:Lcom/microsoft/azure/storage/RetryNoRetry;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/RetryNoRetry;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/RetryNoRetry;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/RetryNoRetry;->instance:Lcom/microsoft/azure/storage/RetryNoRetry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/RetryPolicy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/azure/storage/RetryNoRetry;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/RetryNoRetry;->instance:Lcom/microsoft/azure/storage/RetryNoRetry;

    return-object v0
.end method


# virtual methods
.method public createInstance(Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryPolicy;
    .locals 0

    .line 1
    invoke-static {}, Lcom/microsoft/azure/storage/RetryNoRetry;->getInstance()Lcom/microsoft/azure/storage/RetryNoRetry;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(Lcom/microsoft/azure/storage/RetryContext;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/RetryInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
