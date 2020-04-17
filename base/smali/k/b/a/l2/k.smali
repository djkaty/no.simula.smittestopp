.class public Lk/b/a/l2/k;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Ljava/util/Hashtable;

.field public y:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lk/b/a/l2/k;->x:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lk/b/a/l2/k;->y:Ljava/util/Vector;

    invoke-virtual {p1}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/j;->a(Ljava/lang/Object;)Lk/b/a/l2/j;

    move-result-object v0

    iget-object v1, p0, Lk/b/a/l2/k;->x:Ljava/util/Hashtable;

    .line 1
    iget-object v2, v0, Lk/b/a/l2/j;->x:Lk/b/a/o;

    .line 2
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lk/b/a/l2/k;->x:Ljava/util/Hashtable;

    .line 3
    iget-object v2, v0, Lk/b/a/l2/j;->x:Lk/b/a/o;

    .line 4
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lk/b/a/l2/k;->y:Ljava/util/Vector;

    .line 5
    iget-object v0, v0, Lk/b/a/l2/j;->x:Lk/b/a/o;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "repeated extension found: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget-object v0, v0, Lk/b/a/l2/j;->x:Lk/b/a/o;

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/l2/k;
    .locals 1

    instance-of v0, p0, Lk/b/a/l2/k;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/l2/k;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/l2/k;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/l2/k;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/f;

    iget-object v1, p0, Lk/b/a/l2/k;->y:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/k;->y:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/o;

    iget-object v3, p0, Lk/b/a/l2/k;->x:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/l2/j;

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
