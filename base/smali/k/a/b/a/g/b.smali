.class public Lk/a/b/a/g/b;
.super Lk/a/b/a/d/a;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/a;-><init>()V

    const/16 v0, 0x400

    .line 2
    iput v0, p0, Lk/a/b/a/g/b;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk/a/b/a/g/b;->a:I

    return-void
.end method


# virtual methods
.method public onUnhandled(Lk/a/b/a/d/h;)V
    .locals 3

    .line 1
    iget v0, p0, Lk/a/b/a/g/b;->b:I

    .line 2
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->w()Lk/a/b/a/d/h$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v2, 0x13

    if-eq p1, v2, :cond_0

    const/16 v2, 0x14

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, v1, Lk/a/b/a/d/t;

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lk/a/b/a/g/b;->a:I

    invoke-interface {v1}, Lk/a/b/a/d/n;->g()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lk/a/b/a/g/b;->a:I

    if-nez v2, :cond_1

    .line 6
    check-cast v1, Lk/a/b/a/d/t;

    .line 7
    invoke-interface {v1}, Lk/a/b/a/d/n;->x()I

    move-result p1

    sub-int/2addr v0, p1

    .line 8
    invoke-interface {v1, v0}, Lk/a/b/a/d/t;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
