.class public final Lno/simula/corona/MeasurementDatabase_Impl;
.super Lno/simula/corona/MeasurementDatabase;
.source "SourceFile"


# instance fields
.field public volatile l:Lj/b/a/s;

.field public volatile m:Lj/b/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lno/simula/corona/MeasurementDatabase;-><init>()V

    return-void
.end method

.method public static synthetic a(Lno/simula/corona/MeasurementDatabase_Impl;Ld/w/a/b;)Ld/w/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, Ld/u/g;->a:Ld/w/a/b;

    return-object p1
.end method

.method public static synthetic a(Lno/simula/corona/MeasurementDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/u/g;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lno/simula/corona/MeasurementDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/u/g;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public h()Lj/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->m:Lj/b/a/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->m:Lj/b/a/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->m:Lj/b/a/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lj/b/a/c;

    invoke-direct {v0, p0}, Lj/b/a/c;-><init>(Ld/u/g;)V

    iput-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->m:Lj/b/a/b;

    .line 6
    :cond_1
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->m:Lj/b/a/b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()Lj/b/a/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->l:Lj/b/a/s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->l:Lj/b/a/s;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->l:Lj/b/a/s;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lj/b/a/t;

    invoke-direct {v0, p0}, Lj/b/a/t;-><init>(Ld/u/g;)V

    iput-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->l:Lj/b/a/s;

    .line 6
    :cond_1
    iget-object v0, p0, Lno/simula/corona/MeasurementDatabase_Impl;->l:Lj/b/a/s;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
