.class public Lk/b/i/a/l;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public final x:[B

.field public final y:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/l;->x:[B

    invoke-static {p2}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/l;->y:[B

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

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lk/b/a/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v2, p0, Lk/b/i/a/l;->x:[B

    invoke-direct {v1, v2}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/a1;

    iget-object v2, p0, Lk/b/i/a/l;->y:[B

    invoke-direct {v1, v2}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
