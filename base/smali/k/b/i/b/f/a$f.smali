.class public Lk/b/i/b/f/a$f;
.super Lk/b/i/b/f/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public synthetic constructor <init>(Lk/b/i/b/f/a$a;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lk/b/i/b/f/a$e;-><init>(Lk/b/i/b/f/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/l2/s;Ljava/lang/Object;)Lk/b/c/d/a;
    .locals 3

    .line 1
    iget-object p2, p1, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    .line 2
    iget-object p2, p2, Lk/b/a/l2/a;->y:Lk/b/a/e;

    .line 3
    invoke-static {p2}, Lk/b/i/a/i;->a(Ljava/lang/Object;)Lk/b/i/a/i;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lk/b/i/a/i;->z:Lk/b/a/l2/a;

    .line 5
    iget-object v0, v0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 6
    invoke-virtual {p1}, Lk/b/a/l2/s;->f()Lk/b/a/t;

    move-result-object p1

    invoke-static {p1}, Lk/b/i/a/n;->a(Ljava/lang/Object;)Lk/b/i/a/n;

    move-result-object p1

    new-instance v1, Lk/b/i/b/g/y$b;

    new-instance v2, Lk/b/i/b/g/w;

    .line 7
    iget p2, p2, Lk/b/i/a/i;->y:I

    .line 8
    invoke-static {v0}, Lk/b/i/b/f/b;->a(Lk/b/a/o;)Lk/b/c/a;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lk/b/i/b/g/w;-><init>(ILk/b/c/a;)V

    invoke-direct {v1, v2}, Lk/b/i/b/g/y$b;-><init>(Lk/b/i/b/g/w;)V

    .line 9
    iget-object p2, p1, Lk/b/i/a/n;->x:[B

    invoke-static {p2}, Lk/b/c/e/a;->a([B)[B

    move-result-object p2

    .line 10
    invoke-static {p2}, Lk/b/c/e/a;->b([B)[B

    move-result-object p2

    iput-object p2, v1, Lk/b/i/b/g/y$b;->c:[B

    .line 11
    iget-object p1, p1, Lk/b/i/a/n;->y:[B

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    .line 12
    invoke-static {p1}, Lk/b/c/e/a;->b([B)[B

    move-result-object p1

    iput-object p1, v1, Lk/b/i/b/g/y$b;->b:[B

    .line 13
    new-instance p1, Lk/b/i/b/g/y;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lk/b/i/b/g/y;-><init>(Lk/b/i/b/g/y$b;Lk/b/i/b/g/y$a;)V

    return-object p1
.end method
