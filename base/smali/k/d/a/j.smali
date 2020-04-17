.class public final Lk/d/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/d/a/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lk/d/a/q;

.field public c:Lk/d/a/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lk/d/a/j;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lk/d/a/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/d/a/j;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lk/d/a/j;->b:Lk/d/a/q;

    return-void
.end method

.method public static a(Lk/d/a/q;Ljava/lang/Object;)Lk/d/a/j;
    .locals 3

    .line 1
    sget-object v0, Lk/d/a/j;->d:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lk/d/a/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    sget-object v2, Lk/d/a/j;->d:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/d/a/j;

    .line 4
    iput-object p1, v1, Lk/d/a/j;->a:Ljava/lang/Object;

    .line 5
    iput-object p0, v1, Lk/d/a/j;->b:Lk/d/a/q;

    const/4 p0, 0x0

    .line 6
    iput-object p0, v1, Lk/d/a/j;->c:Lk/d/a/j;

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lk/d/a/j;

    invoke-direct {v0, p1, p0}, Lk/d/a/j;-><init>(Ljava/lang/Object;Lk/d/a/q;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Lk/d/a/j;)V
    .locals 3

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lk/d/a/j;->a:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lk/d/a/j;->b:Lk/d/a/q;

    .line 13
    iput-object v0, p0, Lk/d/a/j;->c:Lk/d/a/j;

    .line 14
    sget-object v0, Lk/d/a/j;->d:Ljava/util/List;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lk/d/a/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 16
    sget-object v1, Lk/d/a/j;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
