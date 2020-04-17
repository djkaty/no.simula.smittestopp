.class public final Lcom/microsoft/azure/storage/AccountInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accountKind:Ljava/lang/String;

.field public skuName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountKind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccountInformation;->accountKind:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/AccountInformation;->skuName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountKind(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccountInformation;->accountKind:Ljava/lang/String;

    return-void
.end method

.method public setSkuName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/AccountInformation;->skuName:Ljava/lang/String;

    return-void
.end method
