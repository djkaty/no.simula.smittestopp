.class public interface abstract Lcom/microsoft/identity/client/ITokenShare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/adal/internal/tokensharing/ITokenShareInternal;


# virtual methods
.method public abstract getMsaFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOrgIdFamilyRefreshToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract saveMsaFamilyRefreshToken(Ljava/lang/String;)V
.end method

.method public abstract saveOrgIdFamilyRefreshToken(Ljava/lang/String;)V
.end method
