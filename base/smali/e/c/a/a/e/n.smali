.class public final Le/c/a/a/e/n;
.super Le/c/a/a/d/c/e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/c/a/a/g/b;


# direct methods
.method public constructor <init>(Le/c/a/a/g/b;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/e/n;->a:Le/c/a/a/g/b;

    invoke-direct {p0}, Le/c/a/a/d/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/d/c/b;)V
    .locals 4

    .line 1
    iget-object p1, p1, Le/c/a/a/d/c/b;->x:Lcom/google/android/gms/common/api/Status;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/c/a/a/e/n;->a:Le/c/a/a/g/b;

    new-instance v0, Le/c/a/a/b/i/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Got null status from location service"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Le/c/a/a/b/i/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 3
    iget-object p1, p1, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {p1, v0}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    return-void

    .line 4
    :cond_0
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->y:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Le/c/a/a/e/n;->a:Le/c/a/a/g/b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 6
    iget-object p1, p1, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {p1, v0}, Le/c/a/a/g/h;->a(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Le/c/a/a/e/n;->a:Le/c/a/a/g/b;

    .line 8
    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->A:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 9
    new-instance v1, Le/c/a/a/b/i/g;

    invoke-direct {v1, p1}, Le/c/a/a/b/i/g;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance v1, Le/c/a/a/b/i/b;

    invoke-direct {v1, p1}, Le/c/a/a/b/i/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    :goto_1
    iget-object p1, v0, Le/c/a/a/g/b;->a:Le/c/a/a/g/h;

    invoke-virtual {p1, v1}, Le/c/a/a/g/h;->b(Ljava/lang/Exception;)Z

    return-void
.end method
