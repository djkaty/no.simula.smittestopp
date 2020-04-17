.class public final Lno/simula/corona/ui/onboarding/OnboardingActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/a0/a/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/ui/onboarding/OnboardingActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$c;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$c;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    sget v1, Lno/simula/corona/R$id;->pageIndicator:I

    invoke-virtual {v0, v1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lno/simula/corona/ui/widgets/DotPageIndicator;

    invoke-virtual {v0, p1}, Lno/simula/corona/ui/widgets/DotPageIndicator;->setSelected(I)V

    return-void
.end method
