.class public Lk/a/b/a/c/o0$b;
.super Lk/a/b/a/c/d0;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/o0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/d0<",
        "Lk/a/b/a/b/f;",
        ">;",
        "Lk/a/b/a/c/o0$d;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lk/a/b/a/c/o0;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/o0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/o0$b;->c:Lk/a/b/a/c/o0;

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
            "Lk/a/b/a/b/f;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/o0$b;->c:Lk/a/b/a/c/o0;

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
    check-cast p1, Lk/a/b/a/b/f;

    .line 2
    invoke-virtual {p1}, Lk/a/b/a/b/f;->length()I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/b/f;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 4
    invoke-virtual {p1}, Lk/a/b/a/b/f;->length()I

    move-result v1

    .line 5
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 6
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 7
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 8
    invoke-virtual {p1, v0}, Lk/a/b/a/b/f;->a(Lk/a/b/a/c/y0;)V

    return-void
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x4d

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/o0$b;->c:Lk/a/b/a/c/o0;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/o0$b;->c:Lk/a/b/a/c/o0;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->f()I

    move-result v1

    .line 3
    iget-object v2, p0, Lk/a/b/a/c/o0$b;->c:Lk/a/b/a/c/o0;

    .line 4
    iget-object v2, v2, Lk/a/b/a/c/o0;->d:Lk/a/b/a/c/r$b;

    .line 5
    invoke-virtual {v0, v2, v1}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/r$b;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/b/f;

    return-object v0
.end method
