.class public final Lk/a/b/a/c/c1/e$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/c1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public x:Lk/a/b/a/b/n/g;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/n/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    .line 2
    iget-boolean p1, p1, Lk/a/b/a/b/n/g;->f:Z

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown index "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object p1, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    .line 6
    iget-object p1, p1, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    return-object p1

    .line 7
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    .line 8
    iget-boolean p1, p1, Lk/a/b/a/b/n/g;->d:Z

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    iget-object p1, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    .line 11
    iget-object p1, p1, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    return-object p1

    .line 12
    :cond_4
    iget-object p1, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    .line 13
    iget-object p1, p1, Lk/a/b/a/b/n/g;->b:Lk/a/b/a/b/h;

    return-object p1

    .line 14
    :cond_5
    iget-object p1, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    .line 15
    iget-object p1, p1, Lk/a/b/a/b/n/g;->a:Lk/a/b/a/b/n/o;

    .line 16
    invoke-virtual {p1}, Lk/a/b/a/b/n/o;->getValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/c1/e$a;->x:Lk/a/b/a/b/n/g;

    .line 2
    iget-boolean v1, v0, Lk/a/b/a/b/n/g;->f:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lk/a/b/a/b/n/g;->e:Lk/a/b/a/b/n/e;

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, v0, Lk/a/b/a/b/n/g;->d:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, v0, Lk/a/b/a/b/n/g;->c:Lk/a/b/a/b/h;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :goto_0
    return v0
.end method
