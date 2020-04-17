.class public final Lk/a/b/a/c/z0/z$b;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/z0/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final x:Lk/a/b/a/b/k/q;


# direct methods
.method public synthetic constructor <init>(Lk/a/b/a/b/k/q;Lk/a/b/a/c/z0/z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/z0/z$b;->x:Lk/a/b/a/b/k/q;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lk/a/b/a/c/z0/z$b;->x:Lk/a/b/a/b/k/q;

    .line 2
    iget-object p1, p1, Lk/a/b/a/b/k/q;->b:Lk/a/b/a/b/i;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown index "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object p1, p0, Lk/a/b/a/c/z0/z$b;->x:Lk/a/b/a/b/k/q;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/k/q;->a:Lk/a/b/a/b/h;

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/z$b;->x:Lk/a/b/a/b/k/q;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/k/q;->b:Lk/a/b/a/b/i;

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/q;->a:Lk/a/b/a/b/h;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
