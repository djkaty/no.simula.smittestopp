.class public Lk/b/a/j2/a;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/u;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/j2/a;->x:Lk/b/a/u;

    return-void
.end method


# virtual methods
.method public final a(I)Lk/b/a/t;
    .locals 4

    iget-object v0, p0, Lk/b/a/j2/a;->x:Lk/b/a/u;

    invoke-virtual {v0}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/e;

    instance-of v3, v1, Lk/b/a/b0;

    if-eqz v3, :cond_0

    check-cast v1, Lk/b/a/b0;

    .line 1
    iget v3, v1, Lk/b/a/b0;->x:I

    if-ne v3, p1, :cond_0

    .line 2
    invoke-virtual {v1}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 3
    :cond_1
    throw v2

    :cond_2
    return-object v2
.end method

.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/j2/a;->x:Lk/b/a/u;

    return-object v0
.end method
