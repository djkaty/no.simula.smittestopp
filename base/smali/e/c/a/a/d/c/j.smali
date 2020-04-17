.class public final Le/c/a/a/d/c/j;
.super Le/c/a/a/e/s;
.source "SourceFile"


# instance fields
.field public final a:Le/c/a/a/b/i/k/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/f<",
            "Le/c/a/a/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/f<",
            "Le/c/a/a/e/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/a/a/e/s;-><init>()V

    iput-object p1, p0, Le/c/a/a/d/c/j;->a:Le/c/a/a/b/i/k/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Le/c/a/a/d/c/j;->a:Le/c/a/a/b/i/k/f;

    new-instance v1, Le/c/a/a/d/c/l;

    invoke-direct {v1, p1}, Le/c/a/a/d/c/l;-><init>(Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Le/c/a/a/b/i/k/f;->a(Le/c/a/a/b/i/k/f$b;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Le/c/a/a/d/c/j;->a:Le/c/a/a/b/i/k/f;

    new-instance v1, Le/c/a/a/d/c/k;

    invoke-direct {v1, p1}, Le/c/a/a/d/c/k;-><init>(Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Le/c/a/a/b/i/k/f;->a(Le/c/a/a/b/i/k/f$b;)V

    return-void
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/c/a/a/d/c/j;->a:Le/c/a/a/b/i/k/f;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Le/c/a/a/b/i/k/f;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
