.class public Lk/a/b/a/c/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/r$c;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lk/a/b/a/c/r$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lk/a/b/a/b/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/a/b/a/c/r$c;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    check-cast p1, Lk/a/b/a/b/e;

    .line 2
    invoke-interface {p1}, Lk/a/b/a/b/e;->a()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk/a/b/a/c/r$c;->a:Ljava/lang/Object;

    check-cast p1, Lk/a/b/a/b/e;

    .line 3
    invoke-interface {p1}, Lk/a/b/a/b/e;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk/a/b/a/c/r$c;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 4
    invoke-interface {p1}, Lk/a/b/a/b/e;->b()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lk/a/b/a/c/r$c;->b:Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lk/a/b/a/b/e;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method
