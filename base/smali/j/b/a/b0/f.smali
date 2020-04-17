.class public final Lj/b/a/b0/f;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lj/b/a/b0/h;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lj/b/a/b0/h;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    iput-object p1, p0, Lj/b/a/b0/f;->b:Lj/b/a/b0/h;

    iput p2, p0, Lj/b/a/b0/f;->c:I

    iput p3, p0, Lj/b/a/b0/f;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lj/b/a/b0/f;->b:Lj/b/a/b0/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3
    iget v3, p0, Lj/b/a/b0/f;->d:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    .line 5
    invoke-interface/range {v0 .. v5}, Lj/b/a/b0/h;->a(Ljava/lang/String;IIJ)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2
    :cond_0
    invoke-static {p2}, Le/c/a/a/b/l/c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    new-array v1, p3, [Ljava/lang/Object;

    .line 3
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "onCharacteristicRead"

    invoke-virtual {v2, v3, v1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object v0, Lh/o/a;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    :cond_1
    iput-object v0, p0, Lj/b/a/b0/f;->a:Ljava/lang/String;

    const-string p2, "Got identifier "

    .line 5
    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lj/b/a/b0/f;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, p3, [Ljava/lang/Object;

    .line 6
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, p2, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "storeIfRead "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lj/b/a/b0/f;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lj/b/a/b0/f;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p3, [Ljava/lang/Object;

    .line 8
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v0, p2, p3}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lj/b/a/b0/f;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 10
    iget p3, p0, Lj/b/a/b0/f;->c:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lj/b/a/b0/f;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_3
    return-void

    :cond_4
    const-string p1, "characteristic"

    .line 12
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p1, "gatt"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v2, v0, v1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "gatt"

    .line 6
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "onServicesDiscovered status: "

    .line 1
    invoke-static {v1, p2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v4, v1, v3}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 3
    :try_start_0
    sget-object p2, Lj/b/a/a0;->a:Ljava/util/UUID;

    .line 4
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    .line 5
    sget-object v1, Lj/b/a/a0;->b:Ljava/util/UUID;

    .line 6
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 8
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string v1, "onServicesDiscovered device does not display service UUID"

    invoke-virtual {p2, v1, p1}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0, v0}, Lj/b/a/b0/f;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :goto_0
    return-void

    :cond_1
    const-string p1, "gatt"

    .line 11
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
