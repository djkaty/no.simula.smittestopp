.class public Lk/b/a/l2/r;
.super Lk/b/a/r0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk/b/a/r0;)V
    .locals 1

    invoke-virtual {p1}, Lk/b/a/b;->j()[B

    move-result-object v0

    .line 1
    iget p1, p1, Lk/b/a/b;->y:I

    .line 2
    invoke-direct {p0, v0, p1}, Lk/b/a/r0;-><init>([BI)V

    return-void
.end method
