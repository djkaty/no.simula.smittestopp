.class public Lk/b/a/i2/a;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/o;

.field public y:Lk/b/a/x;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/o;

    iput-object v0, p0, Lk/b/a/i2/a;->x:Lk/b/a/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    check-cast p1, Lk/b/a/x;

    iput-object p1, p0, Lk/b/a/i2/a;->y:Lk/b/a/x;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/i2/a;->x:Lk/b/a/o;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/a;->y:Lk/b/a/x;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
