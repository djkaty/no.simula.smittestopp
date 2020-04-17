.class public Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;
.super Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData$SerializedNames;
    }
.end annotation


# instance fields
.field public mWpjAccountAccessAllowed:Z
    .annotation runtime Le/c/c/v/c;
        value = "wpj_account_access_allowed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;

    .line 4
    iget-boolean v2, p0, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    iget-boolean p1, p1, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isWpjAccountAccessAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    return v0
.end method

.method public setWpjAccountAccessAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/cache/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    return-void
.end method
