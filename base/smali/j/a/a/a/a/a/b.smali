.class public Lj/a/a/a/a/a/b;
.super Lj/a/a/a/a/a/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a/a/a/a/a/b$b;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lj/a/a/a/a/a/g;",
            "Lj/a/a/a/a/a/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj/a/a/a/a/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothAdapter;Lj/a/a/a/a/a/k;Z)Landroid/bluetooth/le/ScanSettings;
    .locals 3

    .line 52
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    if-nez p3, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-boolean p1, p2, Lj/a/a/a/a/a/k;->F:Z

    if-eqz p1, :cond_1

    .line 55
    :cond_0
    iget-wide v1, p2, Lj/a/a/a/a/a/k;->B:J

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 57
    :cond_1
    iget p1, p2, Lj/a/a/a/a/a/k;->z:I

    const/4 p3, -0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_2

    .line 58
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 60
    :goto_0
    iput-boolean v1, p2, Lj/a/a/a/a/a/k;->G:Z

    .line 61
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/bluetooth/le/ScanResult;)Lj/a/a/a/a/a/j;
    .locals 8

    .line 62
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    new-instance v7, Lj/a/a/a/a/a/j;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v0}, Lj/a/a/a/a/a/i;->a([B)Lj/a/a/a/a/a/i;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj/a/a/a/a/a/j;-><init>(Landroid/bluetooth/BluetoothDevice;Lj/a/a/a/a/a/i;IJ)V

    return-object v7
.end method

.method public a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lj/a/a/a/a/a/j;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 68
    invoke-virtual {p0, v1}, Lj/a/a/a/a/a/b;->a(Landroid/bluetooth/le/ScanResult;)Lj/a/a/a/a/a/j;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lj/a/a/a/a/a/g;)V
    .locals 3

    .line 38
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 39
    iget-object v1, p0, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v2, p0, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a/a/a/a/a/b$b;

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 42
    iget-object v1, p1, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 43
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    iget-boolean v1, v1, Lj/a/a/a/a/a/k;->F:Z

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object p1, p1, Lj/a/a/a/a/a/b$b;->o:Landroid/bluetooth/le/ScanCallback;

    .line 47
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lj/a/a/a/a/a/a$a;->b()V

    :goto_0
    return-void

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback not registered!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/h;",
            ">;",
            "Lj/a/a/a/a/a/k;",
            "Lj/a/a/a/a/a/g;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    .line 2
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 3
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result v3

    .line 4
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v13

    .line 5
    iget-object v14, v1, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    monitor-enter v14

    .line 6
    :try_start_0
    iget-object v2, v1, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    new-instance v15, Lj/a/a/a/a/a/b$b;

    const/4 v9, 0x0

    move-object v2, v15

    move v4, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lj/a/a/a/a/a/b$b;-><init>(ZZLjava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;Lj/a/a/a/a/a/b$a;)V

    .line 8
    iget-object v2, v1, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    invoke-interface {v2, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v11, v0, v2}, Lj/a/a/a/a/a/b;->a(Landroid/bluetooth/BluetoothAdapter;Lj/a/a/a/a/a/k;Z)Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v13, :cond_1

    .line 12
    iget-boolean v0, v0, Lj/a/a/a/a/a/k;->E:Z

    if-eqz v0, :cond_1

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/a/a/a/a/a/h;

    .line 15
    new-instance v5, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 16
    iget-object v6, v4, Lj/a/a/a/a/a/h;->y:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v6}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v6

    .line 18
    iget-object v7, v4, Lj/a/a/a/a/a/h;->x:Ljava/lang/String;

    .line 19
    invoke-virtual {v6, v7}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v6

    .line 20
    iget-object v7, v4, Lj/a/a/a/a/a/h;->z:Landroid/os/ParcelUuid;

    .line 21
    iget-object v8, v4, Lj/a/a/a/a/a/h;->A:Landroid/os/ParcelUuid;

    .line 22
    invoke-virtual {v6, v7, v8}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v6

    .line 23
    iget v7, v4, Lj/a/a/a/a/a/h;->E:I

    .line 24
    iget-object v8, v4, Lj/a/a/a/a/a/h;->F:[B

    .line 25
    iget-object v9, v4, Lj/a/a/a/a/a/h;->G:[B

    .line 26
    invoke-virtual {v6, v7, v8, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 27
    iget-object v6, v4, Lj/a/a/a/a/a/h;->B:Landroid/os/ParcelUuid;

    if-eqz v6, :cond_0

    .line 28
    iget-object v7, v4, Lj/a/a/a/a/a/h;->C:[B

    .line 29
    iget-object v4, v4, Lj/a/a/a/a/a/h;->D:[B

    .line 30
    invoke-virtual {v5, v6, v7, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 31
    :cond_0
    invoke-virtual {v5}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, v15, Lj/a/a/a/a/a/b$b;->o:Landroid/bluetooth/le/ScanCallback;

    .line 34
    invoke-virtual {v12, v3, v2, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    return-void

    .line 35
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "scanner already started with given callback"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 36
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 37
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "BT le scanner not available"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lj/a/a/a/a/a/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lj/a/a/a/a/a/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a/a/a/a/a/b$b;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lj/a/a/a/a/a/a$a;->a()V

    .line 5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p1, Lj/a/a/a/a/a/b$b;->o:Landroid/bluetooth/le/ScanCallback;

    .line 8
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
