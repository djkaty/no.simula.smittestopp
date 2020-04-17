.class public interface abstract Lcom/microsoft/identity/common/adal/internal/IDeviceCertificate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCertificate()Ljava/security/cert/X509Certificate;
.end method

.method public abstract getRSAPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
.end method

.method public abstract getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
.end method

.method public abstract getThumbPrint()Ljava/lang/String;
.end method

.method public abstract isValidIssuer(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
