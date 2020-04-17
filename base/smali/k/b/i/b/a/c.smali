.class public Lk/b/i/b/a/c;
.super Lk/b/i/b/a/a;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:Lk/b/i/d/a/a;


# direct methods
.method public constructor <init>(IILk/b/i/d/a/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Lk/b/i/b/a/a;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Lk/b/i/b/a/c;->b:I

    iput p2, p0, Lk/b/i/b/a/c;->c:I

    new-instance p1, Lk/b/i/d/a/a;

    invoke-direct {p1, p3}, Lk/b/i/d/a/a;-><init>(Lk/b/i/d/a/a;)V

    iput-object p1, p0, Lk/b/i/b/a/c;->d:Lk/b/i/d/a/a;

    return-void
.end method
