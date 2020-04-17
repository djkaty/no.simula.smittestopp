.class public Lk/a/b/a/d/g0/i0;
.super Lk/a/b/a/d/g0/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/d/g0/e0<",
        "Lk/a/b/a/d/g0/q;",
        ">;"
    }
.end annotation


# instance fields
.field public j:Lk/a/b/a/b/h;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/a/b/a/d/g0/e0;-><init>(Lk/a/b/a/d/g0/m;)V

    .line 2
    iput-object p0, p1, Lk/a/b/a/d/g0/q;->a0:Lk/a/b/a/d/g0/i0;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/k;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/g0/e0;->a(Lk/a/b/a/b/n/k;)V

    .line 2
    iget-object p1, p0, Lk/a/b/a/d/g0/e0;->g:Lk/a/b/a/b/h;

    .line 3
    iget p1, p1, Lk/a/b/a/b/h;->x:I

    .line 4
    iget-object v0, p0, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 5
    iget v0, v0, Lk/a/b/a/b/h;->x:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    .line 6
    iget-object v0, p0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 7
    check-cast v0, Lk/a/b/a/d/g0/q;

    neg-int v1, p1

    .line 8
    iget v2, v0, Lk/a/b/a/d/g0/m;->R:I

    add-int/2addr v2, v1

    iput v2, v0, Lk/a/b/a/d/g0/m;->R:I

    .line 9
    iget-object v0, p0, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 10
    iget v0, v0, Lk/a/b/a/b/h;->x:I

    add-int/2addr v0, v1

    .line 11
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 12
    iget-object v0, p0, Lk/a/b/a/d/g0/e0;->g:Lk/a/b/a/b/h;

    .line 13
    iput-object v0, p0, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 14
    iget-object v0, p0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 15
    check-cast v0, Lk/a/b/a/d/g0/q;

    .line 16
    iget v1, v0, Lk/a/b/a/d/g0/m;->T:I

    add-int/2addr v1, p1

    .line 17
    iput v1, v0, Lk/a/b/a/d/g0/m;->T:I

    :cond_0
    return-void
.end method
