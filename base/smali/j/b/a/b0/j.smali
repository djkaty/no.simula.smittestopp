.class public final Lj/b/a/b0/j;
.super Lj/a/a/a/a/a/g;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/app/Application;

.field public d:Lj/b/a/b0/h;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lj/b/a/b0/h;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lj/a/a/a/a/a/g;-><init>()V

    iput-object p1, p0, Lj/b/a/b0/j;->c:Landroid/app/Application;

    iput-object p2, p0, Lj/b/a/b0/j;->d:Lj/b/a/b0/h;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj/b/a/b0/j;->b:Ljava/util/List;

    return-void

    :cond_0
    const-string p1, "application"

    .line 3
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const-string v0, "Scan failed "

    .line 30
    invoke-static {v0, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, p1, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILj/a/a/a/a/a/j;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lj/b/a/b0/j;->a(Lj/a/a/a/a/a/j;)V

    return-void

    :cond_0
    const-string p1, "result"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lj/a/a/a/a/a/j;)V
    .locals 6

    .line 8
    iget-object v0, p0, Lj/b/a/b0/j;->b:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "result.device"

    .line 10
    invoke-static {v1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    .line 12
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v4, v0, v3}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lj/b/a/b0/j;->a:J

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 15
    new-instance v0, Lj/b/a/b0/f;

    iget-object v3, p0, Lj/b/a/b0/j;->d:Lj/b/a/b0/h;

    .line 16
    iget v4, p1, Lj/a/a/a/a/a/j;->z:I

    .line 17
    iget v5, p1, Lj/a/a/a/a/a/j;->F:I

    .line 18
    invoke-direct {v0, v3, v4, v5}, Lj/b/a/b0/f;-><init>(Lj/b/a/b0/h;II)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lj/b/a/b0/f;

    iget-object v3, p0, Lj/b/a/b0/j;->d:Lj/b/a/b0/h;

    .line 20
    iget v4, p1, Lj/a/a/a/a/a/j;->z:I

    .line 21
    invoke-direct {v0, v3, v4, v1}, Lj/b/a/b0/f;-><init>(Lj/b/a/b0/h;II)V

    .line 22
    :goto_0
    iget-object v3, p0, Lj/b/a/b0/j;->b:Ljava/util/List;

    .line 23
    iget-object v4, p1, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    .line 24
    invoke-static {v4, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "result.device.address"

    invoke-static {v4, v5}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p1, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    .line 26
    invoke-static {p1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 28
    iget-object v2, p0, Lj/b/a/b0/j;->c:Landroid/app/Application;

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    goto :goto_1

    .line 29
    :cond_1
    iget-object v2, p0, Lj/b/a/b0/j;->c:Landroid/app/Application;

    invoke-virtual {p1, v2, v1, v0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/j;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "onBatchScanResults size "

    .line 3
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v2, v0, v1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/a/a/a/a/a/j;

    .line 6
    invoke-virtual {p0, v0}, Lj/b/a/b0/j;->a(Lj/a/a/a/a/a/j;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p1, "results"

    .line 7
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
