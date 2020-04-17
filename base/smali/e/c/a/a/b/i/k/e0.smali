.class public abstract Le/c/a/a/b/i/k/e0;
.super Le/c/a/a/b/i/k/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/a/a/b/i/k/w;"
    }
.end annotation


# instance fields
.field public final a:Le/c/a/a/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/g/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILe/c/a/a/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/c/a/a/g/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/c/a/a/b/i/k/w;-><init>(I)V

    .line 2
    iput-object p2, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    new-instance v1, Le/c/a/a/b/i/b;

    invoke-direct {v1, p1}, Le/c/a/a/b/i/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 2
    iget-object p1, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {p1, v1}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Le/c/a/a/b/i/k/c$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)V"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Le/c/a/a/b/i/k/e0;->d(Le/c/a/a/b/i/k/c$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    .line 5
    iget-object v0, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {v0, p1}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 6
    invoke-static {p1}, Le/c/a/a/b/i/k/m;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    new-instance v1, Le/c/a/a/b/i/b;

    invoke-direct {v1, p1}, Le/c/a/a/b/i/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 8
    iget-object p1, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {p1, v1}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 9
    invoke-static {p1}, Le/c/a/a/b/i/k/m;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/c/a/a/b/i/k/e0;->a:Le/c/a/a/g/b;

    new-instance v2, Le/c/a/a/b/i/b;

    invoke-direct {v2, v0}, Le/c/a/a/b/i/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    iget-object v0, v1, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {v0, v2}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    .line 12
    throw p1
.end method

.method public abstract d(Le/c/a/a/b/i/k/c$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/c$a<",
            "*>;)V"
        }
    .end annotation
.end method
