.class public final Lno/simula/corona/ui/onboarding/OnboardingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/b/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/ui/onboarding/OnboardingActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno/simula/corona/ui/onboarding/OnboardingActivity;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/onboarding/OnboardingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 5

    if-eqz p1, :cond_1

    const-string v0, "User failed provisioning"

    .line 4
    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f12001f

    const v1, 0x7f120091

    .line 6
    new-instance v2, Lno/simula/corona/ui/dialogs/CoronaDialogInfo;

    invoke-direct {v2}, Lno/simula/corona/ui/dialogs/CoronaDialogInfo;-><init>()V

    .line 7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    .line 8
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "message"

    .line 9
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    new-instance v0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a$a;

    invoke-direct {v0, p0}, Lno/simula/corona/ui/onboarding/OnboardingActivity$a$a;-><init>(Lno/simula/corona/ui/onboarding/OnboardingActivity$a;)V

    .line 12
    iput-object v0, v2, Lno/simula/corona/ui/dialogs/CoronaDialogInfo;->K:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    invoke-static {p1}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;)V

    .line 14
    iget-object p1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-static {p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(Lno/simula/corona/ui/onboarding/OnboardingActivity;)V

    return-void

    :cond_1
    const-string p1, "error"

    .line 15
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 0

    const-string p1, "User provisioned"

    .line 1
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-static {p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(Lno/simula/corona/ui/onboarding/OnboardingActivity;)V

    return-void
.end method
