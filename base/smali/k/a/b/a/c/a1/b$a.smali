.class public Lk/a/b/a/c/a1/b$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/a1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public x:Lk/a/b/a/b/l/d;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/l/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/a1/b$a;->x:Lk/a/b/a/b/l/d;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lk/a/b/a/c/a1/b$a;->x:Lk/a/b/a/b/l/d;

    .line 2
    iget-object p1, p1, Lk/a/b/a/b/l/d;->c:Ljava/lang/String;

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
    iget-object p1, p0, Lk/a/b/a/c/a1/b$a;->x:Lk/a/b/a/b/l/d;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/l/d;->b:Lk/a/b/a/b/a;

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/a1/b$a;->x:Lk/a/b/a/b/l/d;

    .line 7
    iget-object p1, p1, Lk/a/b/a/b/l/d;->a:Lk/a/b/a/b/f;

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/a1/b$a;->x:Lk/a/b/a/b/l/d;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/l/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/l/d;->b:Lk/a/b/a/b/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
