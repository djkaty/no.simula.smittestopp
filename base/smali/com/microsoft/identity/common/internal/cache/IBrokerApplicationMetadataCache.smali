.class public interface abstract Lcom/microsoft/identity/common/internal/cache/IBrokerApplicationMetadataCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/cache/ISimpleCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/cache/ISimpleCache<",
        "Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAllClientIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFociApplicationMetadata()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFociClientIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllNonFociClientIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetadata(Ljava/lang/String;Ljava/lang/String;I)Lcom/microsoft/identity/common/internal/cache/BrokerApplicationMetadata;
.end method
