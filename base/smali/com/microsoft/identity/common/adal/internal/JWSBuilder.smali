.class public Lcom/microsoft/identity/common/adal/internal/JWSBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;,
        Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;
    }
.end annotation


# static fields
.field public static final JWS_ALGORITHM:Ljava/lang/String; = "SHA256withRSA"

.field public static final JWS_HEADER_ALG:Ljava/lang/String; = "RS256"

.field public static final SECONDS_MS:J = 0x3e8L

.field public static final TAG:Ljava/lang/String; = "JWSBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sign(Ljava/security/interfaces/RSAPrivateKey;[B)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "SHA256withRSA"

    .line 1
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "Unsupported RSA algorithm: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no_such_algorithm"

    invoke-direct {p1, v1, v0, p0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 7
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "unsupported_encoding"

    const-string v1, "Unsupported encoding"

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 8
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "RSA signature exception: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Signature exception"

    invoke-direct {p1, v1, v0, p0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 10
    new-instance p1, Lcom/microsoft/identity/common/exception/ClientException;

    const-string v0, "Invalid private RSA key: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Key Chain private key exception"

    invoke-direct {p1, v1, v0, p0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public generateSignedJWT(Ljava/lang/String;Ljava/lang/String;Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 6

    const-string v0, "."

    const-string v1, "UTF-8"

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2
    invoke-static {p2}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 3
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    new-instance v2, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;-><init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;Lcom/microsoft/identity/common/adal/internal/JWSBuilder$1;)V

    .line 5
    invoke-static {v2, p1}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;->access$102(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {v2, p2}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;->access$202(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    invoke-static {v2, p1, p2}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;->access$302(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$Claims;J)J

    .line 8
    new-instance p1, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;

    invoke-direct {p1, p0, v3}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;-><init>(Lcom/microsoft/identity/common/adal/internal/JWSBuilder;Lcom/microsoft/identity/common/adal/internal/JWSBuilder$1;)V

    const-string p2, "RS256"

    .line 9
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->access$502(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "JWT"

    .line 10
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->access$602(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;

    const/4 p2, 0x1

    :try_start_0
    new-array p2, p2, [Ljava/lang/String;

    .line 11
    invoke-static {p1, p2}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->access$702(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;[Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;->access$700(Lcom/microsoft/identity/common/adal/internal/JWSBuilder$JwsHeader;)[Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p5

    const/4 v5, 0x2

    invoke-static {p5, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p5

    invoke-direct {v4, p5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v4, p2, v3

    .line 13
    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p4, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "JWSBuilder:generateSignedJWT"

    const-string p5, "Generate client certificate challenge response JWS Header. "

    .line 15
    invoke-static {p4, p5}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 22
    invoke-static {p3, p2}, Lcom/microsoft/identity/common/adal/internal/JWSBuilder;->sign(Ljava/security/interfaces/RSAPrivateKey;[B)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-static {p1, v0, p2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p3, "Certificate encoding is not generated"

    const-string p4, "Certificate encoding error"

    invoke-direct {p2, p3, p4, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 25
    new-instance p2, Lcom/microsoft/identity/common/exception/ClientException;

    const-string p3, "unsupported_encoding"

    const-string p4, "Unsupported encoding"

    invoke-direct {p2, p3, p4, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pubKey"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "privateKey"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "audience"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "nonce"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
