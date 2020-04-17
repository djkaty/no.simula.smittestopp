.class public abstract Lcom/microsoft/identity/common/internal/authscheme/TokenAuthenticationScheme;
.super Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/authscheme/ITokenAuthenticationSchemeInternal;


# static fields
.field public static final SCHEME_DELIMITER:Ljava/lang/String; = " "


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/authscheme/AbstractAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method
