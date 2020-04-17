.class public Lk/b/a/k2/a;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/o;

.field public y:Lk/b/a/e;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/o;

    iput-object v0, p0, Lk/b/a/k2/a;->x:Lk/b/a/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/k2/a;->y:Lk/b/a/e;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/k2/a;
    .locals 1

    instance-of v0, p0, Lk/b/a/k2/a;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/k2/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/k2/a;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/k2/a;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/k2/a;->x:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/k2/a;->y:Lk/b/a/e;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
