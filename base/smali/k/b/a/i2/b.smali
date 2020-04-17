.class public Lk/b/a/i2/b;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/i2/c;

.field public y:Lk/b/a/l2/a;

.field public z:Lk/b/a/r0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/a/i2/b;->x:Lk/b/a/i2/c;

    iput-object v0, p0, Lk/b/a/i2/b;->y:Lk/b/a/l2/a;

    iput-object v0, p0, Lk/b/a/i2/b;->z:Lk/b/a/r0;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/a/i2/b;->x:Lk/b/a/i2/c;

    iput-object v0, p0, Lk/b/a/i2/b;->y:Lk/b/a/l2/a;

    iput-object v0, p0, Lk/b/a/i2/b;->z:Lk/b/a/r0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    .line 1
    instance-of v2, v1, Lk/b/a/i2/c;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lk/b/a/i2/c;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lk/b/a/i2/c;

    invoke-static {v1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/i2/c;-><init>(Lk/b/a/u;)V

    .line 2
    :cond_1
    :goto_0
    iput-object v0, p0, Lk/b/a/i2/b;->x:Lk/b/a/i2/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/i2/b;->y:Lk/b/a/l2/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    check-cast p1, Lk/b/a/r0;

    iput-object p1, p0, Lk/b/a/i2/b;->z:Lk/b/a/r0;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/i2/b;->x:Lk/b/a/i2/c;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/b;->y:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/b;->z:Lk/b/a/r0;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
