.class public final Lno/simula/corona/DataCollectorService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lj/b/a/b0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/simula/corona/DataCollectorService$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Lcom/google/android/gms/location/LocationRequest;

.field public C:Le/c/a/a/e/b;

.field public D:Le/c/a/a/e/a;

.field public E:J

.field public final F:I

.field public G:Lj/b/a/d0/a;

.field public H:Landroid/app/Notification;

.field public I:Landroid/app/Notification;

.field public J:Landroid/app/Notification;

.field public K:Lno/simula/corona/MeasurementDatabase;

.field public L:Lj/b/a/f;

.field public M:Lj/b/a/h;

.field public N:Lj/b/a/b0/c;

.field public O:Z

.field public P:Lj/b/a/b0/a;

.field public Q:Lj/b/a/b0/i;

.field public R:Lj/b/a/b0/e;

.field public x:Lj/b/a/v;

.field public y:Z

.field public final z:Lj/b/a/d;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lj/b/a/d;

    invoke-direct {v0, p0}, Lj/b/a/d;-><init>(Lno/simula/corona/DataCollectorService;)V

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->z:Lj/b/a/d;

    .line 3
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const-wide/16 v1, 0x2ee0

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->a(J)V

    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->y:J

    iget-boolean v3, v0, Lcom/google/android/gms/location/LocationRequest;->A:Z

    if-nez v3, :cond_0

    long-to-double v1, v1

    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->z:J

    :cond_0
    const-wide/16 v1, 0x2710

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->a(J)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/location/LocationRequest;->A:Z

    iput-wide v1, v0, Lcom/google/android/gms/location/LocationRequest;->z:J

    const/16 v1, 0x64

    .line 6
    iput v1, v0, Lcom/google/android/gms/location/LocationRequest;->x:I

    .line 7
    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->B:Lcom/google/android/gms/location/LocationRequest;

    .line 8
    invoke-static {}, Lj/b/a/a0;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lno/simula/corona/DataCollectorService;->E:J

    .line 9
    iput v3, p0, Lno/simula/corona/DataCollectorService;->F:I

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/DataCollectorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    const-string v2, "service-command"

    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const-string p0, "context"

    .line 30
    invoke-static {p0}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lno/simula/corona/DataCollectorService;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lno/simula/corona/SplashActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 141
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->h()V

    .line 143
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->g()V

    .line 144
    invoke-static {p0}, Lj/b/a/a0;->b(Landroid/content/Context;)V

    .line 145
    iget-object v2, p0, Lno/simula/corona/DataCollectorService;->K:Lno/simula/corona/MeasurementDatabase;

    const-string v3, "mDatabase"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lno/simula/corona/MeasurementDatabase;->h()Lj/b/a/b;

    move-result-object v2

    check-cast v2, Lj/b/a/c;

    invoke-virtual {v2}, Lj/b/a/c;->a()V

    .line 146
    iget-object v2, p0, Lno/simula/corona/DataCollectorService;->K:Lno/simula/corona/MeasurementDatabase;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lno/simula/corona/MeasurementDatabase;->i()Lj/b/a/s;

    move-result-object v0

    check-cast v0, Lj/b/a/t;

    invoke-virtual {v0}, Lj/b/a/t;->a()V

    .line 147
    new-instance v0, Ld/i/a/g;

    invoke-direct {v0, p0}, Ld/i/a/g;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120047

    .line 148
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/i/a/g;->b(Ljava/lang/CharSequence;)Ld/i/a/g;

    const v2, 0x7f0800a8

    .line 149
    iget-object v3, v0, Ld/i/a/g;->O:Landroid/app/Notification;

    iput v2, v3, Landroid/app/Notification;->icon:I

    const v2, 0x7f120046

    .line 150
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/i/a/g;->a(Ljava/lang/CharSequence;)Ld/i/a/g;

    const/4 v2, 0x1

    .line 151
    iput v2, v0, Ld/i/a/g;->l:I

    .line 152
    iput-object v1, v0, Ld/i/a/g;->f:Landroid/app/PendingIntent;

    .line 153
    invoke-virtual {v0, v2}, Ld/i/a/g;->a(Z)Ld/i/a/g;

    .line 154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const-string v1, "Smittestopp Reminders"

    .line 155
    iput-object v1, v0, Ld/i/a/g;->I:Ljava/lang/String;

    .line 156
    :cond_0
    invoke-virtual {v0}, Ld/i/a/g;->a()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "notification"

    .line 157
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x11

    .line 158
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 159
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->x:Lj/b/a/v;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lj/b/a/v;->f()V

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 161
    :cond_2
    new-instance p0, Lh/e;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, v0}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_3
    invoke-static {v3}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_4
    invoke-static {v3}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_5
    throw v0
.end method

