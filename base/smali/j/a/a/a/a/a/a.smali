.class public abstract Lj/a/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a/a/a/a/a/a$a;
    }
.end annotation


# static fields
.field public static a:Lj/a/a/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lj/a/a/a/a/a/a;
    .locals 3

    const-class v0, Lj/a/a/a/a/a/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lj/a/a/a/a/a/a;->a:Lj/a/a/a/a/a/a;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lj/a/a/a/a/a/a;->a:Lj/a/a/a/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 4
    new-instance v1, Lj/a/a/a/a/a/d;

    invoke-direct {v1}, Lj/a/a/a/a/a/d;-><init>()V

    sput-object v1, Lj/a/a/a/a/a/a;->a:Lj/a/a/a/a/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 6
    new-instance v1, Lj/a/a/a/a/a/c;

    invoke-direct {v1}, Lj/a/a/a/a/a/c;-><init>()V

    sput-object v1, Lj/a/a/a/a/a/a;->a:Lj/a/a/a/a/a/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 7
    :cond_2
    :try_start_3
    new-instance v1, Lj/a/a/a/a/a/b;

    invoke-direct {v1}, Lj/a/a/a/a/a/b;-><init>()V

    sput-object v1, Lj/a/a/a/a/a/a;->a:Lj/a/a/a/a/a/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract a(Lj/a/a/a/a/a/g;)V
.end method

.method public final a(Ljava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/h;",
            ">;",
            "Lj/a/a/a/a/a/k;",
            "Lj/a/a/a/a/a/g;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    if-eqz v0, :cond_3

    .line 8
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p1, :cond_0

    move-object/from16 v2, p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    if-eqz p2, :cond_1

    move-object/from16 v4, p0

    move-object/from16 v3, p2

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v14, 0x1

    const-wide/16 v6, 0x0

    const/4 v9, 0x3

    const/16 v11, 0xff

    const-wide/16 v17, 0x2710

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-nez v3, :cond_2

    cmp-long v3, v6, v12

    if-nez v3, :cond_2

    const-wide/16 v12, 0x1f4

    const-wide/16 v15, 0x1194

    move-wide/from16 v19, v12

    move-wide/from16 v21, v15

    goto :goto_1

    :cond_2
    move-wide/from16 v19, v6

    move-wide/from16 v21, v19

    .line 10
    :goto_1
    new-instance v24, Lj/a/a/a/a/a/k;

    move-object/from16 v3, v24

    const/16 v23, 0x0

    move v5, v14

    move v8, v14

    move v10, v14

    move v12, v14

    move v13, v14

    move-wide/from16 v15, v17

    invoke-direct/range {v3 .. v23}, Lj/a/a/a/a/a/k;-><init>(IIJIIZIZZZJJJJLj/a/a/a/a/a/k$a;)V

    move-object/from16 v4, p0

    move-object/from16 v3, v24

    .line 11
    :goto_2
    invoke-virtual {v4, v2, v3, v0, v1}, Lj/a/a/a/a/a/a;->a(Ljava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V

    return-void

    :cond_3
    move-object/from16 v4, p0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Ljava/util/List;Lj/a/a/a/a/a/k;Lj/a/a/a/a/a/g;Landroid/os/Handler;)V
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
.end method

.method public final b(Lj/a/a/a/a/a/g;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lj/a/a/a/a/a/a;->c(Lj/a/a/a/a/a/g;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Lj/a/a/a/a/a/g;)V
.end method
