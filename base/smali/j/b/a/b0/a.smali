.class public final Lj/b/a/b0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/bluetooth/le/AdvertiseData;

.field public final b:Landroid/bluetooth/le/AdvertiseSettings;

.field public final c:Lj/b/a/b0/b;

.field public final d:Landroid/bluetooth/le/BluetoothLeAdvertiser;


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/b/a/b0/a;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 2
    new-instance p1, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {p1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    .line 3
    new-instance v0, Landroid/os/ParcelUuid;

    .line 4
    sget-object v1, Lj/b/a/a0;->a:Ljava/util/UUID;

    .line 5
    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1, v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    const-string v2, "AdvertiseData.Builder()\n\u2026rue)\n            .build()"

    invoke-static {p1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj/b/a/b0/a;->a:Landroid/bluetooth/le/AdvertiseData;

    .line 9
    new-instance p1, Landroid/bluetooth/le/AdvertiseSettings$Builder;

    invoke-direct {p1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;-><init>()V

    .line 10
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 13
    invoke-virtual {p1, v0}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings$Builder;->build()Landroid/bluetooth/le/AdvertiseSettings;

    move-result-object p1

    const-string v0, "AdvertiseSettings.Builde\u2026IUM)\n            .build()"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj/b/a/b0/a;->b:Landroid/bluetooth/le/AdvertiseSettings;

    .line 15
    new-instance p1, Lj/b/a/b0/b;

    invoke-direct {p1}, Lj/b/a/b0/b;-><init>()V

    iput-object p1, p0, Lj/b/a/b0/a;->c:Lj/b/a/b0/b;

    return-void
.end method
