.class public Lk/b/f/a/d$c;
.super Lk/b/f/a/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk/b/f/a/d$a;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V

    return-void
.end method


# virtual methods
.method public b()Lk/b/f/a/c;
    .locals 5

    invoke-virtual {p0}, Lk/b/f/a/d;->a()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    return-object v0

    :cond_0
    iget-object v1, p0, Lk/b/f/a/d;->b:Lk/b/f/a/c;

    iget-object v3, p0, Lk/b/f/a/d;->c:Lk/b/f/a/c;

    invoke-virtual {p0}, Lk/b/f/a/d;->c()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lk/b/f/a/c;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lk/b/f/a/c;->a(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v1

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lk/b/f/a/c;->d()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lk/b/f/a/c;->b(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v3
.end method
