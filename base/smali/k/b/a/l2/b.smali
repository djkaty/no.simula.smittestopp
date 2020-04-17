.class public Lk/b/a/l2/b;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/d;


# instance fields
.field public x:Lk/b/a/e;

.field public y:Lk/b/a/t;


# direct methods
.method public constructor <init>(Lk/b/a/l2/m;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/l2/b;->x:Lk/b/a/e;

    invoke-interface {p1}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/b;->y:Lk/b/a/t;

    return-void
.end method

.method public constructor <init>(Lk/b/a/l2/w;)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/l2/b;->x:Lk/b/a/e;

    new-instance v0, Lk/b/a/h1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    iput-object v0, p0, Lk/b/a/l2/b;->y:Lk/b/a/t;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/l2/b;->y:Lk/b/a/t;

    return-object v0
.end method
