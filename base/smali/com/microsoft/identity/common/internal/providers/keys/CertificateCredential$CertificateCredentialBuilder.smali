.class public Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateCredentialBuilder"
.end annotation


# instance fields
.field public mCertificate:Ljava/security/cert/X509Certificate;

.field public mClientCertificateMetdata:Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;

.field public mClientId:Ljava/lang/String;

.field public mKeyStoreConfiguration:Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;

.field public mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)Ljava/security/cert/X509Certificate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mCertificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)Ljava/security/PrivateKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mPrivateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method private getCertificateInfoFromStore(Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;->getKeyStoreProvider()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 3
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->getPassword()[C

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->getPassword()[C

    move-result-object v1

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 9
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mPrivateKey:Ljava/security/PrivateKey;

    .line 10
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mCertificate:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method private validateCertificateCredential(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Client ID, Certificate and PrivateKey OR KeyStoreConfiguration and Certificate Metadata are required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mClientId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mCertificate:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mPrivateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;-><init>(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$1;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mClientCertificateMetdata:Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mKeyStoreConfiguration:Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;

    if-eqz v2, :cond_1

    .line 5
    invoke-direct {p0, v2, v0}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->getCertificateInfoFromStore(Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;)V

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;

    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;-><init>(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$1;)V

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->validateCertificateCredential(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;)V

    return-object v1
.end method

.method public certificate(Ljava/security/cert/X509Certificate;)Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mCertificate:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public clientCertificateMetadata(Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;)Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mClientCertificateMetdata:Lcom/microsoft/identity/common/internal/providers/keys/ClientCertificateMetadata;

    return-object p0
.end method

.method public keyStoreConfiguration(Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;)Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mKeyStoreConfiguration:Lcom/microsoft/identity/common/internal/providers/keys/KeyStoreConfiguration;

    return-object p0
.end method

.method public privateKey(Ljava/security/PrivateKey;)Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->mPrivateKey:Ljava/security/PrivateKey;

    return-object p0
.end method
