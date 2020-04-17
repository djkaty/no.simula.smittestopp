.class public Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DC_PARAMETER:Ljava/lang/String; = "dc"

.field public static final SLICE_PARAMETER:Ljava/lang/String; = "slice"


# instance fields
.field public mDataCenter:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "dc"
    .end annotation
.end field

.field public mSlice:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "slice"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->mDataCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getSlice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->mSlice:Ljava/lang/String;

    return-object v0
.end method

.method public setDataCenter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->mDataCenter:Ljava/lang/String;

    return-void
.end method

.method public setSlice(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;->mSlice:Ljava/lang/String;

    return-void
.end method
