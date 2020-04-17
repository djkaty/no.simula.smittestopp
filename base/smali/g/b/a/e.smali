.class public final Lg/b/a/e;
.super Lg/c/g;
.source "SourceFile"


# instance fields
.field public final c:Lg/c/g$g;

.field public final d:Lg/c/g$g;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    sget-object p1, Lg/b/a/d;->b:Lg/c/f;

    .line 2
    invoke-direct {p0, p1}, Lg/c/g;-><init>(Lg/c/f;)V

    .line 3
    new-instance p1, Lg/c/g$g;

    invoke-direct {p1, p0}, Lg/c/g$g;-><init>(Lg/c/g;)V

    iput-object p1, p0, Lg/b/a/e;->c:Lg/c/g$g;

    .line 4
    new-instance p1, Lg/c/g$g;

    invoke-direct {p1, p0}, Lg/c/g$g;-><init>(Lg/c/g;)V

    iput-object p1, p0, Lg/b/a/e;->d:Lg/c/g$g;

    .line 5
    iget-object p1, p0, Lg/b/a/e;->c:Lg/c/g$g;

    .line 6
    invoke-virtual {p1}, Lg/c/g$f;->a()V

    invoke-virtual {p1}, Lg/c/g$f;->c()J

    const/4 p1, 0x0

    throw p1
.end method
