.class public Lk/b/i/c/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public A:I

.field public x:[[S

.field public y:[[S

.field public z:[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk/b/i/c/b/d/b;->A:I

    iput-object p2, p0, Lk/b/i/c/b/d/b;->x:[[S

    iput-object p3, p0, Lk/b/i/c/b/d/b;->y:[[S

    iput-object p4, p0, Lk/b/i/c/b/d/b;->z:[S

    return-void
.end method

.method public constructor <init>(Lk/b/i/c/c/b;)V
    .locals 3

    .line 1
    iget v0, p1, Lk/b/i/c/c/b;->A:I

    .line 2
    iget-object v1, p1, Lk/b/i/c/c/b;->x:[[S

    .line 3
    iget-object v2, p1, Lk/b/i/c/c/b;->y:[[S

    .line 4
    iget-object p1, p1, Lk/b/i/c/c/b;->z:[S

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lk/b/i/c/b/d/b;->A:I

    iput-object v1, p0, Lk/b/i/c/b/d/b;->x:[[S

    iput-object v2, p0, Lk/b/i/c/b/d/b;->y:[[S

    iput-object p1, p0, Lk/b/i/c/b/d/b;->z:[S

    return-void
.end method


# virtual methods
.method public a()[[S
    .locals 4

    iget-object v0, p0, Lk/b/i/c/b/d/b;->y:[[S

    array-length v0, v0

    new-array v0, v0, [[S

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lk/b/i/c/b/d/b;->y:[[S

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Lk/b/c/e/a;->a([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lk/b/i/c/b/d/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lk/b/i/c/b/d/b;

    iget v0, p0, Lk/b/i/c/b/d/b;->A:I

    .line 1
    iget v1, p1, Lk/b/i/c/b/d/b;->A:I

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lk/b/i/c/b/d/b;->x:[[S

    .line 3
    iget-object v1, p1, Lk/b/i/c/b/d/b;->x:[[S

    .line 4
    invoke-static {v0, v1}, Lk/b/c/e/a;->a([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/b/i/c/b/d/b;->y:[[S

    invoke-virtual {p1}, Lk/b/i/c/b/d/b;->a()[[S

    move-result-object v1

    invoke-static {v0, v1}, Lk/b/c/e/a;->a([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/b/i/c/b/d/b;->z:[S

    .line 5
    iget-object p1, p1, Lk/b/i/c/b/d/b;->z:[S

    invoke-static {p1}, Lk/b/c/e/a;->a([S)[S

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lk/b/c/e/a;->a([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, Lk/b/i/a/g;

    iget v1, p0, Lk/b/i/c/b/d/b;->A:I

    iget-object v2, p0, Lk/b/i/c/b/d/b;->x:[[S

    iget-object v3, p0, Lk/b/i/c/b/d/b;->y:[[S

    iget-object v4, p0, Lk/b/i/c/b/d/b;->z:[S

    invoke-direct {v0, v1, v2, v3, v4}, Lk/b/i/a/g;-><init>(I[[S[[S[S)V

    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/i/a/e;->a:Lk/b/a/o;

    sget-object v3, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {v1, v2, v3}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Lk/b/a/l2/s;

    invoke-direct {v3, v1, v0}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;Lk/b/a/e;)V

    const-string v0, "DER"

    .line 2
    invoke-virtual {v3, v0}, Lk/b/a/n;->a(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lk/b/i/c/b/d/b;->A:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/c/b/d/b;->x:[[S

    invoke-static {v1}, Lk/b/c/e/a;->b([[S)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lk/b/i/c/b/d/b;->y:[[S

    invoke-static {v0}, Lk/b/c/e/a;->b([[S)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lk/b/i/c/b/d/b;->z:[S

    invoke-static {v1}, Lk/b/c/e/a;->c([S)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
