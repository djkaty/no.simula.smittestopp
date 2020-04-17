.class public final Lj/b/a/b0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj/a/a/a/a/a/h;

.field public final b:Lj/a/a/a/a/a/h;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lj/a/a/a/a/a/k;

.field public final e:Lj/b/a/b0/j;

.field public final f:Lj/a/a/a/a/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lj/b/a/b0/h;Lj/a/a/a/a/a/a;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lj/b/a/b0/g;->f:Lj/a/a/a/a/a/a;

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v13, -0x1

    .line 2
    new-instance v8, Landroid/os/ParcelUuid;

    .line 3
    sget-object v3, Lj/b/a/a0;->a:Ljava/util/UUID;

    .line 4
    invoke-direct {v8, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v9, 0x0

    .line 5
    new-instance v3, Lj/a/a/a/a/a/h;

    const/16 v16, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lj/a/a/a/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLj/a/a/a/a/a/h$a;)V

    .line 6
    iput-object v3, v0, Lj/b/a/b0/g;->a:Lj/a/a/a/a/a/h;

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x4c

    const/16 v3, 0x11

    new-array v4, v3, [B

    .line 7
    fill-array-data v4, :array_0

    new-array v3, v3, [B

    const/16 v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    const/4 v5, 0x1

    aput-byte v6, v3, v5

    const/4 v7, 0x2

    aput-byte v6, v3, v7

    const/4 v8, 0x3

    aput-byte v6, v3, v8

    const/4 v8, 0x4

    aput-byte v6, v3, v8

    const/4 v8, 0x5

    aput-byte v6, v3, v8

    const/4 v8, 0x6

    aput-byte v6, v3, v8

    const/4 v8, 0x7

    aput-byte v6, v3, v8

    const/16 v8, 0x8

    aput-byte v6, v3, v8

    const/16 v8, 0x9

    aput-byte v6, v3, v8

    const/16 v8, 0xa

    aput-byte v6, v3, v8

    const/16 v8, 0xb

    aput-byte v6, v3, v8

    const/16 v8, 0xc

    aput-byte v6, v3, v8

    const/16 v8, 0xd

    aput-byte v6, v3, v8

    const/16 v8, 0xe

    aput-byte v7, v3, v8

    const/16 v8, 0xf

    aput-byte v6, v3, v8

    const/16 v8, 0x10

    aput-byte v6, v3, v8

    .line 8
    new-instance v8, Lj/a/a/a/a/a/h;

    const/16 v28, 0x0

    move-object/from16 v17, v8

    move-object/from16 v26, v4

    move-object/from16 v27, v3

    invoke-direct/range {v17 .. v28}, Lj/a/a/a/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLj/a/a/a/a/a/h$a;)V

    .line 9
    iput-object v8, v0, Lj/b/a/b0/g;->b:Lj/a/a/a/a/a/h;

    new-array v3, v7, [Lj/a/a/a/a/a/h;

    .line 10
    iget-object v4, v0, Lj/b/a/b0/g;->a:Lj/a/a/a/a/a/h;

    aput-object v4, v3, v6

    aput-object v8, v3, v5

    invoke-static {v3}, Lh/i/b;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lj/b/a/b0/g;->c:Ljava/util/List;

    .line 11
    new-instance v3, Lj/a/a/a/a/a/k$b;

    invoke-direct {v3}, Lj/a/a/a/a/a/k$b;-><init>()V

    const-wide/16 v4, 0x0

    .line 12
    iput-wide v4, v3, Lj/a/a/a/a/a/k$b;->c:J

    .line 13
    invoke-virtual {v3, v6}, Lj/a/a/a/a/a/k$b;->a(I)Lj/a/a/a/a/a/k$b;

    .line 14
    invoke-virtual {v3}, Lj/a/a/a/a/a/k$b;->a()Lj/a/a/a/a/a/k;

    move-result-object v3

    const-string v4, "ScanSettings.Builder()\n \u2026W_POWER)\n        .build()"

    invoke-static {v3, v4}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lj/b/a/b0/g;->d:Lj/a/a/a/a/a/k;

    .line 15
    new-instance v3, Lj/b/a/b0/j;

    invoke-direct {v3, v1, v2}, Lj/b/a/b0/j;-><init>(Landroid/app/Application;Lj/b/a/b0/h;)V

    iput-object v3, v0, Lj/b/a/b0/g;->e:Lj/b/a/b0/j;

    return-void

    :cond_0
    const-string v1, "bluetoothLeScanner"

    .line 16
    invoke-static {v1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string v1, "scanListener"

    invoke-static {v1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v4

    :cond_2
    const-string v1, "application"

    invoke-static {v1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v4

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/b/a/b0/g;->f:Lj/a/a/a/a/a/a;

    iget-object v1, p0, Lj/b/a/b0/g;->c:Ljava/util/List;

    iget-object v2, p0, Lj/b/a/b0/g;->d:Lj/a/a/a/a/a/k;

    iget-object v3, p0, Lj/b/a/b0/g;->e:Lj/b/a/b0/j;

    invoke-virtual {v0, v1, v2, v3}, Lj/a/a/a/a/a/a;->a(Ljava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v0, p1}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    nop

    .line 3
    iget-object v0, p0, Lj/b/a/b0/g;->f:Lj/a/a/a/a/a/a;

    iget-object v1, p0, Lj/b/a/b0/g;->e:Lj/b/a/b0/j;

    invoke-virtual {v0, v1}, Lj/a/a/a/a/a/a;->b(Lj/a/a/a/a/a/g;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lj/b/a/b0/g;->a(Z)V

    :cond_0
    :goto_0
    return-void
.end method
