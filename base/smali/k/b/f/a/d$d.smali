.class public Lk/b/f/a/d$d;
.super Lk/b/f/a/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk/b/f/a/d$b;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V

    return-void
.end method

.method public constructor <init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;[Lk/b/f/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lk/b/f/a/d$b;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;[Lk/b/f/a/c;)V

    return-void
.end method


# virtual methods
.method public a(I)Lk/b/f/a/c;
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p0}, Lk/b/f/a/d;->a()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1
    iget-object p1, p0, Lk/b/f/a/d;->d:[Lk/b/f/a/c;

    aget-object v1, p1, v0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 2
    iget-object v2, p0, Lk/b/f/a/d;->a:Lk/b/f/a/b;

    .line 3
    iget-object v2, v2, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    .line 4
    invoke-virtual {v2}, Lk/b/f/a/c;->e()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lk/b/f/a/c;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lk/b/f/a/c;->g()Lk/b/f/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/f/a/c;->g()Lk/b/f/a/c;

    move-result-object v1

    invoke-virtual {v2}, Lk/b/f/a/c;->f()Lk/b/f/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/f/a/c;->a()I

    move-result v4

    invoke-virtual {v2}, Lk/b/f/a/c;->a()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v1, v3}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/f/a/c;->f()Lk/b/f/a/c;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lk/b/f/a/c;->c(Lk/b/f/a/c;)Lk/b/f/a/c;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v2

    .line 5
    :goto_1
    aput-object v1, p1, v0

    :cond_3
    return-object v1

    .line 6
    :cond_4
    invoke-super {p0, p1}, Lk/b/f/a/d;->a(I)Lk/b/f/a/c;

    move-result-object p1

    return-object p1
.end method
