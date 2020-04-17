.class public Lcom/microsoft/identity/common/internal/authorities/AuthorityDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/i<",
        "Lcom/microsoft/identity/common/internal/authorities/Authority;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthorityDeserializer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/authorities/Authority;
    .locals 5

    .line 2
    invoke-virtual {p1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object p1

    const-string p2, "type"

    .line 3
    invoke-virtual {p1, p2}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 4
    invoke-virtual {p2}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xfc24

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0xfe13

    if-eq v1, v2, :cond_1

    const v2, 0x1e9430

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ADFS"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "B2C"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "AAD"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    const-string p2, ":deserialize"

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AuthorityDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: Unknown"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/UnknownAuthority;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/Authority;

    return-object p1

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AuthorityDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: ADFS"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/ActiveDirectoryFederationServicesAuthority;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/Authority;

    return-object p1

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AuthorityDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: B2C"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryB2CAuthority;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/Authority;

    return-object p1

    .line 11
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AuthorityDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: AAD"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;

    if-eqz p1, :cond_7

    .line 13
    iget-object p2, p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    if-eqz p2, :cond_7

    .line 14
    iget-object p3, p1, Lcom/microsoft/identity/common/internal/authorities/Authority;->mAuthorityUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setCloudUrl(Ljava/lang/String;)V

    :cond_7
    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/authorities/AuthorityDeserializer;->deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/authorities/Authority;

    move-result-object p1

    return-object p1
.end method
