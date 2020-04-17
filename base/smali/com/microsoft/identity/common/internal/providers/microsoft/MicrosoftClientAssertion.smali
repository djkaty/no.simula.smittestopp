.class public Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftClientAssertion;
.super Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;
.source "SourceFile"


# static fields
.field public static final CLIENT_ASSERTION_TYPE:Ljava/lang/String; = "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"

.field public static final ONE_MINUTE_MILLIS:I = 0xea60

.field public static final THUMBPRINT_ALGORITHM:Ljava/lang/String; = "SHA-1"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftClientAssertion;->createSignedJwt(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;)Le/e/b/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Le/e/a/n;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;->setClientAssertion(Ljava/lang/String;)V

    const-string p1, "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"

    .line 4
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/ClientAssertion;->setClientAssertionType(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "certificate credential is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createSHA1ThumbPrint(Ljava/security/cert/X509Certificate;)Le/e/a/v/c;
    .locals 2

    const-string v0, "SHA-1"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    new-instance p1, Le/e/a/v/c;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Le/e/a/v/b;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p1, v0}, Le/e/a/v/c;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private createSignedJwt(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;)Le/e/b/e;
    .locals 20

    move-object/from16 v0, p1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "aud"

    const/4 v5, 0x0

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v4, "iss"

    .line 5
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v6, "nbf"

    .line 7
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v4, Ljava/util/Date;

    const-wide/32 v6, 0xea60

    add-long/2addr v1, v6

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string v1, "exp"

    .line 9
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Le/e/b/c;

    invoke-direct {v0, v3, v5}, Le/e/b/c;-><init>(Ljava/util/Map;Le/e/b/c$a;)V

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 12
    :try_start_0
    sget-object v7, Le/e/a/l;->C:Le/e/a/l;

    .line 13
    iget-object v1, v7, Le/e/a/a;->x:Ljava/lang/String;

    .line 14
    sget-object v2, Le/e/a/a;->y:Le/e/a/a;

    .line 15
    iget-object v2, v2, Le/e/a/a;->x:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->getPublicCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 19
    new-instance v3, Le/e/a/v/a;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Le/e/a/v/b;->a([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Le/e/a/v/a;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->getPublicCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p0

    :try_start_1
    invoke-direct {v3, v2}, Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftClientAssertion;->createSHA1ThumbPrint(Ljava/security/cert/X509Certificate;)Le/e/a/v/c;

    move-result-object v14

    .line 22
    new-instance v2, Le/e/b/e;

    .line 23
    new-instance v4, Le/e/a/m;

    move-object v6, v4

    move-object/from16 v16, v1

    invoke-direct/range {v6 .. v19}, Le/e/a/m;-><init>(Le/e/a/l;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Le/e/a/v/c;)V

    .line 24
    invoke-direct {v2, v4, v0}, Le/e/b/e;-><init>(Le/e/a/m;Le/e/b/c;)V

    .line 25
    new-instance v0, Le/e/a/s/a;

    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/identity/common/internal/providers/keys/CertificateCredential;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-direct {v0, v1}, Le/e/a/s/a;-><init>(Ljava/security/PrivateKey;)V

    .line 26
    invoke-virtual {v2, v0}, Le/e/a/n;->b(Le/e/a/o;)V

    return-object v2

    :cond_1
    move-object/from16 v3, p0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The JWS algorithm \"alg\" cannot be \"none\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    .line 28
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "exception in createSignedJwt"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
