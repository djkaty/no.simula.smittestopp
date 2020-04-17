.class public Lcom/microsoft/appcenter/utils/crypto/CryptoConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AES_KEY_SIZE:I = 0x100

.field public static final ALGORITHM_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field public static final ALIAS_SEPARATOR:Ljava/lang/String; = "."

.field public static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final CIPHER_AES:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final CIPHER_RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final ENCRYPT_KEY_LIFETIME_IN_YEARS:I = 0x1

.field public static final KEYSTORE_ALIAS_PREFIX:Ljava/lang/String; = "appcenter"

.field public static final PROVIDER_ANDROID_M:Ljava/lang/String; = "AndroidKeyStoreBCWorkaround"

.field public static final PROVIDER_ANDROID_OLD:Ljava/lang/String; = "AndroidOpenSSL"

.field public static final RSA_KEY_SIZE:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
