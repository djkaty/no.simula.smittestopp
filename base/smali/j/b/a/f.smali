.class public final Lj/b/a/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lj/b/a/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lno/simula/corona/MeasurementDatabase;

.field public b:Landroid/content/Context;

.field public c:Lj/b/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj/b/a/e;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lj/b/a/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lj/b/a/f;->c:Lj/b/a/e;

    .line 2
    sget-object p2, Lno/simula/corona/MeasurementDatabase;->k:Lno/simula/corona/MeasurementDatabase$a;

    invoke-virtual {p2, p1}, Lno/simula/corona/MeasurementDatabase$a;->a(Landroid/content/Context;)Lno/simula/corona/MeasurementDatabase;

    move-result-object p1

    iput-object p1, p0, Lj/b/a/f;->a:Lno/simula/corona/MeasurementDatabase;

    return-void

    :cond_0
    const-string p1, "callbackListener"

    .line 3
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "context"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

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

.method public final b()Lj/b/a/p;
    .locals 30

    move-object/from16 v1, p0

    const-string v0, "isUploaded"

    const-string v2, "timestamp"

    const-string v3, "id"

    .line 1
    iget-object v4, v1, Lj/b/a/f;->a:Lno/simula/corona/MeasurementDatabase;

    invoke-virtual {v4}, Lno/simula/corona/MeasurementDatabase;->i()Lj/b/a/s;

    move-result-object v4

    check-cast v4, Lj/b/a/t;

    .line 2
    iget-object v5, v4, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v5}, Ld/u/g;->b()V

    .line 3
    iget-object v5, v4, Lj/b/a/t;->c:Ld/u/k;

    invoke-virtual {v5}, Ld/u/k;->a()Ld/w/a/f/f;

    move-result-object v5

    .line 4
    iget-object v6, v4, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v6}, Ld/u/g;->c()V

    .line 5
    :try_start_0
    invoke-virtual {v5}, Ld/w/a/f/f;->a()I

    .line 6
    iget-object v6, v4, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v6}, Ld/u/g;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7
    iget-object v6, v4, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v6}, Ld/u/g;->d()V

    .line 8
    iget-object v4, v4, Lj/b/a/t;->c:Ld/u/k;

    .line 9
    iget-object v6, v4, Ld/u/k;->c:Ld/w/a/f/f;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    .line 10
    iget-object v4, v4, Ld/u/k;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    :cond_0
    iget-object v4, v1, Lj/b/a/f;->a:Lno/simula/corona/MeasurementDatabase;

    invoke-virtual {v4}, Lno/simula/corona/MeasurementDatabase;->h()Lj/b/a/b;

    move-result-object v4

    check-cast v4, Lj/b/a/c;

    .line 12
    iget-object v5, v4, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v5}, Ld/u/g;->b()V

    .line 13
    iget-object v5, v4, Lj/b/a/c;->c:Ld/u/k;

    invoke-virtual {v5}, Ld/u/k;->a()Ld/w/a/f/f;

    move-result-object v5

    .line 14
    iget-object v6, v4, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v6}, Ld/u/g;->c()V

    .line 15
    :try_start_1
    invoke-virtual {v5}, Ld/w/a/f/f;->a()I

    .line 16
    iget-object v6, v4, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v6}, Ld/u/g;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17
    iget-object v6, v4, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v6}, Ld/u/g;->d()V

    .line 18
    iget-object v4, v4, Lj/b/a/c;->c:Ld/u/k;

    .line 19
    iget-object v6, v4, Ld/u/k;->c:Ld/w/a/f/f;

    if-ne v5, v6, :cond_1

    .line 20
    iget-object v4, v4, Ld/u/k;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    :cond_1
    new-instance v4, Lj/b/a/n;

    invoke-direct {v4}, Lj/b/a/n;-><init>()V

    .line 22
    iget-object v5, v1, Lj/b/a/f;->a:Lno/simula/corona/MeasurementDatabase;

    invoke-virtual {v5}, Lno/simula/corona/MeasurementDatabase;->i()Lj/b/a/s;

    move-result-object v5

    check-cast v5, Lj/b/a/t;

    const/4 v6, 0x0

    if-eqz v5, :cond_1b

    const-string v8, "SELECT * from measurement WHERE isUploaded is 0"

    .line 23
    invoke-static {v8, v7}, Ld/u/i;->a(Ljava/lang/String;I)Ld/u/i;

    move-result-object v8

    .line 24
    iget-object v9, v5, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v9}, Ld/u/g;->b()V

    .line 25
    iget-object v5, v5, Lj/b/a/t;->a:Ld/u/g;

    invoke-static {v5, v8, v7, v6}, Ld/u/m/b;->a(Ld/u/g;Ld/w/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 26
    :try_start_2
    invoke-static {v5, v3}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 27
    invoke-static {v5, v2}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v9, "latitude"

    .line 28
    invoke-static {v5, v9}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "longitude"

    .line 29
    invoke-static {v5, v10}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "latLongAccuracy"

    .line 30
    invoke-static {v5, v11}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "altitude"

    .line 31
    invoke-static {v5, v12}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "altitudeAccuracy"

    .line 32
    invoke-static {v5, v13}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "speed"

    .line 33
    invoke-static {v5, v14}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "speedAccuracy"

    .line 34
    invoke-static {v5, v15}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v2

    .line 35
    invoke-static {v5, v0}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v17, v0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v18, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v1, 0x1

    if-eqz v3, :cond_b

    .line 38
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 39
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v22, v1

    goto :goto_2

    .line 40
    :cond_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    .line 41
    :goto_2
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    move-object/from16 v23, v1

    goto :goto_4

    .line 42
    :cond_3
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_3

    .line 43
    :goto_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_5
    move-object/from16 v24, v1

    goto :goto_6

    .line 44
    :cond_4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_5

    .line 45
    :goto_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_7
    move-object/from16 v25, v1

    goto :goto_8

    .line 46
    :cond_5
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_7

    .line 47
    :goto_8
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_9
    move-object/from16 v26, v1

    goto :goto_a

    .line 48
    :cond_6
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_9

    .line 49
    :goto_a
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_b
    move-object/from16 v27, v1

    goto :goto_c

    .line 50
    :cond_7
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_b

    .line 51
    :goto_c
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_d
    move-object/from16 v28, v1

    goto :goto_e

    .line 52
    :cond_8
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_d

    .line 53
    :goto_e
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    const/16 v29, 0x1

    goto :goto_f

    :cond_9
    const/4 v1, 0x0

    const/16 v29, 0x0

    .line 54
    :goto_f
    new-instance v1, Lj/b/a/r;

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v29}, Lj/b/a/r;-><init>(JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Z)V

    .line 55
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_10

    .line 56
    :cond_a
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 57
    :goto_10
    iput-object v3, v1, Lj/b/a/r;->a:Ljava/lang/Integer;

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 59
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 60
    invoke-virtual {v8}, Ld/u/i;->b()V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " measurements to upload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 62
    sget-object v7, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v7, v2, v6}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 64
    invoke-virtual {v4}, Lj/b/a/n;->a()Lj/b/a/o;

    move-result-object v0

    goto/16 :goto_14

    .line 65
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 66
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/b/a/r;

    .line 67
    iget-object v6, v5, Lj/b/a/r;->a:Ljava/lang/Integer;

    .line 68
    invoke-virtual {v4, v6}, Lj/b/a/n;->a(Ljava/lang/Integer;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_11
    if-ge v7, v2, :cond_13

    .line 69
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj/b/a/r;

    .line 70
    iget-wide v8, v8, Lj/b/a/r;->d:J

    .line 71
    iput-wide v8, v5, Lj/b/a/r;->c:J

    .line 72
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj/b/a/r;

    .line 73
    iget-object v9, v8, Lj/b/a/r;->f:Ljava/lang/Double;

    if-eqz v9, :cond_11

    .line 74
    iget-object v9, v8, Lj/b/a/r;->e:Ljava/lang/Double;

    if-eqz v9, :cond_11

    .line 75
    iget-object v9, v8, Lj/b/a/r;->h:Ljava/lang/Double;

    if-eqz v9, :cond_11

    .line 76
    iget-object v9, v5, Lj/b/a/r;->f:Ljava/lang/Double;

    if-eqz v9, :cond_11

    .line 77
    iget-object v9, v5, Lj/b/a/r;->e:Ljava/lang/Double;

    if-eqz v9, :cond_11

    .line 78
    iget-object v9, v5, Lj/b/a/r;->h:Ljava/lang/Double;

    if-nez v9, :cond_d

    goto :goto_12

    .line 79
    :cond_d
    iget-object v9, v8, Lj/b/a/r;->g:Ljava/lang/Double;

    if-eqz v9, :cond_10

    .line 80
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 81
    iget-object v11, v5, Lj/b/a/r;->g:Ljava/lang/Double;

    if-eqz v11, :cond_f

    .line 82
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 83
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    new-array v11, v1, [F

    .line 84
    iget-object v12, v8, Lj/b/a/r;->e:Ljava/lang/Double;

    .line 85
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    .line 86
    iget-object v8, v8, Lj/b/a/r;->f:Ljava/lang/Double;

    .line 87
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    .line 88
    iget-object v8, v5, Lj/b/a/r;->e:Ljava/lang/Double;

    .line 89
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    .line 90
    iget-object v8, v5, Lj/b/a/r;->f:Ljava/lang/Double;

    .line 91
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    move-object/from16 v27, v11

    .line 92
    invoke-static/range {v19 .. v27}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v8, 0x0

    .line 93
    aget v8, v11, v8

    float-to-double v11, v8

    cmpl-double v8, v11, v9

    if-lez v8, :cond_e

    goto :goto_12

    :cond_e
    const/4 v8, 0x1

    goto :goto_13

    .line 94
    :cond_f
    invoke-static {}, Lh/k/b/g;->a()V

    const/4 v0, 0x0

    throw v0

    :cond_10
    const/4 v0, 0x0

    .line 95
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    :cond_11
    :goto_12
    const/4 v8, 0x0

    :goto_13
    if-nez v8, :cond_12

    .line 96
    invoke-virtual {v5}, Lj/b/a/r;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj/b/a/n;->a(Lorg/json/JSONObject;)V

    add-int/lit8 v6, v6, 0x1

    .line 97
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/b/a/r;

    .line 98
    :cond_12
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj/b/a/r;

    .line 99
    iget-object v8, v8, Lj/b/a/r;->a:Ljava/lang/Integer;

    .line 100
    invoke-virtual {v4, v8}, Lj/b/a/n;->a(Ljava/lang/Integer;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    .line 101
    :cond_13
    invoke-virtual {v5}, Lj/b/a/r;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj/b/a/n;->a(Lorg/json/JSONObject;)V

    add-int/2addr v6, v1

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj/b/a/r;

    invoke-virtual {v5}, Lj/b/a/r;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj/b/a/n;->a(Lorg/json/JSONObject;)V

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/b/a/r;

    .line 104
    iget-object v0, v0, Lj/b/a/r;->a:Ljava/lang/Integer;

    .line 105
    invoke-virtual {v4, v0}, Lj/b/a/n;->a(Ljava/lang/Integer;)V

    add-int/2addr v6, v1

    const-string v0, "After cleaning there are "

    .line 106
    invoke-static {v0, v6, v3}, Le/a/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v2, v0, v1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v4}, Lj/b/a/n;->a()Lj/b/a/o;

    move-result-object v0

    :goto_14
    const-string v1, "txPower"

    const-string v2, "rssi"

    const-string v3, "deviceId"

    .line 109
    new-instance v4, Lj/b/a/n;

    invoke-direct {v4}, Lj/b/a/n;-><init>()V

    move-object/from16 v7, p0

    .line 110
    iget-object v5, v7, Lj/b/a/f;->a:Lno/simula/corona/MeasurementDatabase;

    invoke-virtual {v5}, Lno/simula/corona/MeasurementDatabase;->h()Lj/b/a/b;

    move-result-object v5

    check-cast v5, Lj/b/a/c;

    if-eqz v5, :cond_1a

    const-string v6, "SELECT * from bluetoothcontact WHERE isUploaded is 0"

    const/4 v8, 0x0

    .line 111
    invoke-static {v6, v8}, Ld/u/i;->a(Ljava/lang/String;I)Ld/u/i;

    move-result-object v6

    .line 112
    iget-object v9, v5, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v9}, Ld/u/g;->b()V

    .line 113
    iget-object v5, v5, Lj/b/a/c;->a:Ld/u/g;

    const/4 v9, 0x0

    invoke-static {v5, v6, v8, v9}, Ld/u/m/b;->a(Ld/u/g;Ld/w/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    move-object/from16 v8, v18

    .line 114
    :try_start_3
    invoke-static {v5, v8}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v9, v16

    .line 115
    invoke-static {v5, v9}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 116
    invoke-static {v5, v3}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 117
    invoke-static {v5, v2}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 118
    invoke-static {v5, v1}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v13, v17

    .line 119
    invoke-static {v5, v13}, Ld/b/a/r;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 120
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    :goto_15
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 122
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 123
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 124
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 125
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 126
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_14

    const/4 v15, 0x1

    const/16 v22, 0x1

    goto :goto_16

    :cond_14
    const/4 v15, 0x0

    const/16 v22, 0x0

    .line 127
    :goto_16
    new-instance v15, Lj/b/a/a;

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v22}, Lj/b/a/a;-><init>(JLjava/lang/String;IIZ)V

    .line 128
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_15

    const/16 v16, 0x0

    :goto_17
    move-object/from16 v7, v16

    goto :goto_18

    .line 129
    :cond_15
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_17

    .line 130
    :goto_18
    iput-object v7, v15, Lj/b/a/a;->a:Ljava/lang/Integer;

    .line 131
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v7, p0

    goto :goto_15

    .line 132
    :cond_16
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v6}, Ld/u/i;->b()V

    .line 134
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 135
    invoke-virtual {v4}, Lj/b/a/n;->a()Lj/b/a/o;

    move-result-object v1

    goto :goto_1a

    .line 136
    :cond_17
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj/b/a/a;

    if-eqz v6, :cond_18

    .line 137
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v8, "UTC"

    .line 138
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 139
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 140
    iget-wide v9, v6, Lj/b/a/a;->b:J

    invoke-static {v9, v10}, Lj/b/a/a0;->a(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "time"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    iget-object v7, v6, Lj/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    iget v7, v6, Lj/b/a/a;->d:I

    invoke-virtual {v8, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    iget v7, v6, Lj/b/a/a;->e:I

    invoke-virtual {v8, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v4, v8}, Lj/b/a/n;->a(Lorg/json/JSONObject;)V

    .line 145
    iget-object v6, v6, Lj/b/a/a;->a:Ljava/lang/Integer;

    .line 146
    invoke-virtual {v4, v6}, Lj/b/a/n;->a(Ljava/lang/Integer;)V

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 147
    throw v0

    .line 148
    :cond_19
    invoke-virtual {v4}, Lj/b/a/n;->a()Lj/b/a/o;

    move-result-object v1

    .line 149
    :goto_1a
    new-instance v2, Lj/b/a/p;

    invoke-direct {v2, v0, v1}, Lj/b/a/p;-><init>(Lj/b/a/o;Lj/b/a/o;)V

    return-object v2

    :catchall_0
    move-exception v0

    .line 150
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual {v6}, Ld/u/i;->b()V

    .line 152
    throw v0

    :cond_1a
    const/4 v0, 0x0

    .line 153
    throw v0

    :catchall_1
    move-exception v0

    .line 154
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 155
    invoke-virtual {v8}, Ld/u/i;->b()V

    .line 156
    throw v0

    .line 157
    :cond_1b
    throw v6

    :catchall_2
    move-exception v0

    .line 158
    iget-object v1, v4, Lj/b/a/c;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->d()V

    .line 159
    iget-object v1, v4, Lj/b/a/c;->c:Ld/u/k;

    invoke-virtual {v1, v5}, Ld/u/k;->a(Ld/w/a/f/f;)V

    .line 160
    throw v0

    :catchall_3
    move-exception v0

    .line 161
    iget-object v1, v4, Lj/b/a/t;->a:Ld/u/g;

    invoke-virtual {v1}, Ld/u/g;->d()V

    .line 162
    iget-object v1, v4, Lj/b/a/t;->c:Ld/u/k;

    invoke-virtual {v1, v5}, Ld/u/k;->a(Ld/w/a/f/f;)V

    .line 163
    throw v0
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lj/b/a/f;->b()Lj/b/a/p;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "where"

    const-string v3, "DataAggregator::doInBackground"

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    :goto_0
    return-object v0

    :cond_0
    const-string p1, "params"

    .line 5
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lj/b/a/p;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lj/b/a/f;->c:Lj/b/a/e;

    invoke-interface {v0, p1}, Lj/b/a/e;->a(Lj/b/a/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "where"

    const-string v2, "DataAggregator::postExecute"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    :goto_0
    return-void
.end method
