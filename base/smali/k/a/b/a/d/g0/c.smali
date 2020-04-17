.class public Lk/a/b/a/d/g0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/b;


# instance fields
.field public a:Lk/a/b/a/d/g0/g;

.field public b:Lk/a/b/a/d/g0/g;

.field public c:Lk/a/b/a/d/g0/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/d/i;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/i;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lk/a/b/a/d/g0/c;->b:Lk/a/b/a/d/g0/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    if-ne v2, p1, :cond_0

    .line 4
    iget-object v0, v0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/c;->c:Lk/a/b/a/d/g0/g;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lk/a/b/a/d/g0/g;

    invoke-direct {v0}, Lk/a/b/a/d/g0/g;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v0, Lk/a/b/a/d/g0/g;->z:Lk/a/b/a/d/g0/g;

    iput-object v2, p0, Lk/a/b/a/d/g0/c;->c:Lk/a/b/a/d/g0/g;

    .line 8
    iput-object v1, v0, Lk/a/b/a/d/g0/g;->z:Lk/a/b/a/d/g0/g;

    .line 9
    :goto_0
    iput-object p1, v0, Lk/a/b/a/d/g0/g;->x:Lk/a/b/a/d/i;

    .line 10
    iput-object p2, v0, Lk/a/b/a/d/g0/g;->y:Ljava/lang/Object;

    .line 11
    iget-object p1, v0, Lk/a/b/a/d/g0/g;->A:Lk/a/b/a/d/g0/r;

    .line 12
    iget-object p1, p1, Lk/a/b/a/d/g0/r;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 13
    iget-object p1, p0, Lk/a/b/a/d/g0/c;->a:Lk/a/b/a/d/g0/g;

    if-nez p1, :cond_2

    .line 14
    iput-object v0, p0, Lk/a/b/a/d/g0/c;->a:Lk/a/b/a/d/g0/g;

    .line 15
    iput-object v0, p0, Lk/a/b/a/d/g0/c;->b:Lk/a/b/a/d/g0/g;

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lk/a/b/a/d/g0/c;->b:Lk/a/b/a/d/g0/g;

    iput-object v0, p1, Lk/a/b/a/d/g0/g;->z:Lk/a/b/a/d/g0/g;

    .line 17
    iput-object v0, p0, Lk/a/b/a/d/g0/c;->b:Lk/a/b/a/d/g0/g;

    :goto_1
    return-object v0

    .line 18
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot put events of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
