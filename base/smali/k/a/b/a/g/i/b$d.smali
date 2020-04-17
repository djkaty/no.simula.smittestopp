.class public final Lk/a/b/a/g/i/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/g/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/g/g;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lk/a/b/a/g/g;->b()Lk/a/b/a/g/d;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Lk/a/b/a/g/i/j;

    .line 3
    iget-object v1, v1, Lk/a/b/a/g/i/j;->J:Lk/a/b/a/d/c0;

    .line 4
    invoke-interface {v0}, Lk/a/b/a/g/d;->S()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lk/a/b/a/d/c0;->a(J)J

    move-result-wide v1

    .line 5
    invoke-interface {p1, v1, v2}, Lk/a/b/a/g/g;->c(J)V

    .line 6
    invoke-static {p1}, Lk/a/b/a/g/i/b;->a(Lk/a/b/a/g/g;)I

    move-result v1

    .line 7
    invoke-static {p1}, Lk/a/b/a/g/i/b;->b(Lk/a/b/a/g/g;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1, v1}, Lk/a/b/a/g/g;->a(Z)V

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 9
    :goto_1
    invoke-interface {p1, v3}, Lk/a/b/a/g/g;->b(Z)V

    .line 10
    invoke-interface {v0, p1}, Lk/a/b/a/g/d;->a(Lk/a/b/a/g/g;)V

    return-void
.end method
