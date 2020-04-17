.class public Lk/b/a/l2/f;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/u;

.field public y:Lk/b/a/l2/u;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/l2/f;->x:Lk/b/a/u;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    .line 1
    instance-of v1, v0, Lk/b/a/l2/u;

    if-eqz v1, :cond_0

    check-cast v0, Lk/b/a/l2/u;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lk/b/a/l2/u;

    invoke-static {v0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v0

    invoke-direct {v1, v0}, Lk/b/a/l2/u;-><init>(Lk/b/a/u;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-object v0, p0, Lk/b/a/l2/f;->y:Lk/b/a/l2/u;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/r0;->a(Ljava/lang/Object;)Lk/b/a/r0;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/l2/f;->x:Lk/b/a/u;

    return-object v0
.end method