.method public static final synthetic a(Lno/simula/corona/DataCollectorService;Landroid/location/Location;)V
    .locals 24

    move-object/from16 v0, p0

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "), accuracy: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 51
    sget-object v5, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v5, v2, v4}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const/16 v2, 0x3e8

    int-to-long v6, v2

    .line 53
    div-long v9, v4, v6

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v11, v2

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v1, v2

    .line 59
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v15, v8, :cond_0

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v8

    move-wide/from16 v17, v4

    float-to-double v3, v8

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v5

    move-wide/from16 v19, v3

    float-to-double v3, v5

    move-wide/from16 v22, v3

    move-wide/from16 v3, v19

    move-wide/from16 v19, v22

    goto :goto_0

    :cond_0
    move-wide/from16 v17, v4

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    move-wide/from16 v19, v3

    .line 62
    :goto_0
    iget-object v5, v0, Lno/simula/corona/DataCollectorService;->K:Lno/simula/corona/MeasurementDatabase;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lno/simula/corona/MeasurementDatabase;->i()Lj/b/a/s;

    move-result-object v5

    const/4 v8, 0x1

    new-array v15, v8, [Lj/b/a/r;

    .line 63
    new-instance v21, Lj/b/a/r;

    .line 64
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 65
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v8, v21

    move-object/from16 v11, v16

    move-object v12, v6

    move-object v13, v7

    move-object v2, v15

    move-object v15, v3

    move-object/from16 v16, v1

    .line 67
    invoke-direct/range {v8 .. v18}, Lj/b/a/r;-><init>(JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Z)V

    const/4 v1, 0x0

    aput-object v21, v2, v1

    .line 68
    check-cast v5, Lj/b/a/t;

    .line 69
    iget-object v1, v5, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->b()V

    .line 70
    iget-object v1, v5, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->c()V

    .line 71
    :try_start_0
    iget-object v1, v5, Lj/b/a/t;->b:Ld/u/b;

    invoke-virtual {v1, v2}, Ld/u/b;->a([Ljava/lang/Object;)V

    .line 72
    iget-object v1, v5, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v1, v5, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->d()V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lno/simula/corona/DataCollectorService;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual/range {p0 .. p0}, Lno/simula/corona/DataCollectorService;->f()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 76
    iget-object v1, v5, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->d()V

    .line 77
    throw v0

    :cond_2
    const-string v0, "mDatabase"

    .line 78
    invoke-static {v0}, Lh/k/b/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 79
    throw v0
.end method

.method public static final synthetic a(Lno/simula/corona/DataCollectorService;Ljava/lang/String;Lj/b/a/o;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    iget-object v1, p2, Lj/b/a/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    .line 2
    iget-object v4, p2, Lj/b/a/o;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh/c;

    .line 3
    iget-object v5, v4, Lh/c;->x:Ljava/lang/Object;

    .line 4
    check-cast v5, Ljava/util/List;

    .line 5
    iget-object v4, v4, Lh/c;->y:Ljava/lang/Object;

    .line 6
    check-cast v4, Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_6

    const-string v6, "events"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 8
    new-instance v6, Lcom/microsoft/azure/sdk/iot/device/Message;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/microsoft/azure/sdk/iot/device/Message;-><init>(Ljava/lang/String;)V

    const-string v4, "eventType"

    .line 9
    invoke-virtual {v6, v4, p1}, Lcom/microsoft/azure/sdk/iot/device/Message;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lno/simula/corona/DataCollectorService;->M:Lj/b/a/h;

    if-eqz v4, :cond_5

    new-instance v7, Lno/simula/corona/DataCollectorService$a;

    invoke-direct {v7, p0, p1, v5}, Lno/simula/corona/DataCollectorService$a;-><init>(Lno/simula/corona/DataCollectorService;Ljava/lang/String;Ljava/util/List;)V

    .line 11
    iget-boolean v5, v4, Lj/b/a/h;->c:Z

    if-eqz v5, :cond_4

    iget-object v5, v4, Lj/b/a/h;->b:Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    if-nez v5, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v6}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentType()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v4, Lj/b/a/h;->h:Ljava/lang/String;

    invoke-static {v5, v8}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 13
    iget-object v5, v4, Lj/b/a/h;->h:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentTypeFinal(Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {v6}, Lcom/microsoft/azure/sdk/iot/device/Message;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v4, Lj/b/a/h;->g:Ljava/lang/String;

    invoke-static {v5, v8}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 15
    iget-object v5, v4, Lj/b/a/h;->g:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/microsoft/azure/sdk/iot/device/Message;->setContentEncoding(Ljava/lang/String;)V

    .line 16
    :cond_2
    :try_start_0
    iget-object v4, v4, Lj/b/a/h;->b:Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v6, v7, v0}, Lcom/microsoft/azure/sdk/iot/device/InternalClient;->sendEventAsync(Lcom/microsoft/azure/sdk/iot/device/Message;Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;Ljava/lang/Object;)V

    :cond_3
    const-string v4, "Pushed message"

    new-array v5, v2, [Ljava/lang/Object;

    .line 17
    sget-object v6, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v6, v4, v5}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 18
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "where"

    const-string v8, "IoTHubDevice::sendEventAsync"

    .line 19
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v4, v5, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 21
    sget-object v5, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v5, v4}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 22
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v4, v5}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-array v4, v2, [Ljava/lang/Object;

    .line 23
    sget-object v5, Ll/a/a;->d:Ll/a/a$b;

    const-string v6, "Device is not connected or provisioned"

    invoke-virtual {v5, v6, v4}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object v4, Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;->ERROR:Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v4, v5}, Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;->execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string p0, "mDevice"

    .line 25
    invoke-static {p0}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    .line 26
    :cond_8
    throw v0
.end method

