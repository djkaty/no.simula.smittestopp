.class public final Lno/simula/corona/ui/onboarding/OnboardingActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/ui/onboarding/OnboardingActivity$a;->a(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic x:Lno/simula/corona/ui/onboarding/OnboardingActivity$a;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/onboarding/OnboardingActivity$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a$a;->x:Lno/simula/corona/ui/onboarding/OnboardingActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lno/simula/corona/ui/onboarding/OnboardingActivity$a$a;->x:Lno/simula/corona/ui/onboarding/OnboardingActivity$a;

    iget-object p1, p1, Lno/simula/corona/ui/onboarding/OnboardingActivity$a;->a:Lno/simula/corona/ui/onboarding/OnboardingActivity;

    invoke-static {p1}, Lno/simula/corona/ui/onboarding/OnboardingActivity;->a(Lno/simula/corona/ui/onboarding/OnboardingActivity;)V

    return-void
.end method
