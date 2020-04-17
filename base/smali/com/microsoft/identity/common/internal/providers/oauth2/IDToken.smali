.class public Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BIRTHDATE:Ljava/lang/String; = "birthdate"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EMAIL_VERIFIED:Ljava/lang/String; = "email_verified"

.field public static final FAMILY_NAME:Ljava/lang/String; = "family_name"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final GIVEN_NAME:Ljava/lang/String; = "given_name"

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final MIDDLE_NAME:Ljava/lang/String; = "middle_name"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PHONE_NUMBER_VERIFIED:Ljava/lang/String; = "phone_number_verified"

.field public static final PICTURE:Ljava/lang/String; = "picture"

.field public static final PREFERRED_USERNAME:Ljava/lang/String; = "preferred_username"

.field public static final PROFILE:Ljava/lang/String; = "profile"

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field public static final UPDATED_AT:Ljava/lang/String; = "updated_at"

.field public static final WEBSITE:Ljava/lang/String; = "website"

.field public static final ZONEINFO:Ljava/lang/String; = "zoneinfo"


# instance fields
.field public final mRawIdToken:Ljava/lang/String;

.field public mTokenClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->parseJWT(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty raw idtoken"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseJWT(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0}, Le/c/a/a/b/l/c;->b(Ljava/lang/String;)Le/e/b/b;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Le/e/b/b;->c()Le/e/b/c;

    move-result-object p0

    .line 4
    iget-object p0, p0, Le/e/b/c;->x:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/net/ObjectMapper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getClaims(String)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse IdToken"

    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/exception/ServiceException;

    const-string v1, "Failed to parse JWT"

    const-string v2, "invalid_jwt"

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getRawIDToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->mRawIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenClaims()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/IDToken;->mTokenClaims:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
