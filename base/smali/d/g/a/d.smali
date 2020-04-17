.class public Ld/g/a/d;
.super Ld/g/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ld/g/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld/g/a/b;-><init>(Ld/g/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Ld/g/a/g;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ld/g/a/b;->a(Ld/g/a/g;)V

    .line 2
    iget v0, p1, Ld/g/a/g;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ld/g/a/g;->j:I

    return-void
.end method
