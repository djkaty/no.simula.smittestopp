.class public Lk/b/a/l2/o;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/l2/m;

.field public y:Lk/b/a/l;

.field public z:Lk/b/a/r0;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad sequence size: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/m;->a(Ljava/lang/Object;)Lk/b/a/l2/m;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/o;->x:Lk/b/a/l2/m;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/o;->y:Lk/b/a/l;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/r0;->a(Ljava/lang/Object;)Lk/b/a/r0;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/o;->z:Lk/b/a/r0;

    :cond_2
    return-void
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/l2/o;
    .locals 0

    invoke-static {p0, p1}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object p0

    .line 1
    instance-of p1, p0, Lk/b/a/l2/o;

    if-eqz p1, :cond_0

    check-cast p0, Lk/b/a/l2/o;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    new-instance p1, Lk/b/a/l2/o;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/l2/o;-><init>(Lk/b/a/u;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/o;->x:Lk/b/a/l2/m;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/o;->y:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/o;->z:Lk/b/a/r0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
