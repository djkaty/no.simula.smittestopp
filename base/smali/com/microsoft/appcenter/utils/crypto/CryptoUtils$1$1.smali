.class public Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;->getKeyGenerator(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

.field public final synthetic val$keyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;Ljavax/crypto/KeyGenerator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->this$0:Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1;

    iput-object p2, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->val$keyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKey()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->val$keyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    return-void
.end method

.method public init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$1$1;->val$keyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method
