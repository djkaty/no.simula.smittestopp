.class public Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/i;
.implements Le/c/c/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/i<",
        "Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;",
        ">;",
        "Le/c/c/r<",
        "Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthenticationSchemeTypeAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
    .locals 3

    .line 2
    invoke-virtual {p1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object p2

    const-string v0, "name"

    .line 3
    invoke-virtual {p2, v0}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x13a11

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x765cef81

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Bearer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "PoP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    .line 6
    sget-object p1, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Unrecognized auth scheme. Deserializing as null."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_3
    const-class p2, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-object p1

    .line 8
    :cond_4
    const-class p2, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    return-object p1
.end method

.method public bridge synthetic deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x13a11

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x765cef81

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Bearer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "PoP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    .line 3
    sget-object p1, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Unrecognized auth scheme. Serializing as null."

    invoke-static {p1, p2}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_3
    const-class p2, Lcom/microsoft/identity/common/internal/authscheme/PopAuthenticationSchemeInternal;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Le/c/c/j;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    const-class p2, Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;
    .locals 0

    .line 1
    check-cast p1, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;

    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/request/AuthenticationSchemeTypeAdapter;->serialize(Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;Ljava/lang/reflect/Type;Le/c/c/q;)Le/c/c/j;

    move-result-object p1

    return-object p1
.end method
