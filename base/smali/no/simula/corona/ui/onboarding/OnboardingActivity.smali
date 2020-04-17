.class public final Lno/simula/corona/ui/onboarding/OnboardingActivity;
.super Lj/b/a/e0/a;
.source "SourceFile"

# interfaces
.implements Lj/b/a/e0/c/a;


# instance fields
.field public z:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/b/a/e0/a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lno/simula/corona/ui/onboarding/OnboardingActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj/b/a/e0/a;->l()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity;->z:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity;->z:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity;->z:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ld/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity;->z:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public a(II)V
    .locals 3

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 2
    sget v1, Lno/simula/corona/R$id;->viewPager:I

    invoke-virtual {p0, v1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lno/simula/corona/ui/widgets/NonSlidingViewPager;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, p2}, Ld/a0/a/b;->a(IZ)V

    :cond_0
    if-ne p1, v0, :cond_1

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/ConsentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x65

    .line 4
    invoke-virtual {p0, v0, v1}, Ld/m/a/c;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    const-string v0, "connectivity"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x66

    .line 9
    invoke-virtual {p0, p1, p2}, Ld/m/a/c;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f120063

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Lh/e;

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, p2}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld/m/a/c;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x65

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 2
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string p3, "Confirmed consent"

    invoke-virtual {p2, p3, p1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p3}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    const-string p1, "settings"

    .line 4
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "consented"

    .line 6
    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    sget p1, Lno/simula/corona/R$id;->viewPager:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lno/simula/corona/ui/widgets/NonSlidingViewPager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Ld/a0/a/b;->a(IZ)V

    goto :goto_1

    :cond_0
    const-string p1, "Denied consent"

    .line 9
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x66

    if-ne p1, v2, :cond_6

    if-ne p2, v0, :cond_4

    .line 10
    sget p1, Lno/simula/corona/R$id;->viewPager:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lno/simula/corona/ui/widgets/NonSlidingViewPager;

    const-string p2, "viewPager"

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    sget p1, Lno/simula/corona/R$id;->pageIndicator:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lno/simula/corona/ui/widgets/DotPageIndicator;

    const-string v0, "pageIndicator"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    sget p1, Lno/simula/corona/R$id;->spinner:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string p2, "spinner"

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p1, 0x0

    if-eqz p3, :cond_2

    const-string p2, "token"

    .line 13
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p1

    .line 14
    :goto_0
    new-instance p3, Lj/b/a/h;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "this.application"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lj/b/a/h;-><init>(Landroid/app/Application;)V

    if-eqz p2, :cond_3

    new-instance p1, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;

    invoke-direct {p1, p0}, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;-><init>(Lno/simula/corona/ui/onboarding/OnboardingActivity;)V

    invoke-virtual {p3, p2, p1}, Lj/b/a/h;->a(Ljava/lang/String;Lj/b/a/h$b;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lh/k/b/g;->a()V

    throw p1

    :cond_4
    if-nez p2, :cond_5

    return-void

    .line 15
    :cond_5
    invoke-virtual {p0}, Lj/b/a/e0/a;->l()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ld/b/a/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 2
    invoke-virtual {p0, p1}, Ld/b/a/h;->setContentView(I)V

    .line 3
    sget p1, Lno/simula/corona/R$id;->viewPager:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lno/simula/corona/ui/widgets/NonSlidingViewPager;

    new-instance v0, Lno/simula/corona/ui/onboarding/OnboardingActivity$b;

    .line 4
    invoke-virtual {p0}, Ld/m/a/c;->getSupportFragmentManager()Ld/m/a/p;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lno/simula/corona/ui/onboarding/OnboardingActivity$b;-><init>(Lno/simula/corona/ui/onboarding/OnboardingActivity;Ld/m/a/p;)V

    .line 5
    invoke-virtual {p1, v0}, Ld/a0/a/b;->setAdapter(Ld/a0/a/a;)V

    .line 6
    sget p1, Lno/simula/corona/R$id;->pageIndicator:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lno/simula/corona/ui/widgets/DotPageIndicator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lno/simula/corona/ui/widgets/DotPageIndicator;->setTotalDots(I)V

    .line 7
    sget p1, Lno/simula/corona/R$id;->viewPager:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lno/simula/corona/ui/widgets/NonSlidingViewPager;

    new-instance v0, Lno/simula/corona/ui/onboarding/OnboardingActivity$c;

    invoke-direct {v0, p0}, Lno/simula/corona/ui/onboarding/OnboardingActivity$c;-><init>(Lno/simula/corona/ui/onboarding/OnboardingActivity;)V

    .line 8
    iget-object v1, p1, Ld/a0/a/b;->r0:Ljava/util/List;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Ld/a0/a/b;->r0:Ljava/util/List;

    .line 10
    :cond_0
    iget-object p1, p1, Ld/a0/a/b;->r0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
