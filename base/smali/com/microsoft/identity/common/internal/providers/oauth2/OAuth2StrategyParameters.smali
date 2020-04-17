.class public Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/OAuth2StrategyParameters;->mContext:Landroid/content/Context;

    return-void
.end method
