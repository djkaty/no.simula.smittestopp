.class public Lk/b/i/b/f/a$c;
.super Lk/b/i/b/f/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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
    .locals 2

    new-instance p2, Lk/b/i/b/c/b;

    .line 1
    iget-object v0, p1, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    .line 2
    sget-object v1, Lk/b/i/b/f/b;->i:Ljava/util/Map;

    .line 3
    iget-object v0, v0, Lk/b/a/l2/a;->x:Lk/b/a/o;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    iget-object p1, p1, Lk/b/a/l2/s;->y:Lk/b/a/r0;

    .line 6
    iget v1, p1, Lk/b/a/b;->y:I

    if-nez v1, :cond_0

    iget-object p1, p1, Lk/b/a/b;->x:[B

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    .line 7
    invoke-direct {p2, v0, p1}, Lk/b/i/b/c/b;-><init>(I[B)V

    return-object p2

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
