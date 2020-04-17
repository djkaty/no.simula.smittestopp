.class public interface abstract Lcom/microsoft/identity/client/IClaimable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getClaims()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getIdToken()Ljava/lang/String;
.end method

.method public abstract getTenantId()Ljava/lang/String;
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method
