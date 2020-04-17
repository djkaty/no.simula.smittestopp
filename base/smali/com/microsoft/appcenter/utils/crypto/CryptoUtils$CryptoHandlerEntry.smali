.class public Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoHandlerEntry"
.end annotation


# instance fields
.field public mAliasIndex:I

.field public final mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# direct methods
.method public constructor <init>(ILcom/microsoft/appcenter/utils/crypto/CryptoHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mAliasIndex:I

    .line 3
    iput-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$CryptoHandlerEntry;->mCryptoHandler:Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;

    return-void
.end method
