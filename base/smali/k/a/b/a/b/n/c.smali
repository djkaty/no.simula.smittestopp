.class public final Lk/a/b/a/b/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Lk/a/b/a/b/n/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/b/n/l$a<",
            "TE;>;",
            "Lk/a/b/a/b/a;",
            "TE;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/a0;

    if-eqz p1, :cond_2

    .line 2
    check-cast p3, Ljava/lang/Integer;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lk/a/b/a/d/g0/a0;->Y:Z

    const/4 p2, 0x0

    .line 4
    iput p2, p1, Lk/a/b/a/d/g0/a0;->o0:I

    .line 5
    sget-object p2, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    .line 6
    iput-object p2, p1, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 7
    iget-object p3, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz p3, :cond_1

    .line 8
    iput-object p2, p3, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 9
    iget-object p2, p0, Lk/a/b/a/b/n/c;->a:Lk/a/b/a/b/n/j;

    if-eqz p2, :cond_0

    .line 10
    iget-object p3, p3, Lk/a/b/a/d/g0/f;->A:Lk/a/b/a/b/n/j;

    .line 11
    invoke-virtual {p3, p2}, Lk/a/b/a/b/n/j;->a(Lk/a/b/a/b/n/j;)V

    .line 12
    :cond_0
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object p2, Lk/a/b/a/d/h$b;->CONNECTION_REMOTE_CLOSE:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p2, p1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 13
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Close{error="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/c;->a:Lk/a/b/a/b/n/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
