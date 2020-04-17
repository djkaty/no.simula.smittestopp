.class public final Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;
    }
.end annotation


# static fields
.field public static final MIN_KEYSIZE_IN_BITS:I = 0x800


# instance fields
.field public final mClientId:Ljava/lang/String;

.field public final mPrivateKey:Ljava/security/PrivateKey;

.field public final mPublicCertificate:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->access$000(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->mClientId:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->access$100(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->mPublicCertificate:Ljava/security/cert/X509Certificate;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;->access$200(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->mPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;-><init>(Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential$CertificateCredentialBuilder;)V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->mPublicCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method
