.class public Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/cache/IStorageHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;,
        Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;
    }
.end annotation


# static fields
.field public static final ADALKS:Ljava/lang/String; = "adalks"

.field public static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final CURRENT_ACTIVE_BROKER:Ljava/lang/String; = "current_active_broker"

.field public static final DATA_KEY_LENGTH:I = 0x10

.field public static final ENCODE_VERSION:Ljava/lang/String; = "E1"

.field public static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field public static final HMAC_KEY_HASH_ALGORITHM:Ljava/lang/String; = "SHA256"

.field public static final HMAC_LENGTH:I = 0x20

.field public static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final KEY_FILE_SIZE:I = 0x400

.field public static final KEY_SIZE:I = 0x100

.field public static final KEY_STORE_CERT_ALIAS:Ljava/lang/String; = "AdalKey"

.field public static final KEY_VERSION_BLOB_LENGTH:I = 0x4

.field public static final TAG:Ljava/lang/String; = "StorageHelper"

.field public static final VERSION_ANDROID_KEY_STORE:Ljava/lang/String; = "A001"

.field public static final VERSION_USER_DEFINED:Ljava/lang/String; = "U001"

.field public static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final sShouldEncryptWithKeyStoreKey:Z = false


# instance fields
.field public mBlobVersion:Ljava/lang/String;

.field public mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;

.field public final mContext:Landroid/content/Context;

.field public mEncryptionHMACKey:Ljavax/crypto/SecretKey;

.field public mEncryptionKey:Ljavax/crypto/SecretKey;

.field public mKeyPair:Ljava/security/KeyPair;

.field public final mRandom:Ljava/security/SecureRandom;

