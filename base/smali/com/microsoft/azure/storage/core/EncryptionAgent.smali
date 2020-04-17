.class public Lcom/microsoft/azure/storage/core/EncryptionAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public encryptionAlgorithm:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

.field public protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/EncryptionAgent;->protocol:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/microsoft/azure/storage/core/EncryptionAgent;->encryptionAlgorithm:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    return-void
.end method

.method public static deserialize(Le/b/a/a/i;)Lcom/microsoft/azure/storage/core/EncryptionAgent;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsStartObjectJsonToken(Le/b/a/a/i;)V

    .line 2
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/core/EncryptionAgent;

    invoke-direct {v0}, Lcom/microsoft/azure/storage/core/EncryptionAgent;-><init>()V

    .line 4
    :goto_0
    move-object v1, p0

    check-cast v1, Le/b/a/a/o/c;

    .line 5
    iget-object v1, v1, Le/b/a/a/o/c;->y:Le/b/a/a/l;

    .line 6
    sget-object v2, Le/b/a/a/l;->END_OBJECT:Le/b/a/a/l;

    if-eq v1, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Le/b/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    const-string v2, "Protocol"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->setProtocol(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "EncryptionAlgorithm"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0}, Le/b/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;->valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->setEncryptionAlgorithm(Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;)V

    .line 13
    :cond_1
    :goto_1
    invoke-virtual {p0}, Le/b/a/a/i;->f()Le/b/a/a/l;

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/JsonUtilities;->assertIsEndObjectJsonToken(Le/b/a/a/i;)V

    return-object v0
.end method


# virtual methods
.method public getEncryptionAlgorithm()Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/EncryptionAgent;->encryptionAlgorithm:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/core/EncryptionAgent;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Le/b/a/a/f;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getProtocol()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Le/b/a/a/q/c;

    const-string v2, "Protocol"

    .line 2
    invoke-virtual {v1, v2}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/core/EncryptionAgent;->getEncryptionAlgorithm()Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Le/b/a/a/q/c;

    const-string v1, "EncryptionAlgorithm"

    .line 5
    invoke-virtual {p1, v1}, Le/b/a/a/f;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v0}, Le/b/a/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setEncryptionAlgorithm(Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/EncryptionAgent;->encryptionAlgorithm:Lcom/microsoft/azure/storage/core/EncryptionAlgorithm;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/core/EncryptionAgent;->protocol:Ljava/lang/String;

    return-void
.end method
