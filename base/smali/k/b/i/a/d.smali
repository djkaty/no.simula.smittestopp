.class public Lk/b/i/a/d;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public final x:I

.field public final y:I

.field public final z:Lk/b/i/d/a/a;


# direct methods
.method public constructor <init>(IILk/b/i/d/a/a;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput p1, p0, Lk/b/i/a/d;->x:I

    iput p2, p0, Lk/b/i/a/d;->y:I

    new-instance p1, Lk/b/i/d/a/a;

    invoke-direct {p1, p3}, Lk/b/i/d/a/a;-><init>(Lk/b/i/d/a/a;)V

    iput-object p1, p0, Lk/b/i/a/d;->z:Lk/b/i/d/a/a;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v0

    iput v0, p0, Lk/b/i/a/d;->x:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v0

    iput v0, p0, Lk/b/i/a/d;->y:I

    new-instance v0, Lk/b/i/d/a/a;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    check-cast p1, Lk/b/a/p;

    invoke-virtual {p1}, Lk/b/a/p;->j()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/i/d/a/a;-><init>([B)V

    iput-object v0, p0, Lk/b/i/a/d;->z:Lk/b/i/d/a/a;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    .line 2
    new-instance v1, Lk/b/a/l;

    iget v2, p0, Lk/b/i/a/d;->x:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lk/b/a/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    iget v2, p0, Lk/b/i/a/d;->y:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lk/b/a/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v2, p0, Lk/b/i/a/d;->z:Lk/b/i/d/a/a;

    invoke-virtual {v2}, Lk/b/i/d/a/a;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
