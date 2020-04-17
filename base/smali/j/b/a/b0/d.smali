.class public final Lj/b/a/b0/d;
.super Landroid/bluetooth/BluetoothGattServerCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj/b/a/b0/e;


# direct methods
.method public constructor <init>(Lj/b/a/b0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lj/b/a/b0/d;->a:Lj/b/a/b0/e;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eqz p4, :cond_7

    .line 1
    invoke-static {p4}, Le/c/a/a/b/l/c;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lj/b/a/b0/d;->a:Lj/b/a/b0/e;

    .line 2
    iget-object v1, v1, Lj/b/a/b0/e;->c:Landroid/bluetooth/BluetoothGattServer;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    const-string v2, "Requesting characteristic UUID: "

    .line 3
    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, p4, v2}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Responding: + "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj/b/a/b0/d;->a:Lj/b/a/b0/e;

    .line 6
    iget-object v2, v2, Lj/b/a/b0/e;->a:[B

    .line 7
    sget-object v3, Lh/o/a;->a:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, p4, v2}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_1
    iget-object p4, p0, Lj/b/a/b0/d;->a:Lj/b/a/b0/e;

    .line 10
    iget-object v2, p4, Lj/b/a/b0/e;->a:[B

    .line 11
    array-length v3, v2

    if-le p3, v3, :cond_3

    .line 12
    iget-object v4, p4, Lj/b/a/b0/e;->c:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v4, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v1, [B

    move-object v5, p1

    move v6, p2

    .line 13
    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    return-void

    :cond_2
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    .line 14
    :cond_3
    array-length p4, v2

    sub-int/2addr p4, p3

    .line 15
    new-array v8, p4, [B

    .line 16
    array-length p4, v2

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_4

    sub-int v2, v1, p3

    .line 17
    iget-object v3, p0, Lj/b/a/b0/d;->a:Lj/b/a/b0/e;

    .line 18
    iget-object v3, v3, Lj/b/a/b0/e;->a:[B

    .line 19
    aget-byte v3, v3, v1

    aput-byte v3, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_4
    iget-object p4, p0, Lj/b/a/b0/d;->a:Lj/b/a/b0/e;

    .line 21
    iget-object v3, p4, Lj/b/a/b0/e;->c:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v3, :cond_5

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v7, p3

    .line 22
    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothGattServer;->sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z

    return-void

    :cond_5
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    :cond_6
    :goto_1
    return-void

    :cond_7
    const-string p1, "characteristic"

    .line 23
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string p1, "device"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