.method public static final synthetic a(Lno/simula/corona/DataCollectorService;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x190aa

    const-string v3, "mDatabase"

    const-string v4, ")"

    const/4 v5, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x755ac2ae

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "bluetooth"

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lno/simula/corona/DataCollectorService;->K:Lno/simula/corona/MeasurementDatabase;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lno/simula/corona/MeasurementDatabase;->h()Lj/b/a/b;

    move-result-object p0

    check-cast p0, Lj/b/a/c;

    .line 82
    iget-object p1, p0, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {p1}, Ld/u/g;->b()V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDATE bluetoothcontact SET isUploaded = 1 WHERE id in ("

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    invoke-static {p1, v0}, Ld/u/m/c;->a(Ljava/lang/StringBuilder;I)V

    .line 87
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v0, p1}, Ld/u/g;->a(Ljava/lang/String;)Ld/w/a/f/f;

    move-result-object p1

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 93
    iget-object v2, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v5, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    :cond_2
    iget-object p2, p0, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {p2}, Ld/u/g;->c()V

    .line 95
    :try_start_0
    invoke-virtual {p1}, Ld/w/a/f/f;->a()I

    .line 96
    iget-object p1, p0, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {p1}, Ld/u/g;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object p0, p0, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {p0}, Ld/u/g;->d()V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {p0}, Ld/u/g;->d()V

    .line 98
    throw p1

    .line 99
    :cond_3
    invoke-static {v3}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v1, "gps"

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lno/simula/corona/DataCollectorService;->K:Lno/simula/corona/MeasurementDatabase;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lno/simula/corona/MeasurementDatabase;->i()Lj/b/a/s;

    move-result-object p0

    check-cast p0, Lj/b/a/t;

    .line 101
    iget-object p1, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {p1}, Ld/u/g;->b()V

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDATE measurement SET isUploaded = 1 WHERE id in ("

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 105
    invoke-static {p1, v0}, Ld/u/m/c;->a(Ljava/lang/StringBuilder;I)V

    .line 106
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v0, p1}, Ld/u/g;->a(Ljava/lang/String;)Ld/w/a/f/f;

    move-result-object p1

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 110
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 112
    iget-object v2, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v5, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 113
    :cond_6
    iget-object p2, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {p2}, Ld/u/g;->c()V

    .line 114
    :try_start_1
    invoke-virtual {p1}, Ld/w/a/f/f;->a()I

    .line 115
    iget-object p1, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {p1}, Ld/u/g;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    iget-object p0, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {p0}, Ld/u/g;->d()V

    goto :goto_5

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {p0}, Ld/u/g;->d()V

    .line 117
    throw p1

    .line 118
    :cond_7
    invoke-static {v3}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_8
    :goto_4
    new-instance p0, Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-direct {p0}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    const-string p2, "eventType"

    invoke-virtual {p0, p2, p1}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;

    const-string p1, "Mark upload failed"

    .line 120
    invoke-static {p1, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;)V

    :goto_5
    return-void

    .line 121
    :cond_9
    throw v0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/DataCollectorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "service-command"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const-string p0, "context"

    .line 4
    invoke-static {p0}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 6

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/DataCollectorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v2, "from-service"

    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 33
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 34
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lno/simula/corona/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v4, 0x10008000

    .line 35
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 37
    new-instance v3, Ld/i/a/g;

    invoke-direct {v3, p0}, Ld/i/a/g;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120080

    .line 38
    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ld/i/a/g;->b(Ljava/lang/CharSequence;)Ld/i/a/g;

    .line 39
    iget-object v4, v3, Ld/i/a/g;->O:Landroid/app/Notification;

    const v5, 0x7f0800a8

    iput v5, v4, Landroid/app/Notification;->icon:I

    const v4, 0x7f120073

    .line 40
    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ld/i/a/g;->a(Ljava/lang/CharSequence;)Ld/i/a/g;

    .line 41
    iput v1, v3, Ld/i/a/g;->l:I

    const v1, 0x7f0800a9

    const v4, 0x7f120093

    .line 42
    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0}, Ld/i/a/g;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ld/i/a/g;

    const v0, 0x7f0800a4

    const v1, 0x7f120078

    .line 43
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v2}, Ld/i/a/g;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ld/i/a/g;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "Smittestopp Notification Channel"

    .line 45
    iput-object v0, v3, Ld/i/a/g;->I:Ljava/lang/String;

    .line 46
    :cond_0
    invoke-virtual {v3}, Ld/i/a/g;->a()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(I)Landroid/app/Notification;
    .locals 3

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 166
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 167
    new-instance v1, Ld/i/a/g;

    invoke-direct {v1, p0}, Ld/i/a/g;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ld/i/a/g;->b(Ljava/lang/CharSequence;)Ld/i/a/g;

    .line 169
    iget-object p1, v1, Ld/i/a/g;->O:Landroid/app/Notification;

    const v2, 0x7f0800a8

    iput v2, p1, Landroid/app/Notification;->icon:I

    const p1, 0x7f120087

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ld/i/a/g;->a(Ljava/lang/CharSequence;)Ld/i/a/g;

    const/4 p1, 0x1

    .line 171
    iput p1, v1, Ld/i/a/g;->l:I

    .line 172
    iput-object v0, v1, Ld/i/a/g;->f:Landroid/app/PendingIntent;

    .line 173
    invoke-virtual {v1, p1}, Ld/i/a/g;->a(Z)Ld/i/a/g;

    .line 174
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const-string p1, "Smittestopp Reminders"

    .line 175
    iput-object p1, v1, Ld/i/a/g;->I:Ljava/lang/String;

    .line 176
    :cond_0
    invoke-virtual {v1}, Ld/i/a/g;->a()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "notification.build()"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;IIJ)V
    .locals 13

    move-object v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", signal strength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    .line 123
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v4, v2, v3}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 124
    div-long v2, p4, v2

    move-object v9, p0

    .line 125
    iget-object v4, v9, Lno/simula/corona/DataCollectorService;->K:Lno/simula/corona/MeasurementDatabase;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lno/simula/corona/MeasurementDatabase;->h()Lj/b/a/b;

    move-result-object v10

    const/4 v1, 0x1

    new-array v11, v1, [Lj/b/a/a;

    .line 126
    new-instance v12, Lj/b/a/a;

    const/4 v7, 0x0

    move-object v1, v12

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    .line 127
    invoke-direct/range {v1 .. v7}, Lj/b/a/a;-><init>(JLjava/lang/String;IIZ)V

    aput-object v12, v11, v8

    .line 128
    check-cast v10, Lj/b/a/c;

    .line 129
    iget-object v0, v10, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v0}, Ld/u/g;->b()V

    .line 130
    iget-object v0, v10, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v0}, Ld/u/g;->c()V

    .line 131
    :try_start_0
    iget-object v0, v10, Lj/b/a/c;->b:Ld/u/b;

    invoke-virtual {v0, v11}, Ld/u/b;->a([Ljava/lang/Object;)V

    .line 132
    iget-object v0, v10, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v0}, Ld/u/g;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, v10, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v0}, Ld/u/g;->d()V

    .line 134
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 136
    iget-object v1, v10, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->d()V

    .line 137
    throw v0

    :cond_1
    const-string v0, "mDatabase"

    .line 138
    invoke-static {v0}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v9, p0

    const-string v0, "deviceId"

    .line 139
    invoke-static {v0}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lno/simula/corona/DataCollectorService;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lno/simula/corona/DataCollectorService;->O:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->H:Landroid/app/Notification;

    .line 2
    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->I:Landroid/app/Notification;

    const-string v0, "notification"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xe

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v1, 0xf

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lh/e;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->R:Lj/b/a/b0/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->P:Lj/b/a/b0/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->Q:Lj/b/a/b0/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    const-string v4, "bluetooth"

    if-nez v0, :cond_4

    const-string v0, "bluetoothManager.adapter"

    new-array v5, v1, [Ljava/lang/Object;

    .line 2
    sget-object v6, Ll/a/a;->d:Ll/a/a$b;

    const-string v7, "Initializing bluetooth components"

    invoke-virtual {v6, v7, v5}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Landroid/bluetooth/BluetoothManager;

    .line 4
    :try_start_0
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-ne v6, v2, :cond_2

    .line 5
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-static {v6, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "Le advertiser is not supported on this device"

    new-array v7, v1, [Ljava/lang/Object;

    .line 6
    sget-object v8, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v8, v6, v7}, Ll/a/a$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "LeAdvertise"

    .line 7
    new-instance v7, Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-direct {v7}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    const-string v8, "what"

    const-string v9, "Not supported"

    .line 8
    invoke-virtual {v7, v8, v9}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;

    const-string v8, "model"

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;

    .line 10
    invoke-static {v6, v7}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;)V

    .line 11
    :cond_1
    new-instance v6, Lj/b/a/b0/e;

    invoke-direct {v6, p0, v5}, Lj/b/a/b0/e;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothManager;)V

    iput-object v6, p0, Lno/simula/corona/DataCollectorService;->R:Lj/b/a/b0/e;

    .line 12
    new-instance v6, Lj/b/a/b0/a;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-static {v5, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v0

    invoke-direct {v6, v0}, Lj/b/a/b0/a;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;)V

    iput-object v6, p0, Lno/simula/corona/DataCollectorService;->P:Lj/b/a/b0/a;

    .line 13
    new-instance v0, Lj/b/a/b0/i;

    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "this.application"

    invoke-static {v5, v6}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object v6

    const-string v7, "BluetoothLeScannerCompat.getScanner()"

    invoke-static {v6, v7}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {v0, v5, p0, v6}, Lj/b/a/b0/i;-><init>(Landroid/app/Application;Lj/b/a/b0/h;Lj/a/a/a/a/a/a;)V

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->Q:Lj/b/a/b0/i;

    goto :goto_1

    :cond_2
    const-string v0, "Bluetooth adapter is null"

    new-array v5, v1, [Ljava/lang/Object;

    .line 17
    sget-object v6, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v6, v0, v5}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "where"

    const-string v7, "DataCollector::initializeBluetooth"

    .line 19
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 20
    invoke-static {v0, v5, v6}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    goto :goto_1

    .line 21
    :cond_3
    new-instance v0, Lh/e;

    invoke-direct {v0, v3}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_4
    :goto_1
    invoke-virtual {p0, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    const-string v5, "Starting bluetooth updates"

    invoke-virtual {v4, v5, v3}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_9

    .line 25
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->R:Lj/b/a/b0/e;

    if-eqz v0, :cond_6

    .line 26
    new-instance v3, Lj/b/a/b0/d;

    invoke-direct {v3, v0}, Lj/b/a/b0/d;-><init>(Lj/b/a/b0/e;)V

    .line 27
    iget-object v4, v0, Lj/b/a/b0/e;->e:Landroid/bluetooth/BluetoothManager;

    iget-object v5, v0, Lj/b/a/b0/e;->d:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 28
    iget-object v4, v0, Lj/b/a/b0/e;->b:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattServer;->addService(Landroid/bluetooth/BluetoothGattService;)Z

    .line 29
    :cond_5
    iput-object v3, v0, Lj/b/a/b0/e;->c:Landroid/bluetooth/BluetoothGattServer;

    .line 30
    :cond_6
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->P:Lj/b/a/b0/a;

    if-eqz v0, :cond_7

    .line 31
    iget-object v3, v0, Lj/b/a/b0/a;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v3, :cond_7

    .line 32
    iget-object v4, v0, Lj/b/a/b0/a;->b:Landroid/bluetooth/le/AdvertiseSettings;

    .line 33
    iget-object v5, v0, Lj/b/a/b0/a;->a:Landroid/bluetooth/le/AdvertiseData;

    .line 34
    iget-object v0, v0, Lj/b/a/b0/a;->c:Lj/b/a/b0/b;

    .line 35
    invoke-virtual {v3, v4, v5, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 36
    :cond_7
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->Q:Lj/b/a/b0/i;

    if-eqz v0, :cond_8

    .line 37
    iput-boolean v2, v0, Lj/b/a/b0/i;->b:Z

    .line 38
    invoke-virtual {v0}, Lj/b/a/b0/i;->a()V

    .line 39
    iget-object v0, v0, Lj/b/a/b0/i;->d:Lj/b/a/b0/i$a;

    const/4 v3, 0x3

    const-wide/32 v4, 0x88b8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    :cond_8
    iput-boolean v2, p0, Lno/simula/corona/DataCollectorService;->O:Z

    .line 41
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    new-instance v3, Lj/b/a/c0/b;

    invoke-direct {v3, v2}, Lj/b/a/c0/b;-><init>(Z)V

    invoke-virtual {v0, v3}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->x:Lj/b/a/v;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lj/b/a/v;->e()V

    goto :goto_2

    :cond_9
    const-string v0, "Bluetooth adaptor is off"

    new-array v2, v1, [Ljava/lang/Object;

    .line 43
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, v0, v2}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 44
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "Lost bluetooth permissions"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_2
    return-void

    .line 45
    :cond_b
    new-instance v0, Lh/e;

    invoke-direct {v0, v3}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "Starting location updates"

    invoke-virtual {v2, v3, v1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    :try_start_0
    invoke-static {p0}, Lj/b/a/d0/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Location services are off"

    new-array v2, v0, [Ljava/lang/Object;

    .line 3
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, v1, v2}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lno/simula/corona/DataCollectorService;->D:Le/c/a/a/e/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    iget-object v3, p0, Lno/simula/corona/DataCollectorService;->B:Lcom/google/android/gms/location/LocationRequest;

    .line 6
    iget-object v4, p0, Lno/simula/corona/DataCollectorService;->C:Le/c/a/a/e/b;

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v3, v4, v2}, Le/c/a/a/e/a;->a(Lcom/google/android/gms/location/LocationRequest;Le/c/a/a/e/b;Landroid/os/Looper;)Le/c/a/a/g/h;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lno/simula/corona/DataCollectorService;->y:Z

    .line 10
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v2

    new-instance v3, Lj/b/a/c0/c;

    invoke-direct {v3, v1}, Lj/b/a/c0/c;-><init>(Z)V

    invoke-virtual {v2, v3}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lno/simula/corona/DataCollectorService;->x:Lj/b/a/v;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lj/b/a/v;->d()V

    goto :goto_0

    :cond_1
    const-string v1, "locationCallback"

    .line 12
    invoke-static {v1}, Lh/k/b/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :cond_2
    :try_start_1
    const-string v1, "fusedLocationClient"

    .line 13
    invoke-static {v1}, Lh/k/b/g;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "Lost location permissions"

    invoke-virtual {v2, v3, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {v1}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->L:Lj/b/a/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/b/a/f;->a()Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->M:Lj/b/a/h;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 3
    iget-boolean v3, v0, Lj/b/a/h;->c:Z

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v0}, Lj/b/a/h;->a()V

    return-void

    .line 5
    :cond_1
    iget-object v0, v0, Lj/b/a/h;->f:Ljava/lang/String;

    const-string v3, "."

    .line 6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v7, "1.0.2"

    invoke-static {v7, v4, v6, v6, v5}, Lh/o/g;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 9
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    .line 10
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 11
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6, v6, v5}, Lh/o/g;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 13
    new-instance v3, Lcom/microsoft/appcenter/analytics/EventProperties;

    invoke-direct {v3}, Lcom/microsoft/appcenter/analytics/EventProperties;-><init>()V

    const-string v4, "version"

    invoke-virtual {v3, v4, v0}, Lcom/microsoft/appcenter/analytics/EventProperties;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/analytics/EventProperties;

    const-string v0, "Malformed version string"

    .line 14
    invoke-static {v0, v3}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/EventProperties;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 17
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v0, v7, :cond_6

    if-ne v0, v7, :cond_4

    if-gt v5, v9, :cond_6

    :cond_4
    if-ne v0, v7, :cond_5

    if-ne v5, v9, :cond_5

    if-le v3, v4, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_d

    .line 18
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->J:Landroid/app/Notification;

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 19
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "market://details?id=no.simula.smittestopp"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 22
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.vending"

    invoke-static {v7, v8}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 23
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 24
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    .line 26
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x200000

    .line 27
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 28
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v2, v0

    :cond_9
    if-eqz v2, :cond_a

    goto :goto_3

    .line 30
    :cond_a
    new-instance v2, Landroid/content/Intent;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "no.simula.smittestopp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 32
    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    :goto_3
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 34
    new-instance v2, Ld/i/a/g;

    invoke-direct {v2, p0}, Ld/i/a/g;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12006f

    .line 35
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ld/i/a/g;->b(Ljava/lang/CharSequence;)Ld/i/a/g;

    const v3, 0x7f0800a8

    .line 36
    iget-object v4, v2, Ld/i/a/g;->O:Landroid/app/Notification;

    iput v3, v4, Landroid/app/Notification;->icon:I

    const v3, 0x7f120070

    .line 37
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ld/i/a/g;->a(Ljava/lang/CharSequence;)Ld/i/a/g;

    .line 38
    iput v1, v2, Ld/i/a/g;->l:I

    .line 39
    iput-object v0, v2, Ld/i/a/g;->f:Landroid/app/PendingIntent;

    .line 40
    invoke-virtual {v2, v1}, Ld/i/a/g;->a(Z)Ld/i/a/g;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    const-string v0, "Smittestopp Reminders"

    .line 42
    iput-object v0, v2, Ld/i/a/g;->I:Ljava/lang/String;

    .line 43
    :cond_b
    invoke-virtual {v2}, Ld/i/a/g;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->J:Landroid/app/Notification;

    const-string v0, "notification"

    .line 44
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x10

    .line 45
    iget-object v2, p0, Lno/simula/corona/DataCollectorService;->J:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4

    .line 46
    :cond_c
    new-instance v0, Lh/e;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_d
    :goto_4
    invoke-static {}, Lj/b/a/a0;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lno/simula/corona/DataCollectorService;->E:J

    .line 48
    new-instance v0, Lj/b/a/f;

    new-instance v1, Lno/simula/corona/DataCollectorService$c;

    invoke-direct {v1, p0}, Lno/simula/corona/DataCollectorService$c;-><init>(Lno/simula/corona/DataCollectorService;)V

    invoke-direct {v0, p0, v1}, Lj/b/a/f;-><init>(Landroid/content/Context;Lj/b/a/e;)V

    .line 49
    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->L:Lj/b/a/f;

    new-array v1, v6, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_e
    const-string v0, "mDevice"

    .line 51
    invoke-static {v0}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v2
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lno/simula/corona/DataCollectorService;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "Stopping bluetooth updates"

    invoke-virtual {v2, v3, v0}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "bluetooth"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 5
    :try_start_0
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->R:Lj/b/a/b0/e;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Lj/b/a/b0/e;->c:Landroid/bluetooth/BluetoothGattServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    .line 7
    :cond_0
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->Q:Lj/b/a/b0/i;

    if-eqz v0, :cond_1

    .line 8
    iput-boolean v1, v0, Lj/b/a/b0/i;->b:Z

    .line 9
    iget-object v3, v0, Lj/b/a/b0/i;->d:Lj/b/a/b0/i$a;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    invoke-virtual {v0}, Lj/b/a/b0/i;->b()V

    .line 11
    :cond_1
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->P:Lj/b/a/b0/a;

    if-eqz v0, :cond_2

    .line 12
    iget-object v2, v0, Lj/b/a/b0/a;->d:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lj/b/a/b0/a;->c:Lj/b/a/b0/b;

    invoke-virtual {v2, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 13
    :cond_2
    iput-boolean v1, p0, Lno/simula/corona/DataCollectorService;->O:Z

    .line 14
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    new-instance v2, Lj/b/a/c0/b;

    invoke-direct {v2, v1}, Lj/b/a/c0/b;-><init>(Z)V

    invoke-virtual {v0, v2}, Lk/d/a/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, v0}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 16
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "where"

    const-string v3, "DataCollector::stopBluetoothUpdates"

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v1, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->Q:Lj/b/a/b0/i;

    if-eqz v0, :cond_4

    .line 20
    iput-boolean v1, v0, Lj/b/a/b0/i;->b:Z

    .line 21
    iget-object v3, v0, Lj/b/a/b0/i;->d:Lj/b/a/b0/i$a;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    invoke-virtual {v0}, Lj/b/a/b0/i;->b()V

    .line 23
    :cond_4
    iput-boolean v1, p0, Lno/simula/corona/DataCollectorService;->O:Z

    .line 24
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    new-instance v2, Lj/b/a/c0/b;

    invoke-direct {v2, v1}, Lj/b/a/c0/b;-><init>(Z)V

    invoke-virtual {v0, v2}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_5
    new-instance v0, Lh/e;

    const-string v1, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-direct {v0, v1}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "bluetooth is already closed"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lno/simula/corona/DataCollectorService;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "Stopping location updates"

    invoke-virtual {v2, v3, v0}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->D:Le/c/a/a/e/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lno/simula/corona/DataCollectorService;->C:Le/c/a/a/e/b;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Le/c/a/a/e/a;->a(Le/c/a/a/e/b;)Le/c/a/a/g/h;

    .line 4
    iput-boolean v1, p0, Lno/simula/corona/DataCollectorService;->y:Z

    .line 5
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->x:Lj/b/a/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj/b/a/v;->g()V

    .line 6
    :cond_0
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    new-instance v2, Lj/b/a/c0/c;

    invoke-direct {v2, v1}, Lj/b/a/c0/c;-><init>(Z)V

    invoke-virtual {v0, v2}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    .line 7
    iput-boolean v1, p0, Lno/simula/corona/DataCollectorService;->y:Z

    goto :goto_0

    :cond_1
    const-string v0, "locationCallback"

    .line 8
    invoke-static {v0}, Lh/k/b/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :cond_2
    :try_start_1
    const-string v0, "fusedLocationClient"

    invoke-static {v0}, Lh/k/b/g;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    throw v2

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, v0}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-array v0, v1, [Ljava/lang/Object;

    .line 11
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "location services already closed"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final i()Z
    .locals 9

    .line 1
    invoke-static {p0}, Lj/b/a/a0;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    .line 2
    invoke-static {p0}, Lj/b/a/a0;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    sget-object v0, Lno/simula/corona/CoronaApp;->z:Lno/simula/corona/CoronaApp;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, v0, Lno/simula/corona/CoronaApp;->x:Z

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "notification"

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/app/NotificationManager;

    .line 8
    sget-object v3, Lno/simula/corona/CoronaApp;->z:Lno/simula/corona/CoronaApp;

    if-eqz v3, :cond_2

    .line 9
    iget-boolean v3, v3, Lno/simula/corona/CoronaApp;->y:Z

    if-nez v3, :cond_2

    const/16 v3, 0xd

    .line 10
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lno/simula/corona/SplashActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 12
    new-instance v5, Ld/i/a/g;

    invoke-direct {v5, p0}, Ld/i/a/g;-><init>(Landroid/content/Context;)V

    const v6, 0x7f120080

    .line 13
    invoke-virtual {p0, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld/i/a/g;->b(Ljava/lang/CharSequence;)Ld/i/a/g;

    .line 14
    iget-object v6, v5, Ld/i/a/g;->O:Landroid/app/Notification;

    const v7, 0x7f0800a8

    iput v7, v6, Landroid/app/Notification;->icon:I

    const v6, 0x7f1200a2

    .line 15
    invoke-virtual {p0, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld/i/a/g;->a(Ljava/lang/CharSequence;)Ld/i/a/g;

    .line 16
    iput v2, v5, Ld/i/a/g;->l:I

    .line 17
    iput-object v4, v5, Ld/i/a/g;->f:Landroid/app/PendingIntent;

    .line 18
    invoke-virtual {v5, v2}, Ld/i/a/g;->a(Z)Ld/i/a/g;

    .line 19
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v4, v6, :cond_1

    const-string v4, "Smittestopp Notification Channel"

    .line 20
    iput-object v4, v5, Ld/i/a/g;->I:Ljava/lang/String;

    .line 21
    :cond_1
    invoke-virtual {v5}, Ld/i/a/g;->a()Landroid/app/Notification;

    move-result-object v4

    const-string v5, "builder.build()"

    invoke-static {v4, v5}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 23
    sget-object v0, Lno/simula/corona/CoronaApp;->z:Lno/simula/corona/CoronaApp;

    if-eqz v0, :cond_2

    .line 24
    iput-boolean v2, v0, Lno/simula/corona/CoronaApp;->y:Z

    .line 25
    :cond_2
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->h()V

    .line 26
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->g()V

    .line 27
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    .line 28
    :cond_3
    new-instance v0, Lh/e;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_4
    invoke-static {p0}, Lj/b/a/a0;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lh/o/g;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 31
    new-instance v2, Lj/b/a/h;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "this.application"

    invoke-static {v3, v4}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lj/b/a/h;-><init>(Landroid/app/Application;)V

    new-instance v3, Lj/b/a/g;

    invoke-direct {v3}, Lj/b/a/g;-><init>()V

    invoke-virtual {v2, v0, v3}, Lj/b/a/h;->a(Ljava/lang/String;Lj/b/a/h$b;)V

    :cond_5
    :goto_1
    return v1

    .line 32
    :cond_6
    iget v0, p0, Lno/simula/corona/DataCollectorService;->F:I

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    .line 33
    invoke-static {}, Lj/b/a/a0;->a()J

    move-result-wide v3

    .line 34
    iget-wide v5, p0, Lno/simula/corona/DataCollectorService;->E:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lno/simula/corona/DataCollectorService;->A:Z

    .line 2
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->c()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 4
    iget-object p1, p0, Lno/simula/corona/DataCollectorService;->z:Lj/b/a/d;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "onCreate"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lno/simula/corona/MeasurementDatabase;->k:Lno/simula/corona/MeasurementDatabase$a;

    invoke-virtual {v0, p0}, Lno/simula/corona/MeasurementDatabase$a;->a(Landroid/content/Context;)Lno/simula/corona/MeasurementDatabase;

    move-result-object v0

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->K:Lno/simula/corona/MeasurementDatabase;

    .line 3
    new-instance v0, Lj/b/a/h;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "this.application"

    invoke-static {v1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lj/b/a/h;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->M:Lj/b/a/h;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lj/b/a/h;->a()V

    .line 5
    invoke-static {p0}, Le/c/a/a/e/c;->a(Landroid/content/Context;)Le/c/a/a/e/a;

    move-result-object v0

    const-string v1, "LocationServices.getFuse\u2026ationProviderClient(this)"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->D:Le/c/a/a/e/a;

    .line 6
    new-instance v0, Lno/simula/corona/DataCollectorService$b;

    invoke-direct {v0, p0}, Lno/simula/corona/DataCollectorService$b;-><init>(Lno/simula/corona/DataCollectorService;)V

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->C:Le/c/a/a/e/b;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 8
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "Smittestopp"

    const-string v3, "Smittestopp Notification Channel"

    invoke-direct {v0, v3, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 9
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "Smittestopp Reminders"

    invoke-direct {v2, v3, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/NotificationManager;

    .line 11
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lh/e;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    :goto_0
    new-instance v0, Lj/b/a/d0/a;

    invoke-direct {v0}, Lj/b/a/d0/a;-><init>()V

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->G:Lj/b/a/d0/a;

    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lno/simula/corona/DataCollectorService;->G:Lj/b/a/d0/a;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    new-instance v0, Lj/b/a/b0/c;

    invoke-direct {v0}, Lj/b/a/b0/c;-><init>()V

    iput-object v0, p0, Lno/simula/corona/DataCollectorService;->N:Lj/b/a/b0/c;

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lno/simula/corona/DataCollectorService;->N:Lj/b/a/b0/c;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk/d/a/c;->b(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v0, "mDevice"

    .line 25
    invoke-static {v0}, Lh/k/b/g;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 6

    const-string v0, "where"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 2
    iget-boolean v2, p0, Lno/simula/corona/DataCollectorService;->y:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->h()V

    .line 4
    :cond_0
    iget-boolean v2, p0, Lno/simula/corona/DataCollectorService;->O:Z

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->g()V

    :cond_1
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lno/simula/corona/DataCollectorService;->J:Landroid/app/Notification;

    .line 7
    iget-object v3, p0, Lno/simula/corona/DataCollectorService;->M:Lj/b/a/h;

    if-eqz v3, :cond_7

    if-eqz v3, :cond_6

    .line 8
    :try_start_0
    iget-object v4, v3, Lj/b/a/h;->b:Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/microsoft/azure/sdk/iot/device/DeviceClient;->closeNow()V

    .line 9
    :cond_2
    iput-object v2, v3, Lj/b/a/h;->b:Lcom/microsoft/azure/sdk/iot/device/DeviceClient;

    const/4 v4, 0x0

    .line 10
    iput-boolean v4, v3, Lj/b/a/h;->c:Z

    .line 11
    iput-boolean v4, v3, Lj/b/a/h;->d:Z

    .line 12
    iput-boolean v4, v3, Lj/b/a/h;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 13
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "IoTHubDevice::close"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {v3, v4, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 15
    sget-object v4, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v4, v3}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 16
    :goto_0
    iget-object v3, p0, Lno/simula/corona/DataCollectorService;->L:Lj/b/a/f;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lj/b/a/f;->a()Z

    move-result v3

    if-ne v3, v1, :cond_3

    .line 17
    :try_start_1
    iget-object v3, p0, Lno/simula/corona/DataCollectorService;->L:Lj/b/a/f;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 18
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "DataCollector::onDestroy"

    .line 19
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v1, v3, v2}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 21
    :cond_3
    :goto_1
    iput-object v2, p0, Lno/simula/corona/DataCollectorService;->L:Lj/b/a/f;

    .line 22
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->x:Lj/b/a/v;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lj/b/a/v;->a()V

    .line 23
    :cond_4
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->G:Lj/b/a/d0/a;

    if-eqz v0, :cond_5

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    :cond_5
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->N:Lj/b/a/b0/c;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lk/d/a/c;->c(Ljava/lang/Object;)V

    .line 27
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    .line 28
    :cond_6
    throw v2

    :cond_7
    const-string v0, "mDevice"

    .line 29
    invoke-static {v0}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw v2
.end method

.method public final onEvent(Lj/b/a/c0/a;)V
    .locals 4
    .annotation runtime Lk/d/a/m;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lj/b/a/c0/a;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, v0, v2}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lno/simula/corona/DataCollectorService;->O:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->g()V

    .line 5
    :cond_0
    iget-boolean p1, p1, Lj/b/a/c0/a;->a:Z

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lno/simula/corona/DataCollectorService;->I:Landroid/app/Notification;

    if-nez p1, :cond_5

    invoke-static {p0}, Lj/b/a/a0;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lno/simula/corona/DataCollectorService;->A:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f120028

    .line 7
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->H:Landroid/app/Notification;

    if-eqz v0, :cond_2

    const p1, 0x7f120064

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->c()V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lno/simula/corona/DataCollectorService;->a(I)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lno/simula/corona/DataCollectorService;->I:Landroid/app/Notification;

    if-eqz v1, :cond_3

    .line 10
    iput-object p1, p0, Lno/simula/corona/DataCollectorService;->H:Landroid/app/Notification;

    :cond_3
    const-string p1, "notification"

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0xf

    .line 12
    iget-object v1, p0, Lno/simula/corona/DataCollectorService;->I:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Lh/e;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string p1, "event"

    .line 14
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onEvent(Lj/b/a/c0/d;)V
    .locals 4
    .annotation runtime Lk/d/a/m;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Lj/b/a/c0/d;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    sget-object v3, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v3, v0, v2}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-boolean v0, p0, Lno/simula/corona/DataCollectorService;->y:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->h()V

    .line 19
    :cond_0
    iget-boolean p1, p1, Lj/b/a/c0/d;->a:Z

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lno/simula/corona/DataCollectorService;->H:Landroid/app/Notification;

    if-nez p1, :cond_5

    invoke-static {p0}, Lj/b/a/a0;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lno/simula/corona/DataCollectorService;->A:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f120065

    .line 21
    iget-object v0, p0, Lno/simula/corona/DataCollectorService;->I:Landroid/app/Notification;

    if-eqz v0, :cond_2

    const p1, 0x7f120064

    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->c()V

    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Lno/simula/corona/DataCollectorService;->a(I)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lno/simula/corona/DataCollectorService;->H:Landroid/app/Notification;

    if-eqz v1, :cond_3

    .line 24
    iput-object p1, p0, Lno/simula/corona/DataCollectorService;->I:Landroid/app/Notification;

    :cond_3
    const-string p1, "notification"

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0xe

    .line 26
    iget-object v1, p0, Lno/simula/corona/DataCollectorService;->H:Landroid/app/Notification;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 27
    :cond_4
    new-instance p1, Lh/e;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string p1, "event"

    .line 28
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lno/simula/corona/DataCollectorService;->A:Z

    .line 2
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->c()V

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    .line 1
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    const-string v1, "onStartCommand"

    invoke-virtual {v0, v1, p3}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    const-string v0, "from-service"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, p3, :cond_0

    .line 3
    invoke-static {p0, p2}, Lj/b/a/a0;->a(Landroid/content/Context;Z)V

    .line 4
    invoke-static {p0, p2}, Lj/b/a/a0;->b(Landroid/content/Context;Z)V

    .line 5
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->h()V

    .line 6
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->g()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_9

    const-string v1, "service-command"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, p3, :cond_9

    const/4 v2, -0x1

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, p3, :cond_7

    if-eq v1, v0, :cond_6

    const/4 p3, 0x3

    if-eq v1, p3, :cond_5

    const/4 p3, 0x4

    if-eq v1, p3, :cond_2

    const/4 p1, 0x5

    if-eq v1, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-array p1, p2, [Ljava/lang/Object;

    .line 10
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string p3, "stop all updates"

    invoke-virtual {p2, p3, p1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->h()V

    .line 12
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->g()V

    .line 13
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_2
    new-array p3, p2, [Ljava/lang/Object;

    .line 14
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "start all updates"

    invoke-virtual {v1, v2, p3}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {p0}, Lj/b/a/a0;->d(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 16
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->e()V

    .line 17
    :cond_3
    invoke-static {p0}, Lj/b/a/a0;->c(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 18
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->d()V

    :cond_4
    const-string p3, "auto_start"

    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0xc

    .line 20
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->a()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_5
    new-array p1, p2, [Ljava/lang/Object;

    .line 21
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string p3, "stop bt updates"

    invoke-virtual {p2, p3, p1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->g()V

    goto :goto_0

    :cond_6
    new-array p1, p2, [Ljava/lang/Object;

    .line 23
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string p3, "start bt updates"

    invoke-virtual {p2, p3, p1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->d()V

    goto :goto_0

    :cond_7
    new-array p1, p2, [Ljava/lang/Object;

    .line 25
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string p3, "start location updates"

    invoke-virtual {p2, p3, p1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->e()V

    goto :goto_0

    :cond_8
    new-array p1, p2, [Ljava/lang/Object;

    .line 27
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string p3, "stop location updates"

    invoke-virtual {p2, p3, p1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->h()V

    :cond_9
    :goto_0
    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lno/simula/corona/DataCollectorService;->A:Z

    .line 2
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    .line 3
    invoke-virtual {p0}, Lno/simula/corona/DataCollectorService;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
