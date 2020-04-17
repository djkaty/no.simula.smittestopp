.class public Lj/a/a/a/a/a/c;
.super Lj/a/a/a/a/a/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/a/a/a/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothAdapter;Lj/a/a/a/a/a/k;Z)Landroid/bluetooth/le/ScanSettings;
    .locals 3

    .line 1
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p2, Lj/a/a/a/a/a/k;->F:Z

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    iget-wide v1, p2, Lj/a/a/a/a/a/k;->B:J

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    :cond_1
    if-nez p3, :cond_2

    .line 6
    iget-boolean p1, p2, Lj/a/a/a/a/a/k;->G:Z

    if-eqz p1, :cond_3

    .line 7
    :cond_2
    iget p1, p2, Lj/a/a/a/a/a/k;->A:I

    .line 8
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 9
    iget p3, p2, Lj/a/a/a/a/a/k;->C:I

    .line 10
    invoke-virtual {p1, p3}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    .line 11
    iget p3, p2, Lj/a/a/a/a/a/k;->D:I

    .line 12
    invoke-virtual {p1, p3}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 13
    :cond_3
    iget p1, p2, Lj/a/a/a/a/a/k;->z:I

    .line 14
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 15
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method
