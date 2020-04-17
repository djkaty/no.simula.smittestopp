.class public Ld/m/a/c$a;
.super Ld/m/a/m;
.source "SourceFile"

# interfaces
.implements Ld/o/f0;
.implements Ld/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/m/a/m<",
        "Ld/m/a/c;",
        ">;",
        "Ld/o/f0;",
        "Ld/a/c;"
    }
.end annotation


# instance fields
.field public final synthetic B:Ld/m/a/c;


# direct methods
.method public constructor <init>(Ld/m/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/c$a;->B:Ld/m/a/c;

    .line 2
    invoke-direct {p0, p1}, Ld/m/a/m;-><init>(Ld/m/a/c;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLifecycle()Ld/o/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c$a;->B:Ld/m/a/c;

    iget-object v0, v0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Ld/o/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Ld/o/e0;

    move-result-object v0

    return-object v0
.end method
