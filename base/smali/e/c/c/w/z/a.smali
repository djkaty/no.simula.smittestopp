.class public final Le/c/c/w/z/a;
.super Le/c/c/y/a;
.source "SourceFile"


# static fields
.field public static final R:Ljava/io/Reader;

.field public static final S:Ljava/lang/Object;


# instance fields
.field public N:[Ljava/lang/Object;

.field public O:I

.field public P:[Ljava/lang/String;

.field public Q:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/c/c/w/z/a$a;

    invoke-direct {v0}, Le/c/c/w/z/a$a;-><init>()V

    sput-object v0, Le/c/c/w/z/a;->R:Ljava/io/Reader;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/c/c/w/z/a;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le/c/c/j;)V
    .locals 2

    .line 1
    sget-object v0, Le/c/c/w/z/a;->R:Ljava/io/Reader;

    invoke-direct {p0, v0}, Le/c/c/y/a;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iput-object v1, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Le/c/c/w/z/a;->O:I

    new-array v1, v0, [Ljava/lang/String;

    .line 4
    iput-object v1, p0, Le/c/c/w/z/a;->P:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Le/c/c/w/z/a;->Q:[I

    .line 6
    invoke-virtual {p0, p1}, Le/c/c/w/z/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 2

    const-string v0, " at path "

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/c/c/w/z/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, Le/c/c/y/b;->BEGIN_ARRAY:Le/c/c/y/b;

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Le/c/c/y/b;)V

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/g;

    .line 3
    invoke-virtual {v0}, Le/c/c/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Le/c/c/w/z/a;->Q:[I

    iget v1, p0, Le/c/c/w/z/a;->O:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public final a(Le/c/c/y/b;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Le/c/c/w/z/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 8
    iget v0, p0, Le/c/c/w/z/a;->O:I

    iget-object v1, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    .line 10
    new-array v3, v3, [I

    mul-int/lit8 v4, v0, 0x2

    .line 11
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 12
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v0, p0, Le/c/c/w/z/a;->Q:[I

    iget v1, p0, Le/c/c/w/z/a;->O:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, Le/c/c/w/z/a;->P:[Ljava/lang/String;

    iget v1, p0, Le/c/c/w/z/a;->O:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v2, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    .line 16
    iput-object v3, p0, Le/c/c/w/z/a;->Q:[I

    .line 17
    iput-object v4, p0, Le/c/c/w/z/a;->P:[Ljava/lang/String;

    .line 18
    :cond_0
    iget-object v0, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    iget v1, p0, Le/c/c/w/z/a;->O:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/c/c/w/z/a;->O:I

    aput-object p1, v0, v1

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    sget-object v0, Le/c/c/y/b;->BEGIN_OBJECT:Le/c/c/y/b;

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Le/c/c/y/b;)V

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/m;

    .line 3
    invoke-virtual {v0}, Le/c/c/m;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Le/c/c/w/z/a;->S:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    .line 2
    iput v0, p0, Le/c/c/w/z/a;->O:I

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget-object v0, Le/c/c/y/b;->END_ARRAY:Le/c/c/y/b;

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Le/c/c/y/b;)V

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 4
    iget v0, p0, Le/c/c/w/z/a;->O:I

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    sget-object v0, Le/c/c/y/b;->END_OBJECT:Le/c/c/y/b;

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Le/c/c/y/b;)V

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 4
    iget v0, p0, Le/c/c/w/z/a;->O:I

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Le/c/c/w/z/a;->O:I

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Le/c/c/g;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 4
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/c/c/w/z/a;->Q:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_0
    aget-object v3, v2, v1

    instance-of v3, v3, Le/c/c/m;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 7
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object v2, p0, Le/c/c/w/z/a;->P:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 10
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/c/c/y/b;->END_OBJECT:Le/c/c/y/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Le/c/c/y/b;->END_ARRAY:Le/c/c/y/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 4

    .line 1
    sget-object v0, Le/c/c/y/b;->BOOLEAN:Le/c/c/y/b;

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Le/c/c/y/b;)V

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/p;

    invoke-virtual {v0}, Le/c/c/p;->g()Z

    move-result v0

    .line 3
    iget v1, p0, Le/c/c/w/z/a;->O:I

    if-lez v1, :cond_0

    .line 4
    iget-object v2, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public k()D
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/c/c/y/b;->STRING:Le/c/c/y/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Le/c/c/w/z/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/c/c/w/z/a;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/p;

    .line 6
    iget-object v1, v0, Le/c/c/p;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Le/c/c/p;->h()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Le/c/c/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 8
    :goto_1
    iget-boolean v2, p0, Le/c/c/y/a;->y:Z

    if-nez v2, :cond_4

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 12
    iget v2, p0, Le/c/c/w/z/a;->O:I

    if-lez v2, :cond_5

    .line 13
    iget-object v3, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_5
    return-wide v0
.end method

.method public l()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/c/c/y/b;->STRING:Le/c/c/y/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Le/c/c/w/z/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/c/c/w/z/a;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/p;

    invoke-virtual {v0}, Le/c/c/p;->a()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 7
    iget v1, p0, Le/c/c/w/z/a;->O:I

    if-lez v1, :cond_2

    .line 8
    iget-object v2, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method public m()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/c/c/y/b;->STRING:Le/c/c/y/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Le/c/c/w/z/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/c/c/w/z/a;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/p;

    invoke-virtual {v0}, Le/c/c/p;->e()J

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 7
    iget v2, p0, Le/c/c/w/z/a;->O:I

    if-lez v2, :cond_2

    .line 8
    iget-object v3, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Le/c/c/y/b;->NAME:Le/c/c/y/b;

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Le/c/c/y/b;)V

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Le/c/c/w/z/a;->P:[Ljava/lang/String;

    iget v3, p0, Le/c/c/w/z/a;->O:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Ljava/lang/Object;)V

    return-object v1
.end method

.method public o()V
    .locals 3

    .line 1
    sget-object v0, Le/c/c/y/b;->NULL:Le/c/c/y/b;

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Le/c/c/y/b;)V

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 3
    iget v0, p0, Le/c/c/w/z/a;->O:I

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/c/c/y/b;->STRING:Le/c/c/y/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Le/c/c/y/b;->STRING:Le/c/c/y/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Le/c/c/w/z/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/c/p;

    invoke-virtual {v0}, Le/c/c/p;->f()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget v1, p0, Le/c/c/w/z/a;->O:I

    if-lez v1, :cond_2

    .line 7
    iget-object v2, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public r()Le/c/c/y/b;
    .locals 3

    .line 1
    iget v0, p0, Le/c/c/w/z/a;->O:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/c/c/y/b;->END_DOCUMENT:Le/c/c/y/b;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/c/c/w/z/a;->v()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    iget v2, p0, Le/c/c/w/z/a;->O:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Le/c/c/m;

    .line 6
    check-cast v0, Ljava/util/Iterator;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 8
    sget-object v0, Le/c/c/y/b;->NAME:Le/c/c/y/b;

    return-object v0

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/c/c/w/z/a;->a(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    sget-object v0, Le/c/c/y/b;->END_OBJECT:Le/c/c/y/b;

    goto :goto_0

    :cond_3
    sget-object v0, Le/c/c/y/b;->END_ARRAY:Le/c/c/y/b;

    :goto_0
    return-object v0

    .line 12
    :cond_4
    instance-of v1, v0, Le/c/c/m;

    if-eqz v1, :cond_5

    .line 13
    sget-object v0, Le/c/c/y/b;->BEGIN_OBJECT:Le/c/c/y/b;

    return-object v0

    .line 14
    :cond_5
    instance-of v1, v0, Le/c/c/g;

    if-eqz v1, :cond_6

    .line 15
    sget-object v0, Le/c/c/y/b;->BEGIN_ARRAY:Le/c/c/y/b;

    return-object v0

    .line 16
    :cond_6
    instance-of v1, v0, Le/c/c/p;

    if-eqz v1, :cond_a

    .line 17
    check-cast v0, Le/c/c/p;

    .line 18
    iget-object v0, v0, Le/c/c/p;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 19
    sget-object v0, Le/c/c/y/b;->STRING:Le/c/c/y/b;

    return-object v0

    .line 20
    :cond_7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 21
    sget-object v0, Le/c/c/y/b;->BOOLEAN:Le/c/c/y/b;

    return-object v0

    .line 22
    :cond_8
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Le/c/c/y/b;->NUMBER:Le/c/c/y/b;

    return-object v0

    .line 24
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_a
    instance-of v1, v0, Le/c/c/l;

    if-eqz v1, :cond_b

    .line 26
    sget-object v0, Le/c/c/y/b;->NULL:Le/c/c/y/b;

    return-object v0

    .line 27
    :cond_b
    sget-object v1, Le/c/c/w/z/a;->S:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Le/c/c/w/z/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/c/c/w/z/a;->r()Le/c/c/y/b;

    move-result-object v0

    sget-object v1, Le/c/c/y/b;->NAME:Le/c/c/y/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/c/c/w/z/a;->n()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Le/c/c/w/z/a;->P:[Ljava/lang/String;

    iget v1, p0, Le/c/c/w/z/a;->O:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/c/c/w/z/a;->w()Ljava/lang/Object;

    .line 5
    iget v0, p0, Le/c/c/w/z/a;->O:I

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Le/c/c/w/z/a;->P:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Le/c/c/w/z/a;->O:I

    if-lez v0, :cond_2

    .line 8
    iget-object v1, p0, Le/c/c/w/z/a;->Q:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_2
    return-void
.end method

.method public final v()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    iget v1, p0, Le/c/c/w/z/a;->O:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final w()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/c/w/z/a;->N:[Ljava/lang/Object;

    iget v1, p0, Le/c/c/w/z/a;->O:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Le/c/c/w/z/a;->O:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 2
    aput-object v3, v0, v1

    return-object v2
.end method
