.class public Lcom/microsoft/identity/common/internal/authscheme/BearerAuthenticationSchemeInternal;
.super Lcom/microsoft/identity/common/internal/authscheme/TokenAuthenticationScheme;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/authscheme/ITokenAuthenticationSchemeInternal;


# static fields
.field public static final SCHEME_BEARER:Ljava/lang/String; = "Bearer"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Bearer"

    .line 1
    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/internal/authscheme/TokenAuthenticationScheme;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessTokenForScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
