.class public final enum Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum ADAL_USER_DEFINED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const/4 v1, 0x0

    const-string v2, "LEGACY_AUTHENTICATOR_APP_KEY"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const/4 v2, 0x1

    const-string v3, "LEGACY_COMPANY_PORTAL_KEY"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const/4 v3, 0x2

    const-string v4, "ADAL_USER_DEFINED_KEY"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->ADAL_USER_DEFINED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    .line 4
    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const/4 v4, 0x3

    const-string v5, "KEYSTORE_ENCRYPTED_KEY"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    .line 5
    sget-object v6, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->ADAL_USER_DEFINED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    return-object v0
.end method
