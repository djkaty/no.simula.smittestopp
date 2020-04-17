.class public Lno/simula/corona/ui/main/ControlFragmentBase;
.super Lno/simula/corona/ui/main/MainBaseFragment;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lno/simula/corona/ui/main/MainBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lno/simula/corona/ui/main/MainBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;->a()V

    return-void
.end method

.method public final onEvent(Lj/b/a/c0/a;)V
    .locals 1
    .annotation runtime Lk/d/a/m;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Lj/b/a/c0/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    .line 3
    :cond_0
    iget-boolean p1, p1, Lj/b/a/c0/a;->a:Z

    .line 4
    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->y:Z

    .line 5
    invoke-virtual {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;->b()V

    return-void

    :cond_1
    const-string p1, "event"

    .line 6
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onEvent(Lj/b/a/c0/b;)V
    .locals 0
    .annotation runtime Lk/d/a/m;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 7
    iget-boolean p1, p1, Lj/b/a/c0/b;->a:Z

    .line 8
    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    .line 9
    invoke-virtual {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;->b()V

    return-void

    :cond_0
    const-string p1, "event"

    .line 10
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onEvent(Lj/b/a/c0/c;)V
    .locals 0
    .annotation runtime Lk/d/a/m;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 11
    iget-boolean p1, p1, Lj/b/a/c0/c;->a:Z

    .line 12
    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    .line 13
    invoke-virtual {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;->b()V

    return-void

    :cond_0
    const-string p1, "event"

    .line 14
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onEvent(Lj/b/a/c0/d;)V
    .locals 1
    .annotation runtime Lk/d/a/m;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    .line 15
    iget-boolean v0, p1, Lj/b/a/c0/d;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    .line 17
    :cond_0
    iget-boolean p1, p1, Lj/b/a/c0/d;->a:Z

    .line 18
    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->z:Z

    .line 19
    invoke-virtual {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;->b()V

    return-void

    :cond_1
    const-string p1, "event"

    .line 20
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk/d/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk/d/a/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lj/b/a/e0/b/b;->b()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    .line 4
    iget-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lj/b/a/e0/b/b;->i()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_6

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->y:Z

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    check-cast v0, Landroid/location/LocationManager;

    const-string p1, "gps"

    .line 9
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->z:Z

    return-void

    .line 10
    :cond_5
    new-instance p1, Lh/e;

    const-string p2, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-direct {p1, p2}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_6
    new-instance p1, Lh/e;

    const-string p2, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-direct {p1, p2}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p1, "view"

    .line 12
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
