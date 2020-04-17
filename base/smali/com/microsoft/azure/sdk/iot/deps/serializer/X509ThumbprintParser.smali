.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRIMARY_THUMBPRINT_SERIALIZED_NAME:Ljava/lang/String; = "primaryThumbprint"

.field public static final SECONDARY_THUMBPRINT_SERIALIZED_NAME:Ljava/lang/String; = "secondaryThumbprint"


# instance fields
.field public transient gson:Lcom/google/gson/Gson;

.field public primaryThumbprint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "primaryThumbprint"
    .end annotation
.end field

.field public secondaryThumbprint:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "secondaryThumbprint"
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

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->gson:Lcom/google/gson/Gson;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->getPrimaryThumbprintFinal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->primaryThumbprint:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->getSecondaryThumbprintFinal()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->secondaryThumbprint:Ljava/lang/String;

    return-void

    .line 16
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json could not be parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided Json must not be null or empty"

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

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->gson:Lcom/google/gson/Gson;

    .line 5
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->primaryThumbprint:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->secondaryThumbprint:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrimaryThumbprint()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->primaryThumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryThumbprintFinal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->primaryThumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryThumbprint()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->secondaryThumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondaryThumbprintFinal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->secondaryThumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public setPrimaryThumbprint(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->primaryThumbprint:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Primary thumbprint cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSecondaryThumbprint(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->secondaryThumbprint:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Secondary thumbprint cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/X509ThumbprintParser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
