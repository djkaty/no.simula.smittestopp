.class public Lk/b/a/c1;
.super Lk/b/a/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lk/b/a/r;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a()Lk/b/a/c1;
    .locals 0

    return-object p0
.end method

.method public a(Lk/b/a/t;Z)V
    .locals 0

    invoke-virtual {p1}, Lk/b/a/t;->h()Lk/b/a/t;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lk/b/a/t;->a(Lk/b/a/r;Z)V

    return-void
.end method

.method public b()Lk/b/a/r;
    .locals 0

    return-object p0
.end method
