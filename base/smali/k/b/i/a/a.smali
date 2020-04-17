.class public Lk/b/i/a/a;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:[B

.field public B:[B

.field public C:Lk/b/a/l2/a;

.field public x:I

.field public y:I

.field public z:[B


# direct methods
.method public constructor <init>(IILk/b/i/d/a/b;Lk/b/i/d/a/e;Lk/b/i/d/a/d;Lk/b/a/l2/a;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput p1, p0, Lk/b/i/a/a;->x:I

    iput p2, p0, Lk/b/i/a/a;->y:I

    invoke-virtual {p3}, Lk/b/i/d/a/b;->a()[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/a;->z:[B

    invoke-virtual {p4}, Lk/b/i/d/a/e;->c()[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/a;->A:[B

    invoke-virtual {p5}, Lk/b/i/d/a/d;->a()[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/a;->B:[B

    iput-object p6, p0, Lk/b/i/a/a;->C:Lk/b/a/l2/a;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v0

    iput v0, p0, Lk/b/i/a/a;->x:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/l;

    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v0

    iput v0, p0, Lk/b/i/a/a;->y:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/p;

    invoke-virtual {v0}, Lk/b/a/p;->j()[B

    move-result-object v0

    iput-object v0, p0, Lk/b/i/a/a;->z:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/p;

    invoke-virtual {v0}, Lk/b/a/p;->j()[B

    move-result-object v0

    iput-object v0, p0, Lk/b/i/a/a;->A:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    check-cast v0, Lk/b/a/p;

    invoke-virtual {v0}, Lk/b/a/p;->j()[B

    move-result-object v0

    iput-object v0, p0, Lk/b/i/a/a;->B:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/a;->C:Lk/b/a/l2/a;

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

    iget v2, p0, Lk/b/i/a/a;->x:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lk/b/a/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    iget v2, p0, Lk/b/i/a/a;->y:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lk/b/a/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v2, p0, Lk/b/i/a/a;->z:[B

    invoke-direct {v1, v2}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v2, p0, Lk/b/i/a/a;->A:[B

    invoke-direct {v1, v2}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v2, p0, Lk/b/i/a/a;->B:[B

    invoke-direct {v1, v2}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/i/a/a;->C:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
