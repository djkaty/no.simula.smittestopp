.class public Lno/nordicsemi/android/support/v18/scanner/PendingIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v0, :cond_14

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v2, "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

    .line 1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "no.nordicsemi.android.support.v18.EXTRA_FILTERS"

    .line 2
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "no.nordicsemi.android.support.v18.EXTRA_SETTINGS"

    .line 3
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/ScanSettings;

    if-eqz v3, :cond_14

    if-nez v4, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v5, 0x1

    const-string v6, "no.nordicsemi.android.support.v18.EXTRA_USE_HARDWARE_BATCHING"

    .line 4
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "no.nordicsemi.android.support.v18.EXTRA_USE_HARDWARE_FILTERING"

    .line 5
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "no.nordicsemi.android.support.v18.EXTRA_USE_HARDWARE_CALLBACK_TYPES"

    .line 6
    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-wide/16 v9, 0x2710

    const-string v11, "no.nordicsemi.android.support.v18.EXTRA_MATCH_LOST_TIMEOUT"

    .line 7
    invoke-virtual {v1, v11, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v13, "no.nordicsemi.android.support.v18.EXTRA_MATCH_LOST_INTERVAL"

    .line 8
    invoke-virtual {v1, v13, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v13, "no.nordicsemi.android.support.v18.EXTRA_MATCH_MODE"

    .line 9
    invoke-virtual {v1, v13, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v13, 0x3

    const-string v14, "no.nordicsemi.android.support.v18.EXTRA_NUM_OF_MATCHES"

    .line 10
    invoke-virtual {v1, v14, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 11
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object v14

    .line 12
    move-object v15, v14

    check-cast v15, Lj/a/a/a/a/a/d;

    if-eqz v15, :cond_13

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/le/ScanFilter;

    move-object/from16 v17, v3

    .line 15
    new-instance v3, Lj/a/a/a/a/a/h$b;

    invoke-direct {v3}, Lj/a/a/a/a/a/h$b;-><init>()V

    .line 16
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lj/a/a/a/a/a/h$b;->a(Ljava/lang/String;)Lj/a/a/a/a/a/h$b;

    .line 17
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 18
    iput-object v0, v3, Lj/a/a/a/a/a/h$b;->a:Ljava/lang/String;

    .line 19
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    move-object/from16 v18, v2

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_4
    :goto_1
    iput-object v0, v3, Lj/a/a/a/a/a/h$b;->c:Landroid/os/ParcelUuid;

    .line 22
    iput-object v2, v3, Lj/a/a/a/a/a/h$b;->d:Landroid/os/ParcelUuid;

    .line 23
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v2

    move-object/from16 v19, v15

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v15

    invoke-virtual {v3, v0, v2, v15}, Lj/a/a/a/a/a/h$b;->a(I[B[B)Lj/a/a/a/a/a/h$b;

    .line 24
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/le/ScanFilter;->getServiceDataMask()[B

    move-result-object v15

    invoke-virtual {v3, v0, v2, v15}, Lj/a/a/a/a/a/h$b;->a(Landroid/os/ParcelUuid;[B[B)Lj/a/a/a/a/a/h$b;

    .line 26
    :cond_5
    invoke-virtual {v3}, Lj/a/a/a/a/a/h$b;->a()Lj/a/a/a/a/a/h;

    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v15, v19

    goto :goto_0

    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    .line 28
    new-instance v0, Lj/a/a/a/a/a/k$b;

    invoke-direct {v0}, Lj/a/a/a/a/a/k$b;-><init>()V

    .line 29
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getLegacy()Z

    move-result v2

    .line 30
    iput-boolean v2, v0, Lj/a/a/a/a/a/k$b;->f:Z

    .line 31
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getPhy()I

    move-result v2

    .line 32
    iput v2, v0, Lj/a/a/a/a/a/k$b;->g:I

    .line 33
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v15, 0x1

    if-eq v2, v15, :cond_9

    if-eq v2, v3, :cond_9

    const/4 v15, 0x4

    if-ne v2, v15, :cond_7

    goto :goto_2

    :cond_7
    const/4 v15, 0x6

    if-ne v2, v15, :cond_8

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v15, 0x1

    :goto_3
    if-eqz v15, :cond_12

    .line 34
    iput v2, v0, Lj/a/a/a/a/a/k$b;->b:I

    .line 35
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lj/a/a/a/a/a/k$b;->a(I)Lj/a/a/a/a/a/k$b;

    .line 36
    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v3

    const-wide/16 v16, 0x0

    cmp-long v2, v3, v16

    if-ltz v2, :cond_11

    .line 37
    iput-wide v3, v0, Lj/a/a/a/a/a/k$b;->c:J

    .line 38
    iput-boolean v6, v0, Lj/a/a/a/a/a/k$b;->i:Z

    .line 39
    iput-boolean v7, v0, Lj/a/a/a/a/a/k$b;->h:Z

    .line 40
    iput-boolean v8, v0, Lj/a/a/a/a/a/k$b;->j:Z

    cmp-long v2, v11, v16

    if-lez v2, :cond_10

    cmp-long v2, v9, v16

    if-lez v2, :cond_10

    .line 41
    iput-wide v11, v0, Lj/a/a/a/a/a/k$b;->k:J

    .line 42
    iput-wide v9, v0, Lj/a/a/a/a/a/k$b;->l:J

    const/4 v2, 0x1

    if-lt v5, v2, :cond_f

    const/4 v3, 0x2

    if-gt v5, v3, :cond_f

    .line 43
    iput v5, v0, Lj/a/a/a/a/a/k$b;->d:I

    if-lt v13, v2, :cond_e

    const/4 v2, 0x3

    if-gt v13, v2, :cond_e

    .line 44
    iput v13, v0, Lj/a/a/a/a/a/k$b;->e:I

    .line 45
    invoke-virtual {v0}, Lj/a/a/a/a/a/k$b;->a()Lj/a/a/a/a/a/k;

    move-result-object v0

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedScanBatchingSupported()Z

    move-result v4

    .line 48
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v5

    .line 49
    monitor-enter v14

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    .line 50
    :try_start_0
    invoke-virtual {v9, v2}, Lj/a/a/a/a/a/d;->a(Landroid/app/PendingIntent;)Lj/a/a/a/a/a/d$a;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_a

    .line 51
    :try_start_1
    new-instance v10, Lj/a/a/a/a/a/d$a;

    const/4 v11, 0x0

    move-object v3, v10

    move-object v6, v1

    move-object v7, v0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lj/a/a/a/a/a/d$a;-><init>(ZZLjava/util/List;Lj/a/a/a/a/a/k;Landroid/app/PendingIntent;)V

    .line 52
    invoke-virtual {v9, v2, v10}, Lj/a/a/a/a/a/d;->a(Landroid/app/PendingIntent;Lj/a/a/a/a/a/d$a;)V

    move-object v3, v10

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    .line 53
    :goto_4
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v1, v3, Lj/a/a/a/a/a/d$a;->o:Lj/a/a/a/a/a/f;

    move-object/from16 v2, p1

    .line 55
    iput-object v2, v1, Lj/a/a/a/a/a/f;->b:Landroid/content/Context;

    const-string v1, "android.bluetooth.le.extra.LIST_SCAN_RESULT"

    move-object/from16 v2, p2

    .line 56
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 57
    invoke-virtual {v9, v1}, Lj/a/a/a/a/a/b;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    iget-wide v4, v0, Lj/a/a/a/a/a/k;->B:J

    cmp-long v0, v4, v16

    if-lez v0, :cond_b

    .line 59
    invoke-virtual {v3, v1}, Lj/a/a/a/a/a/a$a;->a(Ljava/util/List;)V

    goto :goto_5

    .line 60
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.bluetooth.le.extra.CALLBACK_TYPE"

    const/4 v4, 0x1

    .line 61
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/a/a/a/a/a/j;

    invoke-virtual {v3, v0, v1}, Lj/a/a/a/a/a/a$a;->a(ILj/a/a/a/a/a/j;)V

    goto :goto_5

    :cond_c
    const-string v0, "android.bluetooth.le.extra.ERROR_CODE"

    .line 63
    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    iget-object v1, v3, Lj/a/a/a/a/a/a$a;->h:Lj/a/a/a/a/a/g;

    invoke-virtual {v1, v0}, Lj/a/a/a/a/a/g;->a(I)V

    .line 65
    :cond_d
    :goto_5
    iget-object v0, v3, Lj/a/a/a/a/a/d$a;->o:Lj/a/a/a/a/a/f;

    const/4 v1, 0x0

    .line 66
    iput-object v1, v0, Lj/a/a/a/a/a/f;->b:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 67
    :catch_0
    :try_start_2
    monitor-exit v14

    return-void

    .line 68
    :goto_6
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 69
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid numOfMatches "

    invoke-static {v1, v13}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid matchMode "

    invoke-static {v1, v5}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDeviceAgeMillis and taskIntervalMillis must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid callback type - "

    invoke-static {v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v0, 0x0

    .line 74
    throw v0

    :cond_14
    :goto_7
    return-void
.end method
