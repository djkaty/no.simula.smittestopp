.class public Lk/b/a/l2/p;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public A:Lk/b/a/l2/r;

.field public B:Z

.field public C:Z

.field public D:Lk/b/a/u;

.field public x:Lk/b/a/l2/i;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 5

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/l2/p;->D:Lk/b/a/u;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object v2

    .line 1
    iget v3, v2, Lk/b/a/b0;->x:I

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 2
    invoke-static {v2, v0}, Lk/b/a/c;->a(Lk/b/a/b0;Z)Lk/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/c;->j()Z

    move-result v2

    iput-boolean v2, p0, Lk/b/a/l2/p;->C:Z

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v0}, Lk/b/a/c;->a(Lk/b/a/b0;Z)Lk/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/c;->j()Z

    move-result v2

    iput-boolean v2, p0, Lk/b/a/l2/p;->B:Z

    goto :goto_3

    :cond_2
    new-instance v3, Lk/b/a/l2/r;

    invoke-static {v2, v0}, Lk/b/a/r0;->a(Lk/b/a/b0;Z)Lk/b/a/r0;

    move-result-object v2

    invoke-direct {v3, v2}, Lk/b/a/l2/r;-><init>(Lk/b/a/r0;)V

    iput-object v3, p0, Lk/b/a/l2/p;->A:Lk/b/a/l2/r;

    goto :goto_3

    :cond_3
    invoke-static {v2, v0}, Lk/b/a/c;->a(Lk/b/a/b0;Z)Lk/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/c;->j()Z

    move-result v2

    iput-boolean v2, p0, Lk/b/a/l2/p;->z:Z

    goto :goto_3

    :cond_4
    invoke-static {v2, v0}, Lk/b/a/c;->a(Lk/b/a/b0;Z)Lk/b/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/c;->j()Z

    move-result v2

    iput-boolean v2, p0, Lk/b/a/l2/p;->y:Z

    goto :goto_3

    .line 3
    :cond_5
    invoke-virtual {v2}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/b0;->a(Ljava/lang/Object;)Lk/b/a/b0;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 4
    instance-of v3, v2, Lk/b/a/l2/i;

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance v3, Lk/b/a/l2/i;

    invoke-direct {v3, v2}, Lk/b/a/l2/i;-><init>(Lk/b/a/b0;)V

    goto :goto_2

    :cond_7
    :goto_1
    move-object v3, v2

    check-cast v3, Lk/b/a/l2/i;

    .line 5
    :goto_2
    iput-object v3, p0, Lk/b/a/l2/p;->x:Lk/b/a/l2/i;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/l2/p;->D:Lk/b/a/u;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lk/b/j/f;->a:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lk/b/a/l2/p;->x:Lk/b/a/l2/i;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lk/b/a/l2/i;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-virtual {p0, v1, v0, v3, v2}, Lk/b/a/l2/p;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lk/b/a/l2/p;->y:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lk/b/a/l2/p;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsUserCerts"

    invoke-virtual {p0, v1, v0, v3, v2}, Lk/b/a/l2/p;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lk/b/a/l2/p;->z:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lk/b/a/l2/p;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsCACerts"

    invoke-virtual {p0, v1, v0, v3, v2}, Lk/b/a/l2/p;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lk/b/a/l2/p;->A:Lk/b/a/l2/r;

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v2}, Lk/b/a/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlySomeReasons"

    .line 4
    invoke-virtual {p0, v1, v0, v3, v2}, Lk/b/a/l2/p;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lk/b/a/l2/p;->C:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lk/b/a/l2/p;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsAttributeCerts"

    invoke-virtual {p0, v1, v0, v3, v2}, Lk/b/a/l2/p;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Lk/b/a/l2/p;->B:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lk/b/a/l2/p;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indirectCRL"

    invoke-virtual {p0, v1, v0, v3, v2}, Lk/b/a/l2/p;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
