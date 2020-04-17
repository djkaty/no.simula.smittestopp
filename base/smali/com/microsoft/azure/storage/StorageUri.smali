.class public Lcom/microsoft/azure/storage/StorageUri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public primaryUri:Ljava/net/URI;

.field public secondaryUri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/microsoft/azure/storage/StorageUri;-><init>(Ljava/net/URI;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/URI;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Primary and secondary location URIs in a StorageUri must not both be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 4
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Primary and secondary location URIs in a StorageUri must point to the same resource."

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v0

    .line 8
    invoke-static {p2}, Lcom/microsoft/azure/storage/core/Utility;->determinePathStyleFromUri(Ljava/net/URI;)Z

    move-result v2

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    .line 9
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 10
    :cond_5
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    :goto_2
    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v3, 0x2

    .line 12
    :goto_3
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 14
    array-length v5, v2

    const-string v6, ""

    if-ne v5, v0, :cond_a

    .line 15
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    goto :goto_4

    :cond_a
    move-object v0, v6

    .line 16
    :goto_4
    array-length v2, v4

    if-ne v2, v3, :cond_b

    .line 17
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-object v6, v4, v2

    .line 18
    :cond_b
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    .line 19
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_d
    :goto_5
    invoke-direct {p0, p1}, Lcom/microsoft/azure/storage/StorageUri;->setPrimaryUri(Ljava/net/URI;)V

    .line 21
    invoke-direct {p0, p2}, Lcom/microsoft/azure/storage/StorageUri;->setSecondaryUri(Ljava/net/URI;)V

    return-void
.end method

.method public static AreUrisEqual(Ljava/net/URI;Ljava/net/URI;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p0, p1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static AssertAbsoluteUri(Ljava/net/URI;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Address %s is a relative address. Only absolute addresses are permitted."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private setPrimaryUri(Ljava/net/URI;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageUri;->AssertAbsoluteUri(Ljava/net/URI;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    return-void
.end method

.method private setSecondaryUri(Ljava/net/URI;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/StorageUri;->AssertAbsoluteUri(Ljava/net/URI;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public equals(Lcom/microsoft/azure/storage/StorageUri;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    iget-object v1, p1, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    invoke-static {v0, v1}, Lcom/microsoft/azure/storage/StorageUri;->AreUrisEqual(Ljava/net/URI;Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    iget-object p1, p1, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    .line 3
    invoke-static {v0, p1}, Lcom/microsoft/azure/storage/StorageUri;->AreUrisEqual(Ljava/net/URI;Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/azure/storage/StorageUri;

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/StorageUri;->equals(Lcom/microsoft/azure/storage/StorageUri;)Z

    move-result p1

    return p1
.end method

.method public getPrimaryUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    return-object v0
.end method

.method public getUri(Lcom/microsoft/azure/storage/StorageLocation;)Ljava/net/URI;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "location"

    aput-object v5, v3, v4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "The argument is out of range. Argument name: %s, Value passed: %s."

    .line 5
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v1

    :cond_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/core/Utility;->LOCALE_US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Primary = \'%s\'; Secondary = \'%s\'"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateLocationMode(Lcom/microsoft/azure/storage/LocationMode;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->secondaryUri:Ljava/net/URI;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/microsoft/azure/storage/StorageUri;->primaryUri:Ljava/net/URI;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
