.class public abstract Lk/a/b/a/c/d0;
.super Lk/a/b/a/c/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk/a/b/a/c/b0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/a/b/a/c/b0;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 2
    invoke-virtual {p0, p1}, Lk/a/b/a/c/b0;->c(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->b(I)V

    return-void
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