.field public mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;-><init>(Landroid/content/Context;Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 4
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionHMACKey:Ljavax/crypto/SecretKey;

    .line 5
    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    .line 7
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mRandom:Ljava/security/SecureRandom;

    .line 8
    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    return-void
.end method

.method private assertHMac([BII[B)V
    .locals 4

    .line 1
    array-length v0, p4

    sub-int v1, p3, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_0

    sub-int v2, v1, p2

    .line 2
    aget-byte v2, p4, v2

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/security/DigestException;

    invoke-direct {p1}, Ljava/security/DigestException;-><init>()V

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected HMAC length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decryptWithSecretKey([BLjavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getHMacKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 2
    array-length v1, p1

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x20

    .line 3
    array-length v3, p1

    add-int/lit8 v3, v3, -0x20

    add-int/lit8 v4, v1, -0x4

    if-ltz v1, :cond_0

    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    const-string v5, "AES/CBC/PKCS5Padding"

    .line 4
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const-string v6, "HmacSHA256"

    .line 5
    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v6, p1, v0, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 8
    invoke-virtual {v6}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 9
    array-length v6, p1

    invoke-direct {p0, p1, v3, v6, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->assertHMac([BII[B)V

    const/4 v0, 0x2

    .line 10
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p1, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v5, v0, p2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 11
    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x4

    .line 12
    invoke-virtual {v5, p1, v0, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p2

    .line 13
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid byte array input for decryption."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private emitDecryptionFailureTelemetryIfNeeded(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;Ljava/lang/Exception;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_active_broker"

    const-string v2, ""

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Decryption failed with key: "

    .line 6
    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Active broker: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageHelper:emitDecryptionFailureTelemetryIfNeeded"

    .line 8
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    if-eqz p2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    .line 11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "decryption_error_v2"

    .line 12
    invoke-interface {p2, v2, v5, v4, p1}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 13
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private declared-synchronized generateKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, ":generateKeyPairFromAndroidKeyStore"

    const-string v1, "keychain_write_v2_start"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowStart(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AndroidKeyStore"

    .line 2
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v0, "StorageHelper:generateKeyPairFromAndroidKeyStore"

    const-string v1, "Generate KeyPair from AndroidKeyStore"

    .line 4
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x64

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const-string v2, "RSA"

    const-string v3, "AndroidKeyStore"

    .line 8
    invoke-static {v2, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getKeyPairGeneratorSpec(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    const-string v1, ":generateKeyPairFromAndroidKeyStore"

    const-string v2, "keychain_write_v2_end"

    const-string v3, ""

    .line 11
    invoke-direct {p0, v1, v2, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, ":generateKeyPairFromAndroidKeyStore"

    const-string v2, "keychain_write_v2_end"

    .line 13
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 14
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v1, ":generateKeyPairFromAndroidKeyStore"

    const-string v2, "keychain_write_v2_end"

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 16
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private getByteArrayFromEncryptedBlob(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x61

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->validateEncodeVersion(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method

.method private getEncodeVersionLengthPrefix()C
    .locals 1

    const/16 v0, 0x63

    int-to-char v0, v0

    return v0
.end method

.method private getHMacKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "SHA256"

    .line 2
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v0, "AES"

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_0
    return-object p1
.end method

.method private getKeyPairGeneratorSpec(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AdalKey"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "CN=%s, OU=%s"

    .line 3
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v1, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 7
    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    return-object p1
.end method

.method public static getSecretKey([B)Ljavax/crypto/SecretKey;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "rawBytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized getUnwrappedSecretKey()Ljavax/crypto/SecretKey;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "StorageHelper:getUnwrappedSecretKey"

    const-string v1, "Reading SecretKey"

    .line 1
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->readKeyData()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "StorageHelper:getUnwrappedSecretKey"

    const-string v2, "Key data is null"

    .line 3
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object v1

    .line 5
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->readKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    iput-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mKeyPair:Ljava/security/KeyPair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 6
    monitor-exit p0

    return-object v1

    .line 7
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->unwrap([B)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "StorageHelper:getUnwrappedSecretKey"

    const-string v2, "Finished reading SecretKey"

    .line 8
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadKeyStoreEncryptedKey()Ljavax/crypto/SecretKey;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getUnwrappedSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    const-string v1, "StorageHelper:loadKeyStoreEncryptedKey"

    const-string v2, "android_keystore_failed"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mKeyPair:Ljava/security/KeyPair;

    .line 7
    iput-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;

    .line 8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->deleteKeyFile()V

    .line 9
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->resetKeyPairFromAndroidKeyStore()V

    .line 10
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "StorageHelper"

    .line 1
    invoke-static {v0, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "StorageHelper"

    .line 1
    invoke-static {v0, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p4}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    if-eqz p1, :cond_0

    .line 3
    iget-object p4, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p4, p2, v0, p3}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logFlowStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "StorageHelper"

    .line 1
    invoke-static {v0, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p1, v0, p2, v1, v2}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "StorageHelper"

    .line 1
    invoke-static {v0, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " successfully finished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, p2, v1, p3}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private readKeyData()[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "adalks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "StorageHelper:readKeyData"

    const-string v2, "Reading key data from a file"

    .line 3
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 6
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 7
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 10
    throw v0
.end method

.method private declared-synchronized readKeyPair()Ljava/security/KeyPair;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "StorageHelper:readKeyPair"

    const-string v1, "Reading Key entry"

    .line 1
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, ":readKeyPair"

    const-string v1, "keychain_read_v2_start"

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowStart(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AndroidKeyStore"

    .line 3
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "AdalKey"

    .line 5
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    const-string v3, "AdalKey"

    .line 6
    invoke-virtual {v0, v3, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    const-string v0, ":readKeyPair"

    const-string v2, "keychain_read_v2_end"

    const-string v3, "KeyStore KeyPair is loaded."

    .line 8
    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object v1

    :cond_1
    :goto_0
    :try_start_2
    const-string v0, ":readKeyPair"

    const-string v2, "keychain_read_v2_end"

    const-string v3, "KeyStore is empty."

    .line 10
    invoke-direct {p0, v0, v2, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageHelper:readKeyPair"

    const-string v2, "Key entry doesn\'t exist."

    .line 11
    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, ":readKeyPair"

    const-string v2, "keychain_read_v2_end"

    .line 13
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 14
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    const-string v1, ":readKeyPair"

    const-string v2, "keychain_read_v2_end"

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logFlowError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 16
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unwrap([B)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :try_start_0
    const-string v1, "AES"

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/security/KeyStoreException;

    invoke-direct {v0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private validateEncodeVersion(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_1

    add-int/2addr p2, v1

    .line 1
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "E1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "Unsupported encode version received. Encode version supported is: \'%s\'"

    .line 3
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Encode version length: \'%s\' is not valid, it must be greater of equal to 0"

    .line 6
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private wrap(Ljavax/crypto/SecretKey;)[B
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetInstance"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const-string v0, "StorageHelper:wrap"

    const-string v1, "Wrap secret key."

    .line 1
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 2
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    return-object p1
.end method

.method private writeKeyData([B)V
    .locals 4

    const-string v0, "StorageHelper:writeKeyData"

    const-string v1, "Writing key data to a file"

    .line 1
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "adalks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 6
    throw p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ":decrypt"

    const-string v1, "StorageHelper:decrypt"

    const-string v2, "Starting decryption"

    .line 1
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getEncryptionType(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    move-result-object v2

    sget-object v3, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;->UNENCRYPTED:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    if-ne v2, v3, :cond_0

    const-string v0, "This string is not encrypted. Finished decryption."

    .line 4
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 6
    :try_start_0
    sget-object v3, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    iget-object v4, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "KEY_DECRYPTION_KEYSTORE_KEY_NOT_INITIALIZED"

    invoke-interface {v3, v4, v0, v5, v6}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iget-object v3, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    iget-object v4, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "KEY_DECRYPTION_KEYSTORE_KEY_FAILED_TO_LOAD"

    invoke-interface {v3, v4, v0, v2, v5}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getKeysForDecryptionType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getByteArrayFromEncryptedBlob(Ljava/lang/String;)[B

    move-result-object p1

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    .line 13
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->decryptWithSecretKey([BLjavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished decryption with keyType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v3

    goto :goto_2

    :catch_2
    move-exception v3

    .line 16
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->emitDecryptionFailureTelemetryIfNeeded(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    const-string p1, "Tried all decryption keys and decryption still fails. Throw an exception."

    .line 17
    invoke-static {v1, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "decryption_failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteKeyFile()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "adalks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StorageHelper:deleteKeyFile"

    const-string v2, "Delete KeyFile"

    .line 3
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Delete KeyFile failed"

    .line 5
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deserializeSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "StorageHelper:encrypt"

    const-string v1, "Starting encryption"

    .line 2
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKeyForEncryption()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 4
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getHMacKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionHMACKey:Ljavax/crypto/SecretKey;

    const-string v1, "Encrypt version:"

    .line 5
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mBlobVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mBlobVersion:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v3, 0x10

    new-array v4, v3, [B

    .line 8
    iget-object v5, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 9
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v6, "AES/CBC/PKCS5Padding"

    .line 10
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const-string v7, "HmacSHA256"

    .line 11
    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v7

    const/4 v8, 0x1

    .line 12
    iget-object v9, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v6, v8, v9, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 13
    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 14
    iget-object v5, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionHMACKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v7, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 15
    invoke-virtual {v7, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 16
    invoke-virtual {v7, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 17
    invoke-virtual {v7, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 18
    invoke-virtual {v7}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    .line 19
    array-length v6, v1

    array-length v7, p1

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    array-length v7, v5

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 20
    array-length v7, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length v7, v1

    array-length v9, p1

    invoke-static {p1, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    array-length v7, v1

    array-length v9, p1

    add-int/2addr v7, v9

    invoke-static {v4, v8, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    array-length v1, v1

    array-length p1, p1

    add-int/2addr v1, p1

    add-int/2addr v1, v3

    array-length p1, v5

    invoke-static {v5, v8, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v6, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "Finished encryption"

    .line 25
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getEncodeVersionLengthPrefix()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "E1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized generateKeyStoreEncryptedKey()Ljavax/crypto/SecretKey;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->generateSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->saveKeyStoreEncryptedKey(Ljavax/crypto/SecretKey;)V

    const-string v0, ":generateKeyStoreEncryptedKey"

    const-string v1, "key_created_v2"

    const/4 v2, 0x0

    const-string v3, "New key is generated."

    .line 3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->logEvent(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mCachedKeyStoreEncryptedKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateSecretKey()Ljavax/crypto/SecretKey;
    .locals 3

    const-string v0, "AES"

    .line 1
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mRandom:Ljava/security/SecureRandom;

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionType(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;
    .locals 5

    const-string v0, "StorageHelper:getEncryptionType"

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getByteArrayFromEncryptedBlob(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "UTF-8"

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string p1, "U001"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;->USER_DEFINED:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    return-object p1

    :cond_0
    const-string p1, "A001"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;->ANDROID_KEY_STORE:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 7
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;->UNENCRYPTED:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Failed to extract keyVersion."

    .line 8
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    throw p1

    :catch_1
    move-exception p1

    const-string v1, "This data is not an encrypted blob. Treat as unencrypted data."

    .line 10
    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;->UNENCRYPTED:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    return-object p1
.end method

.method public getKeysForDecryptionType(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getEncryptionType(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    move-result-object p1

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;->USER_DEFINED:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    if-ne p1, v1, :cond_2

    .line 4
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getSecretKeyData()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->ADAL_USER_DEFINED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "com.microsoft.windowsintune.companyportal"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "com.azure.authenticator"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    sget-object p2, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;->ANDROID_KEY_STORE:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$EncryptionType;

    if-ne p1, p2, :cond_3

    .line 13
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadKeyStoreEncryptedKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "StorageHelper:loadSecretKey"

    const-string v0, "Unknown KeyType. This code should never be reached."

    .line 3
    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown_error"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getSecretKeyData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getBrokerSecretKeys()Ljava/util/Map;

    move-result-object p1

    const-string v0, "com.microsoft.windowsintune.companyportal"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    sget-object p1, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getBrokerSecretKeys()Ljava/util/Map;

    move-result-object p1

    const-string v0, "com.azure.authenticator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized loadSecretKeyForEncryption()Ljavax/crypto/SecretKey;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionHMACKey:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    .line 4
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getBrokerSecretKeys()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    :try_start_2
    sget-object v1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    const-string v3, ":loadSecretKeyForEncryption"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "KEY_ENCRYPTION_KEYSTORE_KEY_NOT_INITIALIZED"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mTelemetryCallback:Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;

    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mContext:Landroid/content/Context;

    const-string v3, ":loadSecretKeyForEncryption"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v4, "KEY_ENCRYPTION_KEYSTORE_KEY_FAILED_TO_LOAD"

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/microsoft/identity/common/adal/internal/cache/IWpjTelemetryCallback;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "U001"

    .line 9
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->setBlobVersion(Ljava/lang/String;)V

    const-string v0, "com.azure.authenticator"

    .line 10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12
    :cond_2
    :try_start_4
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 13
    :cond_3
    :try_start_5
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->getSecretKeyData()[B

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "U001"

    .line 14
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->setBlobVersion(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->ADAL_USER_DEFINED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_6
    const-string v0, "A001"

    .line 16
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->setBlobVersion(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 17
    :try_start_7
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->loadSecretKey(Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_5

    .line 18
    monitor-exit p0

    return-object v0

    :catch_1
    :cond_5
    :try_start_8
    const-string v0, "StorageHelper:loadSecretKeyForEncryption"

    const-string v1, "Keystore-encrypted key does not exist, try to generate new keys."

    .line 19
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->generateKeyStoreEncryptedKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetKeyPairFromAndroidKeyStore()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 1
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v1, "AdalKey"

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveKeyStoreEncryptedKey(Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mKeyPair:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->generateKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mKeyPair:Ljava/security/KeyPair;

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->wrap(Ljavax/crypto/SecretKey;)[B

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->writeKeyData([B)V

    return-void
.end method

.method public serializeSecretKey(Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBlobVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;->mBlobVersion:Ljava/lang/String;

    return-void
.end method
