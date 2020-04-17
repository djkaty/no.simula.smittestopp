.class public Lk/a/b/a/c/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lk/a/b/a/c/r0;

.field public final b:Lk/a/b/a/c/r0;

.field public final c:I

.field public final synthetic d:Lk/a/b/a/c/v;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/v;Lk/a/b/a/c/r0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/v$a;->d:Lk/a/b/a/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    .line 3
    iget-object p2, p1, Lk/a/b/a/c/v;->a:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, p1, Lk/a/b/a/c/v;->c:Ljava/lang/Object;

    .line 5
    invoke-virtual {p2, v0}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object p2

    .line 6
    iget-object v0, p1, Lk/a/b/a/c/v;->c:Ljava/lang/Object;

    .line 7
    invoke-interface {p2, v0}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p2

    iput-object p2, p0, Lk/a/b/a/c/v$a;->b:Lk/a/b/a/c/r0;

    .line 8
    invoke-interface {p2}, Lk/a/b/a/c/r0;->d()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lk/a/b/a/c/v$a;->b:Lk/a/b/a/c/r0;

    .line 9
    iget-object p1, p1, Lk/a/b/a/c/v;->c:Ljava/lang/Object;

    .line 10
    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, p2

    iget-object p2, p0, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    .line 11
    invoke-interface {p2}, Lk/a/b/a/c/r0;->d()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lk/a/b/a/c/v$a;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    check-cast p1, Lk/a/b/a/b/e;

    invoke-interface {p1}, Lk/a/b/a/b/e;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lk/a/b/a/c/r0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/v$a;->d:Lk/a/b/a/c/v;

    .line 2
    invoke-interface {p1}, Lk/a/b/a/c/r0;->getType()Lk/a/b/a/c/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    check-cast p1, Lk/a/b/a/c/v$a;

    iget-object p1, p1, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    .line 3
    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->a(Lk/a/b/a/c/r0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    check-cast p1, Lk/a/b/a/b/e;

    invoke-interface {p1}, Lk/a/b/a/b/e;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/v$a;->d:Lk/a/b/a/c/v;

    .line 2
    iget-object v0, v0, Lk/a/b/a/c/v;->a:Lk/a/b/a/c/x;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 4
    iget-object v0, p0, Lk/a/b/a/c/v$a;->b:Lk/a/b/a/c/r0;

    invoke-interface {v0}, Lk/a/b/a/c/r0;->c()V

    .line 5
    iget-object v0, p0, Lk/a/b/a/c/v$a;->b:Lk/a/b/a/c/r0;

    iget-object v1, p0, Lk/a/b/a/c/v$a;->d:Lk/a/b/a/c/v;

    .line 6
    iget-object v1, v1, Lk/a/b/a/c/v;->c:Ljava/lang/Object;

    .line 7
    invoke-interface {v0, v1}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    invoke-interface {v0}, Lk/a/b/a/c/r0;->c()V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lk/a/b/a/c/v$a;->c:I

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/v$a;->a:Lk/a/b/a/c/r0;

    invoke-interface {v0}, Lk/a/b/a/c/r0;->f()Z

    move-result v0

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/v$a;->d:Lk/a/b/a/c/v;

    return-object v0
.end method
