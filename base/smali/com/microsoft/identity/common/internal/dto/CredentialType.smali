.class public final enum Lcom/microsoft/identity/common/internal/dto/CredentialType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/dto/CredentialType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum Certificate:Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum Cookie:Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final ID_TOKEN_TYPES:[Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum Password:Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

.field public static final enum V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v1, 0x0

    const-string v2, "RefreshToken"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v2, 0x1

    const-string v3, "AccessToken"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v3, 0x2

    const-string v4, "IdToken"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v4, 0x3

    const-string v5, "V1IdToken"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 5
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v5, 0x4

    const-string v6, "Password"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->Password:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 6
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v6, 0x5

    const-string v7, "Cookie"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->Cookie:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 7
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v7, 0x6

    const-string v8, "Certificate"

    invoke-direct {v0, v8, v7}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->Certificate:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 8
    new-instance v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/4 v8, 0x7

    const-string v9, "AccessToken_With_AuthScheme"

    invoke-direct {v0, v9, v8}, Lcom/microsoft/identity/common/internal/dto/CredentialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/microsoft/identity/common/internal/dto/CredentialType;

    .line 9
    sget-object v10, Lcom/microsoft/identity/common/internal/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v10, v9, v1

    sget-object v10, Lcom/microsoft/identity/common/internal/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v10, v9, v2

    sget-object v10, Lcom/microsoft/identity/common/internal/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v10, v9, v3

    sget-object v11, Lcom/microsoft/identity/common/internal/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v11, v9, v4

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->Password:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v4, v9, v5

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->Cookie:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v4, v9, v6

    sget-object v4, Lcom/microsoft/identity/common/internal/dto/CredentialType;->Certificate:Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v4, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/microsoft/identity/common/internal/dto/CredentialType;->$VALUES:[Lcom/microsoft/identity/common/internal/dto/CredentialType;

    new-array v0, v3, [Lcom/microsoft/identity/common/internal/dto/CredentialType;

    aput-object v10, v0, v1

    aput-object v11, v0, v2

    .line 10
    sput-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->ID_TOKEN_TYPES:[Lcom/microsoft/identity/common/internal/dto/CredentialType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/dto/CredentialType;->values()[Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/dto/CredentialType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/dto/CredentialType;

    return-object p0
.end method

.method public static valueSet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-static {}, Lcom/microsoft/identity/common/internal/dto/CredentialType;->values()[Lcom/microsoft/identity/common/internal/dto/CredentialType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/dto/CredentialType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/dto/CredentialType;->$VALUES:[Lcom/microsoft/identity/common/internal/dto/CredentialType;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/dto/CredentialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/dto/CredentialType;

    return-object v0
.end method
