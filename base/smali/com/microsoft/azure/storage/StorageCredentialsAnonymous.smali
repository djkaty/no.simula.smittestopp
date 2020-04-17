.class public final Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;
.super Lcom/microsoft/azure/storage/StorageCredentials;
.source "SourceFile"


# static fields
.field public static final ANONYMOUS:Lcom/microsoft/azure/storage/StorageCredentials;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;-><init>()V

    sput-object v0, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;->ANONYMOUS:Lcom/microsoft/azure/storage/StorageCredentials;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/StorageCredentials;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/azure/storage/StorageCredentials;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/StorageCredentialsAnonymous;->ANONYMOUS:Lcom/microsoft/azure/storage/StorageCredentials;

    return-object v0
.end method


# virtual methods
.method public toString(Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public transformUri(Lcom/microsoft/azure/storage/StorageUri;Lcom/microsoft/azure/storage/OperationContext;)Lcom/microsoft/azure/storage/StorageUri;
    .locals 0

    return-object p1
.end method

.method public transformUri(Ljava/net/URI;Lcom/microsoft/azure/storage/OperationContext;)Ljava/net/URI;
    .locals 0

    return-object p1
.end method
