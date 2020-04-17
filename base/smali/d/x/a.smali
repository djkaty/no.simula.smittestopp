.class public Ld/x/a;
.super Ld/x/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ld/x/n;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ld/x/n;->b(I)Ld/x/n;

    .line 3
    new-instance v1, Ld/x/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld/x/c;-><init>(I)V

    invoke-virtual {p0, v1}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    new-instance v1, Ld/x/b;

    invoke-direct {v1}, Ld/x/b;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    new-instance v1, Ld/x/c;

    invoke-direct {v1, v0}, Ld/x/c;-><init>(I)V

    .line 5
    invoke-virtual {p0, v1}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    return-void
.end method
