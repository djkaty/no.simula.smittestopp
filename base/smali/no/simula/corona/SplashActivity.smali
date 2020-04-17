.class public final Lno/simula/corona/SplashActivity;
.super Lj/b/a/e0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/b/a/e0/a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lno/simula/corona/SplashActivity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/ui/register/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static final synthetic b(Lno/simula/corona/SplashActivity;)V
    .locals 5

    if-eqz p0, :cond_6

    .line 1
    invoke-static {p0}, Lj/b/a/a0;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {p0}, Lj/b/a/a0;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lj/b/a/e0/a;->l()V

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-static {p0}, Lj/b/a/a0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lj/b/a/a0;->k(Landroid/content/Context;)Z

    move-result v3

    .line 6
    invoke-static {p0}, Lj/b/a/a0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12001f

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120084

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120074

    .line 10
    new-instance v2, Lj/b/a/w;

    invoke-direct {v2, p0}, Lj/b/a/w;-><init>(Lno/simula/corona/SplashActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    new-instance v1, Lj/b/a/x;

    invoke-direct {v1, p0}, Lj/b/a/x;-><init>(Lno/simula/corona/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 14
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/ui/register/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 19
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void

    :cond_6
    const/4 p0, 0x0

    .line 22
    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ld/b/a/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 2
    invoke-virtual {p0, p1}, Ld/b/a/h;->setContentView(I)V

    .line 3
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v0, "Build.FINGERPRINT"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "generic"

    const/4 v3, 0x2

    invoke-static {p1, v2, v1, v3}, Lh/o/g;->a(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknown"

    invoke-static {p1, v0, v1, v3}, Lh/o/g;->a(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "Build.MODEL"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "google_sdk"

    invoke-static {p1, v4, v1, v3}, Lh/o/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Emulator"

    invoke-static {p1, v5, v1, v3}, Lh/o/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Android SDK built for x86"

    invoke-static {p1, v0, v1, v3}, Lh/o/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v0, "QC_Reference_Phone"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Build.MANUFACTURER"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Genymotion"

    invoke-static {p1, v0, v1, v3}, Lh/o/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "Build.BRAND"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v3}, Lh/o/g;->a(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "Build.DEVICE"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2, v1, v3}, Lh/o/g;->a(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v4, p1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 10
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12001f

    .line 11
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v0, "This app cannot run on this system"

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    new-instance v0, Lj/b/a/y;

    invoke-direct {v0, p0}, Lj/b/a/y;-><init>(Lno/simula/corona/SplashActivity;)V

    const v1, 0x7f120074

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    new-instance v0, Lj/b/a/z;

    invoke-direct {v0, p0}, Lj/b/a/z;-><init>(Lno/simula/corona/SplashActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 15
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 16
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 17
    :cond_3
    new-instance p1, Lno/simula/corona/SplashActivity$a;

    invoke-direct {p1, p0}, Lno/simula/corona/SplashActivity$a;-><init>(Lno/simula/corona/SplashActivity;)V

    .line 18
    invoke-static {p0}, Lj/b/a/a0;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x7d0

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x3e8

    .line 19
    :goto_2
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string p1, "notification"

    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Landroid/app/NotificationManager;

    .line 21
    sget-object v0, Lno/simula/corona/CoronaApp;->z:Lno/simula/corona/CoronaApp;

    if-eqz v0, :cond_5

    .line 22
    iput-boolean v1, v0, Lno/simula/corona/CoronaApp;->y:Z

    :cond_5
    const/16 v0, 0xd

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 24
    :cond_6
    new-instance p1, Lh/e;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method
