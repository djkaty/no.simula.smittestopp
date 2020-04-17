.class public Lno/nordicsemi/android/support/v18/scanner/ScannerService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final x:Ljava/lang/Object;

.field public y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/app/PendingIntent;",
            "Lj/a/a/a/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/PendingIntent;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/a/a/a/a/a/g;

    .line 11
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    :try_start_1
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lj/a/a/a/a/a/a;->b(Lj/a/a/a/a/a/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ScannerService"

    const-string v2, "Stopping scanning failed"

    .line 15
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;Lj/a/a/a/a/a/k;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/h;",
            ">;",
            "Lj/a/a/a/a/a/k;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lj/a/a/a/a/a/f;

    invoke-direct {v0, p3, p2, p0}, Lj/a/a/a/a/a/f;-><init>(Landroid/app/PendingIntent;Lj/a/a/a/a/a/k;Landroid/app/Service;)V

    .line 2
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object p3

    .line 6
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->z:Landroid/os/Handler;

    invoke-virtual {p3, p1, p2, v0, v1}, Lj/a/a/a/a/a/a;->a(Ljava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ScannerService"

    const-string p3, "Starting scanning failed"

    .line 7
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->z:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj/a/a/a/a/a/g;

    .line 3
    :try_start_0
    invoke-virtual {v0, v2}, Lj/a/a/a/a/a/a;->b(Lj/a/a/a/a/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    .line 6
    iput-object v0, p0, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->z:Landroid/os/Handler;

    .line 7
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "no.nordicsemi.android.support.v18.EXTRA_PENDING_INTENT"

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const-string v3, "no.nordicsemi.android.support.v18.EXTRA_START"

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    const/4 v5, 0x2

    if-nez v2, :cond_1

    .line 3
    iget-object v6, v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->x:Ljava/lang/Object;

    monitor-enter v6

    .line 4
    :try_start_0
    iget-object v0, v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return v5

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 8
    :cond_1
    iget-object v6, v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->x:Ljava/lang/Object;

    monitor-enter v6

    .line 9
    :try_start_2
    iget-object v7, v1, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->y:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 10
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_5

    if-nez v7, :cond_5

    const-string v3, "no.nordicsemi.android.support.v18.EXTRA_FILTERS"

    .line 11
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "no.nordicsemi.android.support.v18.EXTRA_SETTINGS"

    .line 12
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lj/a/a/a/a/a/k;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    const/16 v17, 0x1

    const-wide/16 v9, 0x0

    const/4 v12, 0x3

    const/16 v14, 0xff

    const-wide/16 v20, 0x2710

    const-wide/16 v15, 0x0

    cmp-long v0, v9, v15

    if-nez v0, :cond_4

    cmp-long v0, v9, v15

    if-nez v0, :cond_4

    const-wide/16 v15, 0x1f4

    const-wide/16 v18, 0x1194

    move-wide/from16 v22, v15

    move-wide/from16 v24, v18

    goto :goto_1

    :cond_4
    move-wide/from16 v22, v9

    move-wide/from16 v24, v22

    .line 14
    :goto_1
    new-instance v0, Lj/a/a/a/a/a/k;

    move-object v6, v0

    const/16 v26, 0x0

    move/from16 v8, v17

    move/from16 v11, v17

    move/from16 v13, v17

    move/from16 v15, v17

    move/from16 v16, v17

    move-wide/from16 v18, v20

    invoke-direct/range {v6 .. v26}, Lj/a/a/a/a/a/k;-><init>(IIJIIZIZZZJJJJLj/a/a/a/a/a/k$a;)V

    .line 15
    :goto_2
    invoke-virtual {v1, v3, v0, v2}, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->a(Ljava/util/List;Lj/a/a/a/a/a/k;Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    .line 16
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/support/v18/scanner/ScannerService;->a(Landroid/app/PendingIntent;)V

    :cond_6
    :goto_3
    return v5

    :catchall_1
    move-exception v0

    .line 17
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
