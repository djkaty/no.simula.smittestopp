.class public Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mKeyStorePassword:[C

.field public final mKeyStoreProvider:Ljava/lang/String;

.field public final mKeyStoreType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->mKeyStoreType:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->mKeyStoreProvider:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->mKeyStorePassword:[C

    return-void
.end method


# virtual methods
.method public getKeyStorePassword()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->mKeyStorePassword:[C

    return-object v0
.end method

.method public getKeyStoreProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->mKeyStoreProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->mKeyStoreType:Ljava/lang/String;

    return-object v0
.end method
