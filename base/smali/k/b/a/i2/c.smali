.class public Lk/b/a/i2/c;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Lk/b/a/x;

.field public x:Lk/b/a/l;

.field public y:Lk/b/a/k2/c;

.field public z:Lk/b/a/l2/s;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 5

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lk/b/a/l;-><init>(J)V

    iput-object v0, p0, Lk/b/a/i2/c;->x:Lk/b/a/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/a/i2/c;->A:Lk/b/a/x;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    check-cast v1, Lk/b/a/l;

    iput-object v1, p0, Lk/b/a/i2/c;->x:Lk/b/a/l;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/k2/c;->a(Ljava/lang/Object;)Lk/b/a/k2/c;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/i2/c;->y:Lk/b/a/k2/c;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/l2/s;->a(Ljava/lang/Object;)Lk/b/a/l2/s;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/i2/c;->z:Lk/b/a/l2/s;

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p1, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    check-cast p1, Lk/b/a/b0;

    invoke-static {p1, v0}, Lk/b/a/x;->a(Lk/b/a/b0;Z)Lk/b/a/x;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/i2/c;->A:Lk/b/a/x;

    :cond_0
    iget-object p1, p0, Lk/b/a/i2/c;->A:Lk/b/a/x;

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v2, p1, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_9

    .line 2
    iget-object v2, p1, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    add-int/lit8 v3, v0, 0x1

    aget-object v0, v2, v0

    if-eqz v0, :cond_5

    .line 3
    instance-of v2, v0, Lk/b/a/i2/a;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    instance-of v2, v0, Lk/b/a/u;

    if-eqz v2, :cond_4

    new-instance v2, Lk/b/a/i2/a;

    check-cast v0, Lk/b/a/u;

    invoke-direct {v2, v0}, Lk/b/a/i2/a;-><init>(Lk/b/a/u;)V

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    move-object v2, v0

    check-cast v2, Lk/b/a/i2/a;

    .line 4
    :goto_3
    iget-object v0, v2, Lk/b/a/i2/a;->x:Lk/b/a/o;

    .line 5
    sget-object v4, Lk/b/a/i2/e;->j:Lk/b/a/o;

    invoke-virtual {v0, v4}, Lk/b/a/t;->b(Lk/b/a/t;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6
    iget-object v0, v2, Lk/b/a/i2/a;->y:Lk/b/a/x;

    .line 7
    iget-object v0, v0, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v0, v0

    if-ne v0, v1, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "challengePassword attribute must have one value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    move v0, v3

    goto :goto_0

    .line 9
    :cond_8
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "ASN1Set Enumeration"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_9
    :goto_5
    iget-object p1, p0, Lk/b/a/i2/c;->y:Lk/b/a/k2/c;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lk/b/a/i2/c;->x:Lk/b/a/l;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lk/b/a/i2/c;->z:Lk/b/a/l2/s;

    if-eqz p1, :cond_a

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not all mandatory fields set in CertificationRequestInfo generator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/i2/c;->x:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/c;->y:Lk/b/a/k2/c;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/c;->z:Lk/b/a/l2/s;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/i2/c;->A:Lk/b/a/x;

    if-eqz v1, :cond_0

    new-instance v2, Lk/b/a/h1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    invoke-virtual {v0, v2}, Lk/b/a/f;->a(Lk/b/a/e;)V

    :cond_0
    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
