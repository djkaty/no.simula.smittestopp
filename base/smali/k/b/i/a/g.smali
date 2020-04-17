.class public Lk/b/i/a/g;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:[[B

.field public B:[[B

.field public C:[B

.field public x:Lk/b/a/l;

.field public y:Lk/b/a/o;

.field public z:Lk/b/a/l;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lk/b/a/l;-><init>(J)V

    iput-object v0, p0, Lk/b/i/a/g;->x:Lk/b/a/l;

    new-instance v0, Lk/b/a/l;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lk/b/a/l;-><init>(J)V

    iput-object v0, p0, Lk/b/i/a/g;->z:Lk/b/a/l;

    invoke-static {p2}, Lk/b/c/e/a;->a([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/g;->A:[[B

    invoke-static {p3}, Lk/b/c/e/a;->a([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/g;->B:[[B

    invoke-static {p4}, Lk/b/c/e/a;->b([S)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/g;->C:[B

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 5

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    instance-of v1, v1, Lk/b/a/l;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v1

    iput-object v1, p0, Lk/b/i/a/g;->x:Lk/b/a/l;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/o;->a(Ljava/lang/Object;)Lk/b/a/o;

    move-result-object v1

    iput-object v1, p0, Lk/b/i/a/g;->y:Lk/b/a/o;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v1

    iput-object v1, p0, Lk/b/i/a/g;->z:Lk/b/a/l;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Lk/b/i/a/g;->A:[[B

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lk/b/i/a/g;->A:[[B

    invoke-virtual {v1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v4

    invoke-static {v4}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v4

    invoke-virtual {v4}, Lk/b/a/p;->j()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    check-cast v1, Lk/b/a/u;

    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Lk/b/i/a/g;->B:[[B

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Lk/b/a/u;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lk/b/i/a/g;->B:[[B

    invoke-virtual {v1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v4

    invoke-static {v4}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v4

    invoke-virtual {v4}, Lk/b/a/p;->j()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    check-cast p1, Lk/b/a/u;

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/p;->j()[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/g;->C:[B

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 7

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    .line 2
    iget-object v2, p0, Lk/b/i/a/g;->x:Lk/b/a/l;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lk/b/i/a/g;->y:Lk/b/a/o;

    :goto_0
    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v2, p0, Lk/b/i/a/g;->z:Lk/b/a/l;

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 3
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-object v5, p0, Lk/b/i/a/g;->A:[[B

    array-length v6, v5

    if-ge v4, v6, :cond_1

    new-instance v6, Lk/b/a/a1;

    aget-object v5, v5, v4

    invoke-direct {v6, v5}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v6}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lk/b/a/e1;

    invoke-direct {v4, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v4}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 5
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    .line 6
    :goto_2
    iget-object v4, p0, Lk/b/i/a/g;->B:[[B

    array-length v5, v4

    if-ge v3, v5, :cond_2

    new-instance v5, Lk/b/a/a1;

    aget-object v4, v4, v3

    invoke-direct {v5, v4}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v5}, Lk/b/a/f;->a(Lk/b/a/e;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Lk/b/a/e1;

    invoke-direct {v3, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v3}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v2, Lk/b/a/f;

    .line 7
    invoke-direct {v2, v1}, Lk/b/a/f;-><init>(I)V

    .line 8
    new-instance v1, Lk/b/a/a1;

    iget-object v3, p0, Lk/b/i/a/g;->C:[B

    invoke-direct {v1, v3}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v2, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v2}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
