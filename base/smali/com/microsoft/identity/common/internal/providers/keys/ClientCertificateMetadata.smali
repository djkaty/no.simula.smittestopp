.class public Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAlias:Ljava/lang/String;

.field public mPassword:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->mAlias:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->mPassword:[C

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->mPassword:[C

    return-object v0
.end method
