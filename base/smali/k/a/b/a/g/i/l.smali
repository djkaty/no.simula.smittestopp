.class public Lk/a/b/a/g/i/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/h;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/g/h;",
        "Ljava/lang/Comparable<",
        "Lk/a/b/a/g/i/l;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Lk/a/b/a/d/u;

.field public B:Lk/a/b/a/g/d;

.field public final x:J

.field public final y:I

.field public z:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk/a/b/a/g/i/l;->z:Z

    .line 3
    new-instance v0, Lk/a/b/a/d/g0/r;

    invoke-direct {v0}, Lk/a/b/a/d/g0/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/g/i/l;->A:Lk/a/b/a/d/u;

    .line 4
    iput-wide p1, p0, Lk/a/b/a/g/i/l;->x:J

    .line 5
    iput p3, p0, Lk/a/b/a/g/i/l;->y:I

    return-void
.end method


# virtual methods
.method public b()Lk/a/b/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/l;->B:Lk/a/b/a/g/d;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lk/a/b/a/g/i/l;

    .line 2
    iget-wide v0, p0, Lk/a/b/a/g/i/l;->x:J

    iget-wide v2, p1, Lk/a/b/a/g/i/l;->x:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p0, Lk/a/b/a/g/i/l;->y:I

    iget p1, p1, Lk/a/b/a/g/i/l;->y:I

    sub-int p1, v0, p1

    :goto_0
    return p1
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk/a/b/a/g/i/l;->x:J

    return-wide v0
.end method

.method public q()Lk/a/b/a/d/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/g/i/l;->A:Lk/a/b/a/d/u;

    return-object v0
.end method
