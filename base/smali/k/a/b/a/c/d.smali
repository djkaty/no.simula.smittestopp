.class public abstract Lk/a/b/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/j0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lk/a/b/a/c/x;

.field public final b:Lk/a/b/a/c/r;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 3
    iput-object p2, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lk/a/b/a/c/j0;->getType()Lk/a/b/a/c/i0;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    invoke-virtual {p0}, Lk/a/b/a/c/d;->g()B

    move-result v1

    .line 2
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract g()B
.end method
