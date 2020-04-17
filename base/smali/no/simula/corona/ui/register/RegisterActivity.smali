.class public final Lno/simula/corona/ui/register/RegisterActivity;
.super Lj/b/a/e0/a;
.source "SourceFile"

# interfaces
.implements Lj/b/a/e0/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/b/a/e0/a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lno/simula/corona/ui/register/RegisterActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj/b/a/e0/a;->l()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x66

    .line 3
    invoke-virtual {p0, p1, p2}, Ld/m/a/c;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld/m/a/c;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x66

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lj/b/a/e0/a;->l()V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "token"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    new-instance p2, Lj/b/a/h;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p3

    const-string v0, "this.application"

    invoke-static {p3, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lj/b/a/h;-><init>(Landroid/app/Application;)V

    new-instance p3, Lj/b/a/e0/d/a;

    invoke-direct {p3, p0}, Lj/b/a/e0/d/a;-><init>(Lno/simula/corona/ui/register/RegisterActivity;)V

    invoke-virtual {p2, p1, p3}, Lj/b/a/h;->a(Ljava/lang/String;Lj/b/a/h$b;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ld/b/a/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0020

    .line 2
    invoke-virtual {p0, v0}, Ld/b/a/h;->setContentView(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x3

    const v0, 0x7f12009b

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.title4)"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f120077

    const v2, 0x7f0800a7

    const v3, 0x7f120086

    .line 4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.register)"

    invoke-static {v3, v4}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1, v0, v1, v2, v3}, Lno/simula/corona/ui/onboarding/OnboardingFragment;->a(ILjava/lang/String;IILjava/lang/String;)Lno/simula/corona/ui/onboarding/OnboardingFragment;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Ld/m/a/c;->getSupportFragmentManager()Ld/m/a/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    new-instance v2, Ld/m/a/a;

    invoke-direct {v2, v0}, Ld/m/a/a;-><init>(Ld/m/a/p;)V

    const-string v0, "supportFragmentManager.beginTransaction()"

    .line 8
    invoke-static {v2, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0067

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v0, p1, v1, v3}, Ld/m/a/y;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v2}, Ld/m/a/y;->a()I

    goto :goto_0

    .line 11
    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-void
.end method
