.class public final Lk/a/b/a/c/z0/v$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/z0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final x:Lk/a/b/a/b/k/l;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/k/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/z0/v$a;->x:Lk/a/b/a/b/k/l;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lk/a/b/a/c/z0/v$a;->x:Lk/a/b/a/b/k/l;

    .line 2
    iget-object p1, p1, Lk/a/b/a/b/k/l;->e:Lk/a/b/a/b/h;

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
    iget-object p1, p0, Lk/a/b/a/c/z0/v$a;->x:Lk/a/b/a/b/k/l;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/k/l;->d:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/z0/v$a;->x:Lk/a/b/a/b/k/l;

    .line 7
    iget-object p1, p1, Lk/a/b/a/b/k/l;->c:Lk/a/b/a/b/h;

    return-object p1

    .line 8
    :cond_3
    iget-object p1, p0, Lk/a/b/a/c/z0/v$a;->x:Lk/a/b/a/b/k/l;

    .line 9
    iget-object p1, p1, Lk/a/b/a/b/k/l;->b:Lk/a/b/a/b/g;

    return-object p1

    .line 10
    :cond_4
    iget-object p1, p0, Lk/a/b/a/c/z0/v$a;->x:Lk/a/b/a/b/k/l;

    .line 11
    iget-object p1, p1, Lk/a/b/a/b/k/l;->a:Ljava/lang/Boolean;

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/v$a;->x:Lk/a/b/a/b/k/l;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/k/l;->e:Lk/a/b/a/b/h;

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lk/a/b/a/b/k/l;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lk/a/b/a/b/k/l;->c:Lk/a/b/a/b/h;

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v0, Lk/a/b/a/b/k/l;->b:Lk/a/b/a/b/g;

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, v0, Lk/a/b/a/b/k/l;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
