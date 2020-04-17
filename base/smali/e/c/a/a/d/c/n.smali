.class public final Le/c/a/a/d/c/n;
.super Le/c/a/a/e/v;
.source "SourceFile"


# virtual methods
.method public final declared-synchronized a(Landroid/location/Location;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
