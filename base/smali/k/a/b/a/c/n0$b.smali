.class public Lk/a/b/a/c/n0$b;
.super Lk/a/b/a/c/d0;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/n0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/d0<",
        "Ljava/lang/String;",
        ">;",
        "Lk/a/b/a/c/n0$d;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public final synthetic e:Lk/a/b/a/c/n0;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/n0;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/n0$b;->e:Lk/a/b/a/c/n0;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/d0;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lk/a/b/a/c/n0$b;->c:Ljava/lang/String;

    .line 4
    iput p2, p0, Lk/a/b/a/c/n0$b;->d:I

    return-void
.end method

.method public a(Lk/a/b/a/c/r0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/n0$b;->e:Lk/a/b/a/c/n0;

    .line 2
    invoke-interface {p1}, Lk/a/b/a/c/r0;->getType()Lk/a/b/a/c/a;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/n0$b;->c:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lk/a/b/a/c/n0$b;->d:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lk/a/b/a/c/n0;->a(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 4
    iget-object v1, p0, Lk/a/b/a/c/n0$b;->c:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lk/a/b/a/c/n0$b;->d:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lk/a/b/a/c/n0;->a(Ljava/lang/String;)I

    move-result v1

    .line 5
    :goto_0
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 6
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 7
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x4f

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/n0$b;->e:Lk/a/b/a/c/n0;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/n0$b;->e:Lk/a/b/a/c/n0;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->f()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lk/a/b/a/c/n0;->c:Lk/a/b/a/c/r$b;

    .line 4
    invoke-virtual {v0, v2, v1}, Lk/a/b/a/c/r;->a(Lk/a/b/a/c/r$b;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method
