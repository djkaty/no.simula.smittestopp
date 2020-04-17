.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;
.super Ld/m/a/c;
.source "SourceFile"


# instance fields
.field public mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/m/a/c;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;ZZ)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;",
            "ZZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.microsoft.identity.auth.intent"

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "com.microsoft.identity.request.url"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.microsoft.identity.request.redirect.uri"

    .line 4
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.microsoft.identity.request.headers"

    .line 5
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "com.microsoft.identity.client.authorization.agent"

    .line 6
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "com.microsoft.identity.web.view.zoom.controls.enabled"

    .line 7
    invoke-virtual {v0, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "com.microsoft.identity.web.view.zoom.enabled"

    .line 8
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;

    move-result-object p0

    const-string p1, "correlation_id"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getAuthorizationFragmentFromStartIntent(Landroid/content/Intent;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;
    .locals 2

    const-string v0, "com.microsoft.identity.client.authorization.agent"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    .line 2
    new-instance v1, Lcom/microsoft/identity/common/internal/telemetry/events/UiStartEvent;

    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/telemetry/events/UiStartEvent;-><init>()V

    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/UiStartEvent;->putUserAgent(Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;)Lcom/microsoft/identity/common/internal/telemetry/events/UiStartEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;)V

    .line 3
    sget-object v1, Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/internal/ui/AuthorizationAgent;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/BrowserAuthorizationFragment;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->setInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Ld/m/a/c;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/microsoft/identity/common/R$layout;->authorization_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->getAuthorizationFragmentFromStartIntent(Landroid/content/Intent;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 4
    invoke-virtual {p0}, Ld/m/a/c;->getSupportFragmentManager()Ld/m/a/p;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    new-instance v1, Ld/m/a/a;

    invoke-direct {v1, p1}, Ld/m/a/a;-><init>(Ld/m/a/p;)V

    .line 6
    sget p1, Lcom/microsoft/identity/common/R$id;->authorization_activity_content:I

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v1, p1, v2, v0, v3}, Ld/m/a/y;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v1}, Ld/m/a/y;->a()I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use non-zero containerViewId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    throw v0
.end method
