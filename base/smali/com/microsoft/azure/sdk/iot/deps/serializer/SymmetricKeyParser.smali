.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRIMARY_KEY_SERIALIZED_NAME:Ljava/lang/String; = "primaryKey"

.field public static final SECONDARY_KEY_SERIALIZED_NAME:Ljava/lang/String; = "secondaryKey"


# instance fields
.field public transient gson:Lcom/google/gson/Gson;

.field public primaryKey:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "primaryKey"
    .end annotation
.end field

.field public secondaryKey:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "secondaryKey"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->gson:Lcom/google/gson/Gson;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->getPrimaryKeyFinal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->getPrimaryKeyFinal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->getSecondaryKeyFinal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->getSecondaryKeyFinal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->primaryKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->primaryKey:Ljava/lang/String;

    .line 19
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->secondaryKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->secondaryKey:Ljava/lang/String;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Both the primary key and secondary key must be present and have a value in the provided json."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json could not be parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->gson:Lcom/google/gson/Gson;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->primaryKey:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->secondaryKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrimaryKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->primaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryKeyFinal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->primaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->secondaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondaryKeyFinal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->secondaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public setPrimaryKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->primaryKey:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "primaryKey cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSecondaryKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->secondaryKey:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "secondaryKey cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/SymmetricKeyParser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
