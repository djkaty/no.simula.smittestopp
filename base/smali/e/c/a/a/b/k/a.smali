.class public Le/c/a/a/b/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Le/c/a/a/b/k/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/c/a/a/b/k/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public static a()Le/c/a/a/b/k/a;
    .locals 2

    .line 1
    sget-object v0, Le/c/a/a/b/k/a;->b:Le/c/a/a/b/k/a;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Le/c/a/a/b/k/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/c/a/a/b/k/a;->b:Le/c/a/a/b/k/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le/c/a/a/b/k/a;

    invoke-direct {v1}, Le/c/a/a/b/k/a;-><init>()V

    sput-object v1, Le/c/a/a/b/k/a;->b:Le/c/a/a/b/k/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Le/c/a/a/b/k/a;->b:Le/c/a/a/b/k/a;

    return-object v0
.end method
