.class public Lk/a/b/a/c/g$b;
.super Lk/a/b/a/c/d0;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/d0<",
        "Lk/a/b/a/b/a;",
        ">;",
        "Lk/a/b/a/c/g$a;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lk/a/b/a/c/g;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/g;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/g$b;->c:Lk/a/b/a/c/g;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/d0;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/c/r0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/a;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/g$b;->c:Lk/a/b/a/c/g;

    .line 2
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

.method public c(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/b/a;

    .line 2
    iget p1, p1, Lk/a/b/a/b/a;->c:I

    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lk/a/b/a/b/a;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 4
    iget v1, p1, Lk/a/b/a/b/a;->c:I

    .line 5
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 6
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 7
    iget-object v1, p1, Lk/a/b/a/b/a;->a:[B

    .line 8
    iget v2, p1, Lk/a/b/a/b/a;->b:I

    .line 9
    iget p1, p1, Lk/a/b/a/b/a;->c:I

    .line 10
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, v1, v2, p1}, Lk/a/b/a/c/y0;->a([BII)V

    return-void
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x50

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/g$b;->c:Lk/a/b/a/c/g;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/g$b;->c:Lk/a/b/a/c/g;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->f()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/c/r;->a()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 4
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 5
    iget-object v0, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0, v2, v3, v1}, Lk/a/b/a/c/k0;->a([BII)Lk/a/b/a/c/k0;

    .line 6
    new-instance v0, Lk/a/b/a/b/a;

    invoke-direct {v0, v2}, Lk/a/b/a/b/a;-><init>([B)V

    return-object v0

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Binary data size "

    const-string v4, " is specified to be greater than the amount of data available ("

    invoke-static {v3, v1, v4}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lk/a/b/a/c/r;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
