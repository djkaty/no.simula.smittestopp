.class public Lk/b/a/m1;
.super Lk/b/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk/b/a/a;-><init>(ZI[B)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 3

    iget-boolean v0, p0, Lk/b/a/a;->x:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lk/b/a/a;->y:I

    iget-object v2, p0, Lk/b/a/a;->z:[B

    invoke-virtual {p1, p2, v0, v1, v2}, Lk/b/a/r;->a(ZII[B)V

    return-void
.end method
