.class public Lk/b/a/l2/q;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Lk/b/a/r0;

.field public x:Lk/b/a/g;

.field public y:Lk/b/a/o;

.field public z:Lk/b/a/l2/a;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 4

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1
    instance-of v3, v2, Lk/b/a/g;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    instance-of v3, v2, [B

    if-eqz v3, :cond_1

    :try_start_0
    check-cast v2, [B

    invoke-static {v2}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object v2

    check-cast v2, Lk/b/a/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoding error in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal object in getInstance: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    check-cast v2, Lk/b/a/g;

    .line 2
    :goto_1
    iput-object v2, p0, Lk/b/a/l2/q;->x:Lk/b/a/g;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_3

    invoke-virtual {p1, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/o;->a(Ljava/lang/Object;)Lk/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/q;->y:Lk/b/a/o;

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object v1

    iput-object v1, p0, Lk/b/a/l2/q;->z:Lk/b/a/l2/a;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/r0;->a(Ljava/lang/Object;)Lk/b/a/r0;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/q;->A:Lk/b/a/r0;

    return-void

    :cond_4
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
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/l2/q;
    .locals 0

    invoke-static {p0, p1}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object p0

    .line 1
    instance-of p1, p0, Lk/b/a/l2/q;

    if-eqz p1, :cond_0

    check-cast p0, Lk/b/a/l2/q;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    new-instance p1, Lk/b/a/l2/q;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/l2/q;-><init>(Lk/b/a/u;)V

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

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/q;->x:Lk/b/a/g;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/q;->y:Lk/b/a/o;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    iget-object v1, p0, Lk/b/a/l2/q;->z:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/q;->A:Lk/b/a/r0;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
