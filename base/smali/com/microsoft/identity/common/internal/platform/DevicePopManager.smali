.class public Lcom/microsoft/identity/common/internal/platform/DevicePopManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/platform/IDevicePopManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/platform/DevicePopManager$KeyPairGeneratorAlgorithms;,
        Lcom/microsoft/identity/common/internal/platform/DevicePopManager$SignedHttpRequestJwtClaims;,
        Lcom/microsoft/identity/common/internal/platform/DevicePopManager$CertificateProperties;
    }
.end annotation


# static fields
.field public static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final KEYSTORE_ENTRY_ALIAS:Ljava/lang/String; = "microsoft-device-pop"

.field public static final RSA_KEY_SIZE:I = 0x800

.field public static final TAG:Ljava/lang/String; = "DevicePopManager"

.field public static final sThreadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AndroidKeyStore"

    .line 2
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/platform/DevicePopManager;)Ljava/security/KeyStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->mKeyStore:Ljava/security/KeyStore;

    return-object p0
.end method

.method public static synthetic access$100(Ljava/security/KeyStore$Entry;)Ljava/security/KeyPair;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getKeyPairForEntry(Ljava/security/KeyStore$Entry;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Ljava/security/KeyPair;)Le/e/a/u/k;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Le/e/a/u/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Le/e/a/u/k;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getReqCnfForRsaKey(Le/e/a/u/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static applyHardwareIsolation(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static base64UrlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0xb

    .line 2
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private generateNewKeyPair(Landroid/content/Context;Z)Ljava/security/KeyPair;
    .locals 1

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getInitializedRsaKeyPairGenerator(Landroid/content/Context;IZ)Ljava/security/KeyPairGenerator;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    return-object p1
.end method

.method private generateNewRsaKeyPair(Landroid/content/Context;I)Ljava/security/KeyPair;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->generateNewKeyPair(Landroid/content/Context;Z)Ljava/security/KeyPair;

    move-result-object v2
    :try_end_0
    .catch Landroid/security/keystore/StrongBoxUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2
    sget-object v3, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    const-string v4, "StrongBox unsupported - skipping hardware flags."

    invoke-static {v3, v4, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->generateNewKeyPair(Landroid/content/Context;Z)Ljava/security/KeyPair;

    move-result-object v2

    .line 4
    :goto_1
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v3}, Le/c/a/a/b/l/c;->a(Ljava/security/PrivateKey;)I

    move-result v3

    if-ge v3, p2, :cond_1

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_2
    invoke-direct {p0, v2}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->logSecureHardwareState(Ljava/security/KeyPair;)V

    return-object v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->clearAsymmetricKey()Z

    .line 7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Failed to generate valid KeyPair. Attempted 4 times."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDevicePopJwkMinifiedJson()Li/a/b/d;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->mKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    const-string v3, "microsoft-device-pop"

    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getKeyPairForEntry(Ljava/security/KeyStore$Entry;)Ljava/security/KeyPair;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Le/e/a/u/k;

    move-result-object v1

    .line 4
    new-instance v23, Le/e/a/u/k;

    .line 5
    iget-object v4, v1, Le/e/a/u/k;->I:Le/e/a/v/c;

    .line 6
    iget-object v5, v1, Le/e/a/u/k;->J:Le/e/a/v/c;

    .line 7
    iget-object v14, v1, Le/e/a/u/d;->y:Le/e/a/u/g;

    .line 8
    iget-object v15, v1, Le/e/a/u/d;->z:Ljava/util/Set;

    .line 9
    iget-object v3, v1, Le/e/a/u/d;->A:Le/e/a/a;

    .line 10
    iget-object v11, v1, Le/e/a/u/d;->B:Ljava/lang/String;

    .line 11
    iget-object v12, v1, Le/e/a/u/d;->C:Ljava/net/URI;

    .line 12
    iget-object v13, v1, Le/e/a/u/d;->D:Le/e/a/v/c;

    .line 13
    iget-object v10, v1, Le/e/a/u/d;->E:Le/e/a/v/c;

    .line 14
    iget-object v6, v1, Le/e/a/u/d;->F:Ljava/util/List;

    if-nez v6, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    move-object/from16 v21, v2

    .line 16
    iget-object v1, v1, Le/e/a/u/d;->H:Ljava/security/KeyStore;

    move-object/from16 v22, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object v2, v10

    move-object v10, v1

    move-object/from16 v19, v13

    move-object v13, v1

    move-object/from16 v18, v12

    move-object v12, v1

    move-object/from16 v17, v11

    move-object v11, v1

    move-object v1, v3

    move-object/from16 v3, v23

    move-object/from16 v16, v1

    move-object/from16 v20, v2

    .line 17
    invoke-direct/range {v3 .. v22}, Le/e/a/u/k;-><init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/PrivateKey;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V

    .line 18
    invoke-virtual/range {v23 .. v23}, Le/e/a/u/k;->f()Li/a/b/d;

    move-result-object v1

    .line 19
    new-instance v2, Li/a/b/d;

    invoke-direct {v2}, Li/a/b/d;-><init>()V

    const-string v3, "jwk"

    .line 20
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private getInitializedRsaKeyPairGenerator(Landroid/content/Context;IZ)Ljava/security/KeyPairGenerator;
    .locals 2

    const-string v0, "RSA"

    const-string v1, "AndroidKeyStore"

    .line 1
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p2, p3}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->initialize(Landroid/content/Context;Ljava/security/KeyPairGenerator;IZ)V

    return-object v0
.end method

.method public static getKeyPairForEntry(Ljava/security/KeyStore$Entry;)Ljava/security/KeyPair;
    .locals 2

    .line 1
    check-cast p0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public static getNow(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getReqCnfForRsaKey(Le/e/a/u/k;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getThumbprintForRsaKey(Le/e/a/u/k;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "kid"

    .line 3
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->base64UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRsaKeyForKeyPair(Ljava/security/KeyPair;)Le/e/a/u/k;
    .locals 22

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 2
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v3

    .line 3
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 6
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 7
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 9
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v1

    .line 10
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v5

    .line 11
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v6

    .line 12
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v7

    .line 13
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v8

    .line 14
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v0

    move-object v10, v2

    goto :goto_2

    .line 15
    :cond_0
    instance-of v1, v0, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;

    if-eqz v1, :cond_3

    .line 16
    check-cast v0, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;

    .line 17
    invoke-interface {v0}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v1

    .line 18
    invoke-interface {v0}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v5

    .line 19
    invoke-interface {v0}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v6}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v6

    .line 20
    invoke-interface {v0}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v7}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v7

    .line 21
    invoke-interface {v0}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v8

    .line 22
    invoke-interface {v0}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v9}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v9

    .line 23
    invoke-interface {v0}, Ljava/security/interfaces/RSAMultiPrimePrivateCrtKey;->getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;

    move-result-object v0

    .line 24
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    array-length v11, v0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_2

    aget-object v13, v0, v12

    .line 26
    new-instance v14, Le/e/a/u/k$a;

    invoke-direct {v14, v13}, Le/e/a/u/k$a;-><init>(Ljava/security/spec/RSAOtherPrimeInfo;)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object v0, v9

    goto :goto_2

    .line 27
    :cond_3
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Le/e/a/v/c;->a(Ljava/math/BigInteger;)Le/e/a/v/c;

    move-result-object v1

    move-object v0, v2

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    :goto_2
    move-object v12, v2

    move-object v9, v8

    move-object v11, v10

    move-object v10, v0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v1

    goto :goto_3

    .line 28
    :cond_4
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v5, "RSA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v12, v0

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_3
    const/4 v13, 0x0

    .line 29
    :try_start_0
    new-instance v0, Le/e/a/u/k;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Le/e/a/u/k;-><init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/PrivateKey;Le/e/a/u/g;Ljava/util/Set;Le/e/a/a;Ljava/lang/String;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 31
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The private key algorithm must be RSA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getThumbprintForRsaKey(Le/e/a/u/k;)Ljava/lang/String;
    .locals 3

    const-string v0, "SHA-256"

    .line 1
    invoke-virtual {p0}, Le/e/a/u/d;->d()Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 2
    invoke-static {p0}, Li/a/b/d;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object v1, Le/e/a/v/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Le/e/a/v/c;->a([B)Le/e/a/v/c;

    move-result-object p0

    .line 6
    iget-object p0, p0, Le/e/a/v/a;->x:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Le/e/a/f;

    const-string v1, "Couldn\'t compute JWK thumbprint: Unsupported hash algorithm: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Le/e/a/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/security/KeyPairGenerator;IZ)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->initializePre23(Landroid/content/Context;Ljava/security/KeyPairGenerator;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->initialize23(Ljava/security/KeyPairGenerator;IZ)V

    :goto_0
    return-void
.end method

.method public static initialize23(Ljava/security/KeyPairGenerator;IZ)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v1, "microsoft-device-pop"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string v0, "PKCS1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string v0, "SHA-256"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 6
    sget-object p2, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    const-string v0, "Attempting to apply StrongBox isolation."

    invoke-static {p2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->applyHardwareIsolation(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public static initializePre23(Landroid/content/Context;Ljava/security/KeyPairGenerator;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getNow(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x63

    .line 3
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v2, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "microsoft-device-pop"

    .line 6
    invoke-virtual {v2, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    sget-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$CertificateProperties;->SERIAL_NUMBER:Ljava/math/BigInteger;

    .line 9
    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=device-pop"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    .line 11
    new-instance v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v0, p2, v1}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec$Builder;

    .line 12
    invoke-virtual {p0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method private logSecureHardwareState(Ljava/security/KeyPair;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidKeyStore"

    .line 4
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 5
    const-class v1, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p1

    check-cast p1, Landroid/security/keystore/KeyInfo;

    .line 6
    invoke-virtual {p1}, Landroid/security/keystore/KeyInfo;->isInsideSecureHardware()Z

    move-result p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretKey is secure hardware backed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to query secure hardware state."

    goto :goto_0

    :cond_0
    const-string p1, "Cannot query secure hardware state (API unavailable <23)"

    .line 8
    :goto_0
    sget-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asymmetricKeyExists()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->mKeyStore:Ljava/security/KeyStore;

    const-string v1, "microsoft-device-pop"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    const-string v2, "Error while querying KeyStore"

    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public asymmetricKeyExists(Ljava/lang/String;)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->asymmetricKeyExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getAsymmetricKeyThumbprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    const-string v1, "Error while comparing thumbprints."

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearAsymmetricKey()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->mKeyStore:Ljava/security/KeyStore;

    const-string v1, "microsoft-device-pop"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    const-string v2, "Error while clearing KeyStore"

    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public generateAsymmetricKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x800

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->generateNewRsaKeyPair(Landroid/content/Context;I)Ljava/security/KeyPair;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Le/e/a/u/k;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getThumbprintForRsaKey(Le/e/a/u/k;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/e/a/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "failed_to_compute_thumbprint_with_sha256"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "keystore_initialization_failed"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v0, "android_keystore_unavailable"

    goto :goto_0

    :catch_3
    move-exception p1

    const-string v0, "no_such_algorithm"

    goto :goto_0

    :catch_4
    move-exception p1

    const-string v0, "keystore_produced_invalid_cert"

    .line 5
    :goto_0
    new-instance v1, Lcom/microsoft/identity/common/exception/ClientException;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    throw v1
.end method

.method public generateAsymmetricKey(Landroid/content/Context;Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/exception/ClientException;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$1;-><init>(Lcom/microsoft/identity/common/internal/platform/DevicePopManager;Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getAsymmetricKeyThumbprint()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->mKeyStore:Ljava/security/KeyStore;

    const-string v1, "microsoft-device-pop"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getKeyPairForEntry(Ljava/security/KeyStore$Entry;)Ljava/security/KeyPair;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getRsaKeyForKeyPair(Ljava/security/KeyPair;)Le/e/a/u/k;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getThumbprintForRsaKey(Le/e/a/u/k;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/e/a/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "failed_to_compute_thumbprint_with_sha256"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "protection_params_invalid"

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "no_such_algorithm"

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "keystore_not_initialized"

    .line 5
    :goto_0
    new-instance v2, Lcom/microsoft/identity/common/exception/ClientException;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getRequestConfirmation()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v2, v1, [Ljava/lang/String;

    new-array v1, v1, [Lcom/microsoft/identity/common/exception/ClientException;

    .line 2
    new-instance v3, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$2;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$2;-><init>(Lcom/microsoft/identity/common/internal/platform/DevicePopManager;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;[Lcom/microsoft/identity/common/exception/ClientException;)V

    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getRequestConfirmation(Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v0, 0x0

    .line 4
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 5
    aget-object v0, v2, v0

    return-object v0

    .line 6
    :cond_0
    aget-object v0, v1, v0

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while waiting on callback."

    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-instance v1, Lcom/microsoft/identity/common/exception/ClientException;

    .line 9
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "operation_interrupted"

    invoke-direct {v1, v3, v2, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRequestConfirmation(Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/exception/ClientException;",
            ">;)V"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager$3;-><init>(Lcom/microsoft/identity/common/internal/platform/DevicePopManager;Lcom/microsoft/identity/common/internal/controllers/TaskCompletedCallbackWithError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public mintSignedAccessToken(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "at"

    move-object/from16 v2, p3

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ts"

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "m"

    move-object/from16 v2, p1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u"

    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p"

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cnf"

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->getDevicePopJwkMinifiedJson()Li/a/b/d;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nonce"

    move-object/from16 v2, p4

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    new-instance v1, Le/e/b/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/e/b/c;-><init>(Ljava/util/Map;Le/e/b/c$a;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Le/e/a/f; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v3, p0

    .line 15
    :try_start_1
    iget-object v0, v3, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->mKeyStore:Ljava/security/KeyStore;

    const-string v4, "microsoft-device-pop"

    invoke-virtual {v0, v4, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    .line 16
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 17
    new-instance v2, Le/e/a/s/a;

    invoke-direct {v2, v0}, Le/e/a/s/a;-><init>(Ljava/security/PrivateKey;)V

    .line 18
    new-instance v0, Le/e/b/e;

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-object v5, Le/e/a/l;->C:Le/e/a/l;

    .line 19
    iget-object v4, v5, Le/e/a/a;->x:Ljava/lang/String;

    .line 20
    sget-object v15, Le/e/a/a;->y:Le/e/a/a;

    .line 21
    iget-object v15, v15, Le/e/a/a;->x:Ljava/lang/String;

    .line 22
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 23
    new-instance v15, Le/e/a/m;

    const/16 v18, 0x0

    move-object v4, v15

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    invoke-direct/range {v4 .. v17}, Le/e/a/m;-><init>(Le/e/a/l;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Le/e/a/u/d;Ljava/net/URI;Le/e/a/v/c;Le/e/a/v/c;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Le/e/a/v/c;)V

    move-object/from16 v4, v19

    .line 24
    invoke-direct {v0, v4, v1}, Le/e/b/e;-><init>(Le/e/a/m;Le/e/b/c;)V

    .line 25
    invoke-virtual {v0, v2}, Le/e/a/n;->b(Le/e/a/o;)V

    .line 26
    invoke-virtual {v0}, Le/e/a/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The JWS algorithm \"alg\" cannot be \"none\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Le/e/a/f; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    :goto_0
    const-string v1, "protection_params_invalid"

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v3, p0

    :goto_1
    const-string v1, "failed_to_sign_jwt"

    goto :goto_4

    :catch_6
    move-exception v0

    move-object/from16 v3, p0

    :goto_2
    const-string v1, "keystore_not_initialized"

    goto :goto_4

    :catch_7
    move-exception v0

    move-object/from16 v3, p0

    :goto_3
    const-string v1, "no_such_algorithm"

    .line 28
    :goto_4
    new-instance v2, Lcom/microsoft/identity/common/exception/ClientException;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4, v0}, Lcom/microsoft/identity/common/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    sget-object v0, Lcom/microsoft/identity/common/internal/platform/DevicePopManager;->TAG:Ljava/lang/String;

    .line 31
    invoke-virtual {v2}, Lcom/microsoft/identity/common/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    throw v2
.end method
