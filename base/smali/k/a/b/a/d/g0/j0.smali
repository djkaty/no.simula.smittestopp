.class public Lk/a/b/a/d/g0/j0;
.super Lk/a/b/a/d/g0/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/d/g0/e0<",
        "Lk/a/b/a/d/g0/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lk/a/b/a/b/h;


# instance fields
.field public j:Lk/a/b/a/d/g0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    sput-object v0, Lk/a/b/a/d/g0/j0;->k:Lk/a/b/a/b/h;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/d/g0/x;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lk/a/b/a/d/g0/e0;-><init>(Lk/a/b/a/d/g0/m;)V

    .line 2
    sget-object v0, Lk/a/b/a/d/g0/j0;->k:Lk/a/b/a/b/h;

    .line 3
    iput-object v0, p0, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 4
    iput-object p0, p1, Lk/a/b/a/d/g0/x;->a0:Lk/a/b/a/d/g0/j0;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/k;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lk/a/b/a/d/g0/e0;->a(Lk/a/b/a/b/n/k;)V

    .line 2
    iget-boolean v0, p1, Lk/a/b/a/b/n/k;->i:Z

    .line 3
    iget-object v1, p0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 4
    check-cast v1, Lk/a/b/a/d/g0/x;

    .line 5
    iput-boolean v0, v1, Lk/a/b/a/d/g0/m;->X:Z

    .line 6
    iget v0, v1, Lk/a/b/a/d/g0/m;->R:I

    .line 7
    iget-object v1, p0, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 8
    iget-object v2, p0, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 9
    invoke-virtual {v1, v2}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v1

    .line 10
    iget-object v2, p1, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    .line 11
    iget-object p1, p1, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    if-nez p1, :cond_0

    .line 12
    sget-object p1, Lk/a/b/a/d/g0/j0;->k:Lk/a/b/a/b/h;

    :cond_0
    invoke-virtual {v2, p1}, Lk/a/b/a/b/h;->a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p1

    .line 13
    iget-object v2, p0, Lk/a/b/a/d/g0/e0;->d:Lk/a/b/a/b/h;

    .line 14
    invoke-virtual {p1, v2}, Lk/a/b/a/b/h;->c(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object v2

    .line 15
    iput-object v2, p0, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 16
    iget-object v3, p0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 17
    check-cast v3, Lk/a/b/a/d/g0/x;

    invoke-virtual {p1, v1}, Lk/a/b/a/b/h;->c(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;

    move-result-object p1

    .line 18
    iget p1, p1, Lk/a/b/a/b/h;->x:I

    add-int/2addr p1, v0

    .line 19
    iput p1, v3, Lk/a/b/a/d/g0/m;->R:I

    .line 20
    iget-object p1, p0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 21
    check-cast p1, Lk/a/b/a/d/g0/x;

    .line 22
    iget-object v0, p1, Lk/a/b/a/d/g0/m;->K:Lk/a/b/a/d/g0/e;

    .line 23
    iget-object p1, p1, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 24
    iget-object p1, p1, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 25
    invoke-virtual {p1, v0}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/g0/e;)V

    .line 26
    iput-object v2, p0, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    return-void
.end method
