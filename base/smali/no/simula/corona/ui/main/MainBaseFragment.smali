.class public Lno/simula/corona/ui/main/MainBaseFragment;
.super Lno/simula/corona/ui/BaseFragment;
.source "SourceFile"


# instance fields
.field public x:Lj/b/a/e0/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lno/simula/corona/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lj/b/a/e0/b/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lj/b/a/e0/b/b;

    iput-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    :cond_0
    return-void

    :cond_1
    const-string p1, "context"

    .line 4
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lno/simula/corona/ui/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lno/simula/corona/ui/main/MainBaseFragment;->a()V

    return-void
.end method
