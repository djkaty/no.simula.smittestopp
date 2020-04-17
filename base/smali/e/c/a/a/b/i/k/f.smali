.class public final Le/c/a/a/b/i/k/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/b/i/k/f$a;,
        Le/c/a/a/b/i/k/f$c;,
        Le/c/a/a/b/i/k/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/c/a/a/b/i/k/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/f$c;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final c:Le/c/a/a/b/i/k/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/f$a<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/c/a/a/b/i/k/f$c;

    invoke-direct {v0, p0, p1}, Le/c/a/a/b/i/k/f$c;-><init>(Le/c/a/a/b/i/k/f;Landroid/os/Looper;)V

    iput-object v0, p0, Le/c/a/a/b/i/k/f;->a:Le/c/a/a/b/i/k/f$c;

    const-string p1, "Listener must not be null"

    .line 3
    invoke-static {p2, p1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Le/c/a/a/b/i/k/f;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Le/c/a/a/b/i/k/f$a;

    invoke-static {p3}, Ld/b/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Le/c/a/a/b/i/k/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/c/a/a/b/i/k/f;->c:Le/c/a/a/b/i/k/f$a;

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/b/i/k/f$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/f$b<",
            "-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Notifier must not be null"

    .line 1
    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/c/a/a/b/i/k/f;->a:Le/c/a/a/b/i/k/f$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/c/a/a/b/i/k/f;->a:Le/c/a/a/b/i/k/f$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
