.class public final Le/b/a/a/s/e;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final y:Le/b/a/a/s/e;


# instance fields
.field public final x:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/a/a/s/e;

    invoke-direct {v0}, Le/b/a/a/s/e;-><init>()V

    sput-object v0, Le/b/a/a/s/e;->y:Le/b/a/a/s/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xb4

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x4

    .line 1
    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/b/a/a/s/e;->x:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0xb4

    if-lt v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Le/b/a/a/s/e;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
