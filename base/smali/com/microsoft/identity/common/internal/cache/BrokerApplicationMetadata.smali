.class public Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;
.super Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata$SerializedNames;
    }
.end annotation


# instance fields
.field public mFoci:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "family_id"
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

    if-eqz p1, :cond_5

    .line 1
    const-class v2, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

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
    check-cast p1, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;

    .line 4
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->mFoci:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->mFoci:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getFoci()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->mFoci:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/microsoft/identity/common/internal/cache/AbstractApplicationMetadata;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->mFoci:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setFoci(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;->mFoci:Ljava/lang/String;

    return-void
.end method
