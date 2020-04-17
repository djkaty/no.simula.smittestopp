.class public Lk/a/b/a/c/n$a;
.super Lk/a/b/a/c/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/z<",
        "Lk/a/b/a/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lk/a/b/a/c/n;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/n;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/n$a;->c:Lk/a/b/a/c/n;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/z;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lk/a/b/a/b/b;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iget-wide v1, p1, Lk/a/b/a/b/b;->y:J

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, v1, v2}, Lk/a/b/a/c/y0;->a(J)V

    .line 5
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 6
    iget-wide v1, p1, Lk/a/b/a/b/b;->z:J

    .line 7
    iget-object p1, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {p1, v1, v2}, Lk/a/b/a/c/y0;->a(J)V

    return-void
.end method

.method public a(Lk/a/b/a/c/r0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/b;",
            ">;)Z"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/n$a;->c:Lk/a/b/a/c/n;

    .line 9
    invoke-interface {p1}, Lk/a/b/a/c/r0;->getType()Lk/a/b/a/c/a;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x6c

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/n$a;->c:Lk/a/b/a/c/n;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/n$a;->c:Lk/a/b/a/c/n;

    return-object v0
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->g()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 4
    invoke-virtual {v2}, Lk/a/b/a/c/r;->g()J

    move-result-wide v2

    .line 5
    new-instance v4, Lk/a/b/a/b/b;

    invoke-direct {v4, v0, v1, v2, v3}, Lk/a/b/a/b/b;-><init>(JJ)V

    return-object v4
.end method
