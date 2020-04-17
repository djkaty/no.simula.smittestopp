.class public final Le/c/a/a/b/i/k/f$c;
.super Le/c/a/a/d/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/i/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Le/c/a/a/b/i/k/f;


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/f;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/i/k/f$c;->a:Le/c/a/a/b/i/k/f;

    .line 2
    invoke-direct {p0, p2}, Le/c/a/a/d/a/c;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ld/b/a/r;->a(Z)V

    .line 2
    iget-object v0, p0, Le/c/a/a/b/i/k/f$c;->a:Le/c/a/a/b/i/k/f;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/a/b/i/k/f$b;

    .line 3
    iget-object v0, v0, Le/c/a/a/b/i/k/f;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Le/c/a/a/b/i/k/f$b;->a()V

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Le/c/a/a/b/i/k/f$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 6
    invoke-interface {p1}, Le/c/a/a/b/i/k/f$b;->a()V

    .line 7
    throw v0
.end method
