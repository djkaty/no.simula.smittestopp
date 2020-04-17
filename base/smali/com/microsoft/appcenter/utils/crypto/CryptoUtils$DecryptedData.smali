.class public Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecryptedData"
.end annotation


# instance fields
.field public final mDecryptedData:Ljava/lang/String;

.field public final mNewEncryptedData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mDecryptedData:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mNewEncryptedData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDecryptedData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mDecryptedData:Ljava/lang/String;

    return-object v0
.end method

.method public getNewEncryptedData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$DecryptedData;->mNewEncryptedData:Ljava/lang/String;

    return-object v0
.end method
