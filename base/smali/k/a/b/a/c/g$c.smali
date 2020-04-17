.class public Lk/a/b/a/c/g$c;
.super Lk/a/b/a/c/m0;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/m0<",
        "Lk/a/b/a/b/a;",
        ">;",
        "Lk/a/b/a/c/g$a;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lk/a/b/a/c/g;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/g;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/g$c;->c:Lk/a/b/a/c/g;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/m0;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/c/r0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/a;",
            ">;)Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/b/a;

    .line 2
    iget p1, p1, Lk/a/b/a/b/a;->c:I

    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lk/a/b/a/b/a;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 4
    iget v1, p1, Lk/a/b/a/b/a;->c:I

    .line 5
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 6
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 7
    iget-object v1, p1, Lk/a/b/a/b/a;->a:[B

    .line 8
    iget v2, p1, Lk/a/b/a/b/a;->b:I

    .line 9
    iget p1, p1, Lk/a/b/a/b/a;->c:I

    .line 10
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, v1, v2, p1}, Lk/a/b/a/c/y0;->a([BII)V

    return-void
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x60

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/g$c;->c:Lk/a/b/a/c/g;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/g$c;->c:Lk/a/b/a/c/g;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    new-array v1, v0, [B

    .line 4
    iget-object v2, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    const/4 v3, 0x0

    .line 5
    iget-object v2, v2, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v2, v1, v3, v0}, Lk/a/b/a/c/k0;->a([BII)Lk/a/b/a/c/k0;

    .line 6
    new-instance v0, Lk/a/b/a/b/a;

    invoke-direct {v0, v1}, Lk/a/b/a/b/a;-><init>([B)V

    return-object v0
.end method
