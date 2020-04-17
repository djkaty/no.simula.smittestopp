.class public Lk/b/i/b/a/f;
.super Lk/b/i/b/a/d;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Lk/b/i/d/a/a;


# direct methods
.method public constructor <init>(IILk/b/i/d/a/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lk/b/i/b/a/d;-><init>(Z)V

    iput p1, p0, Lk/b/i/b/a/f;->a:I

    iput p2, p0, Lk/b/i/b/a/f;->b:I

    new-instance p1, Lk/b/i/d/a/a;

    invoke-direct {p1, p3}, Lk/b/i/d/a/a;-><init>(Lk/b/i/d/a/a;)V

    iput-object p1, p0, Lk/b/i/b/a/f;->c:Lk/b/i/d/a/a;

    return-void
.end method
