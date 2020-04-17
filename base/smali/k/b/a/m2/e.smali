.class public Lk/b/a/m2/e;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/m2/f;


# instance fields
.field public x:Lk/b/a/o;

.field public y:Lk/b/a/t;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/o;->a(Ljava/lang/Object;)Lk/b/a/o;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/m2/e;->x:Lk/b/a/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/m2/e;->y:Lk/b/a/t;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/m2/e;
    .locals 1

    instance-of v0, p0, Lk/b/a/m2/e;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/m2/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/m2/e;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/m2/e;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/m2/e;->x:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/m2/e;->y:Lk/b/a/t;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
