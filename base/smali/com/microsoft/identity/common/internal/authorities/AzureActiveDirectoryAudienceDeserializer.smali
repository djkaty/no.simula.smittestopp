.class public Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/i<",
        "Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AzureActiveDirectoryAudienceDeserializer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;
    .locals 5

    .line 2
    invoke-virtual {p1}, Le/c/c/j;->c()Le/c/c/m;

    move-result-object p1

    const-string p2, "type"

    .line 3
    invoke-virtual {p1, p2}, Le/c/c/m;->a(Ljava/lang/String;)Le/c/c/j;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 4
    invoke-virtual {p2}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AzureADandPersonalMicrosoftAccount"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "AzureADMyOrg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string v1, "AzureADMultipleOrgs"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "PersonalMicrosoftAccount"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    const-string p2, ":deserialize"

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: Unknown"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/UnknownAudience;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    return-object p1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: PersonalMicrosoftAccount"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/AnyPersonalAccount;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    return-object p1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: AzureADandPersonalMicrosoftAccount"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/AllAccounts;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    return-object p1

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: AzureADMultipleOrgs"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/AnyOrganizationalAccount;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    return-object p1

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;->TAG:Ljava/lang/String;

    const-string v2, "Type: AzureADMyOrg"

    invoke-static {v0, v1, p2, v2}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-class p2, Lcom/microsoft/identity/common/internal/authorities/AccountsInOneOrganization;

    check-cast p3, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;->a(Le/c/c/j;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6e6c4821 -> :sswitch_3
        0x7716c431 -> :sswitch_2
        0x77ece1e6 -> :sswitch_1
        0x7c104ea4 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudienceDeserializer;->deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;

    move-result-object p1

    return-object p1
.end method
