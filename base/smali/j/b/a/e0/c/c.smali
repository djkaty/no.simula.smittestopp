.class public final Lj/b/a/e0/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic x:Lno/simula/corona/ui/onboarding/PrivavcyOnboardingFragment;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/onboarding/PrivavcyOnboardingFragment;)V
    .locals 0

    iput-object p1, p0, Lj/b/a/e0/c/c;->x:Lno/simula/corona/ui/onboarding/PrivavcyOnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lj/b/a/e0/c/c;->x:Lno/simula/corona/ui/onboarding/PrivavcyOnboardingFragment;

    .line 2
    iget-object v0, p1, Lno/simula/corona/ui/onboarding/PrivavcyOnboardingFragment;->y:Lj/b/a/e0/c/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lno/simula/corona/ui/onboarding/PrivavcyOnboardingFragment;->x:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, p1, v1}, Lj/b/a/e0/c/a;->a(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lh/k/b/g;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
