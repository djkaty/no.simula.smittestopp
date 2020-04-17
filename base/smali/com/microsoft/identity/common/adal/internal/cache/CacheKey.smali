.class public Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FRT_ENTRY_PREFIX:Ljava/lang/String; = "foci-"

.field public static final serialVersionUID:J = 0x6ff732b18b2d2b84L


# instance fields
.field public mAuthority:Ljava/lang/String;

.field public mClientId:Ljava/lang/String;

.field public mFamilyClientId:Ljava/lang/String;

.field public mIsMultipleResourceRefreshToken:Z

.field public mResource:Ljava/lang/String;

.field public mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_8

    if-nez p2, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "both clientId and familyClientId are null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;

    invoke-direct {v0}, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;-><init>()V

    if-nez p3, :cond_3

    if-eqz p1, :cond_2

    .line 3
    iput-object p1, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mResource:Ljava/lang/String;

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mAuthority:Ljava/lang/String;

    const-string p1, "/"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 7
    iget-object p0, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mAuthority:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mAuthority:Ljava/lang/String;

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mClientId:Ljava/lang/String;

    :cond_5
    if-eqz p5, :cond_6

    const-string p0, "foci-"

    .line 9
    invoke-static {p0, p5}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mFamilyClientId:Ljava/lang/String;

    .line 11
    :cond_6
    iput-boolean p3, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mIsMultipleResourceRefreshToken:Z

    .line 12
    invoke-static {p4}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 13
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mUserId:Ljava/lang/String;

    .line 14
    :cond_7
    invoke-virtual {v0}, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "authority"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createCacheKeyForFRT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->createCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCacheKeyForMRRT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->createCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCacheKeyForRTEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->createCacheKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMultipleResourceRefreshToken()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mIsMultipleResourceRefreshToken:Z

    return v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mResource:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mFamilyClientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "y"

    const-string v3, "n"

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mAuthority:Ljava/lang/String;

    aput-object v9, v4, v8

    iget-object v8, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mResource:Ljava/lang/String;

    aput-object v8, v4, v7

    iget-object v7, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mClientId:Ljava/lang/String;

    aput-object v7, v4, v6

    iget-boolean v6, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mIsMultipleResourceRefreshToken:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    aput-object v2, v4, v5

    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mUserId:Ljava/lang/String;

    aput-object v2, v4, v1

    const-string v1, "%s$%s$%s$%s$%s"

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mAuthority:Ljava/lang/String;

    aput-object v10, v9, v8

    iget-object v8, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mResource:Ljava/lang/String;

    aput-object v8, v9, v7

    iget-object v7, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mClientId:Ljava/lang/String;

    aput-object v7, v9, v6

    iget-boolean v6, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mIsMultipleResourceRefreshToken:Z

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    aput-object v2, v9, v5

    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mUserId:Ljava/lang/String;

    aput-object v2, v9, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/cache/CacheKey;->mFamilyClientId:Ljava/lang/String;

    aput-object v1, v9, v4

    const-string v1, "%s$%s$%s$%s$%s$%s"

    invoke-static {v0, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
