.class public final Lj/b/a/b0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Landroid/bluetooth/BluetoothGattService;

.field public c:Landroid/bluetooth/BluetoothGattServer;

.field public final d:Landroid/content/Context;

.field public final e:Landroid/bluetooth/BluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/b/a/b0/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lj/b/a/b0/e;->e:Landroid/bluetooth/BluetoothManager;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lj/b/a/a0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lh/o/a;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj/b/a/b0/e;->a:[B

    .line 3
    new-instance p1, Landroid/bluetooth/BluetoothGattService;

    .line 4
    sget-object p2, Lj/b/a/a0;->a:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p1, p2, v0}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;I)V

    .line 6
    new-instance p2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 7
    sget-object v0, Lj/b/a/a0;->b:Ljava/util/UUID;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 8
    invoke-direct {p2, v0, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 10
    iput-object p1, p0, Lj/b/a/b0/e;->b:Landroid/bluetooth/BluetoothGattService;

    return-void

    .line 11
    :cond_0
    new-instance p1, Lh/e;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "bluetoothManager"

    .line 12
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "context"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
