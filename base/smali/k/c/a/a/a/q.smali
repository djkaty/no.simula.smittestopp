.class public Lk/c/a/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/c/a/a/a/e;


# instance fields
.field public a:Lk/c/a/a/a/s/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 5
    new-instance v0, Lk/c/a/a/a/s/p;

    invoke-direct {v0, p1}, Lk/c/a/a/a/s/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lk/c/a/a/a/s/p;->a(J)V

    return-void
.end method
