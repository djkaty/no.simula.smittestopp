.class public Lk/a/b/a/f/d/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/f/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lk/a/b/a/c/r;

.field public b:Lk/a/b/a/c/x;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/r;

    invoke-direct {v0}, Lk/a/b/a/c/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a$b;->a:Lk/a/b/a/c/r;

    .line 3
    new-instance v1, Lk/a/b/a/c/x;

    invoke-direct {v1, v0}, Lk/a/b/a/c/x;-><init>(Lk/a/b/a/c/r;)V

    iput-object v1, p0, Lk/a/b/a/f/d/a$b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, p0, Lk/a/b/a/f/d/a$b;->a:Lk/a/b/a/c/r;

    invoke-static {v0, v1}, Le/c/a/a/b/l/c;->a(Lk/a/b/a/c/i;Lk/a/b/a/c/x;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk/a/b/a/f/d/a$a;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Lk/a/b/a/c/r;

    invoke-direct {p1}, Lk/a/b/a/c/r;-><init>()V

    iput-object p1, p0, Lk/a/b/a/f/d/a$b;->a:Lk/a/b/a/c/r;

    .line 7
    new-instance v0, Lk/a/b/a/c/x;

    invoke-direct {v0, p1}, Lk/a/b/a/c/x;-><init>(Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/f/d/a$b;->b:Lk/a/b/a/c/x;

    .line 8
    iget-object p1, p0, Lk/a/b/a/f/d/a$b;->a:Lk/a/b/a/c/r;

    invoke-static {p1, v0}, Le/c/a/a/b/l/c;->a(Lk/a/b/a/c/i;Lk/a/b/a/c/x;)V

    return-void
.end method
