.class public final Lno/simula/corona/ui/register/PhoneVerificationActivity;
.super Ld/b/a/h;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ld/b/a/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 2
    invoke-virtual {p0, p1}, Ld/b/a/h;->setContentView(I)V

    const-string p1, "Verify Phone Number"

    .line 3
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "f427f831-60ae-4ea3-9de6-11977b46cf01"

    const-string v1, "https://smittestopp.b2clogin.com/tfp/smittestopp.onmicrosoft.com/B2C_1A_phone_SUSI"

    const-string v2, "msauthsimulasmittestopp://something/somethingelse"

    .line 6
    invoke-static {p1, v0, v1, v2, p0}, Lcom/microsoft/identity/client/PublicClientApplication;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

.method public onCreated(Lcom/microsoft/identity/client/IPublicClientApplication;)V
    .locals 3

    const-string v0, "https://smittestopp.onmicrosoft.com/backend/Device.Write"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start Acquire Token"

    .line 2
    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lh/k/b/k;

    invoke-direct {v1}, Lh/k/b/k;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iput-object v2, v1, Lh/k/b/k;->x:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    new-instance v2, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;

    invoke-direct {v2, p0, v1}, Lno/simula/corona/ui/register/PhoneVerificationActivity$a;-><init>(Lno/simula/corona/ui/register/PhoneVerificationActivity;Lh/k/b/k;)V

    invoke-interface {p1, p0, v0, v2}, Lcom/microsoft/identity/client/IPublicClientApplication;->acquireToken(Landroid/app/Activity;[Ljava/lang/String;Lcom/microsoft/identity/client/AuthenticationCallback;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, v0, v2}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "where"

    const-string v3, "createMsAuthAppError"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v0, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
