.class public final Le/b/a/a/s/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:[C


# instance fields
.field public final a:Le/b/a/a/s/a;

.field public b:[C

.field public c:I

.field public d:I

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[C>;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:[C

.field public i:I

.field public j:Ljava/lang/String;

.field public k:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 1
    sput-object v0, Le/b/a/a/s/g;->l:[C

    return-void
.end method

.method public constructor <init>(Le/b/a/a/s/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/a/s/g;->a:Le/b/a/a/s/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Le/b/a/a/s/g;->f:Z

    .line 12
    iget-object v1, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iput v0, p0, Le/b/a/a/s/g;->g:I

    iput v0, p0, Le/b/a/a/s/g;->i:I

    return-void
.end method

.method public a([CII)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Le/b/a/a/s/g;->k:[C

    .line 3
    iput-object p1, p0, Le/b/a/a/s/g;->b:[C

    .line 4
    iput p2, p0, Le/b/a/a/s/g;->c:I

    .line 5
    iput p3, p0, Le/b/a/a/s/g;->d:I

    .line 6
    iget-boolean p1, p0, Le/b/a/a/s/g;->f:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Le/b/a/a/s/g;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)[C
    .locals 2

    .line 8
    iget-object v0, p0, Le/b/a/a/s/g;->a:Le/b/a/a/s/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1, p1}, Le/b/a/a/s/a;->a(II)[C

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x3e8

    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Le/b/a/a/s/g;->k:[C

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Le/b/a/a/s/g;->k:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    goto :goto_2

    .line 4
    :cond_0
    iget v0, p0, Le/b/a/a/s/g;->c:I

    const-string v1, ""

    if-ltz v0, :cond_2

    .line 5
    iget v0, p0, Le/b/a/a/s/g;->d:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 6
    iput-object v1, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    return-object v1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Le/b/a/a/s/g;->b:[C

    iget v2, p0, Le/b/a/a/s/g;->c:I

    iget v3, p0, Le/b/a/a/s/g;->d:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    goto :goto_2

    .line 8
    :cond_2
    iget v0, p0, Le/b/a/a/s/g;->g:I

    .line 9
    iget v2, p0, Le/b/a/a/s/g;->i:I

    const/4 v3, 0x0

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    iput-object v1, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    goto :goto_2

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    iget-object v0, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 14
    iget-object v4, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 15
    array-length v5, v4

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    iget v2, p0, Le/b/a/a/s/g;->i:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    .line 18
    :cond_6
    :goto_2
    iget-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 5

    .line 19
    iget v0, p0, Le/b/a/a/s/g;->d:I

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Le/b/a/a/s/g;->d:I

    .line 21
    iget-object v2, p0, Le/b/a/a/s/g;->b:[C

    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Le/b/a/a/s/g;->b:[C

    .line 23
    iget v3, p0, Le/b/a/a/s/g;->c:I

    const/4 v4, -0x1

    .line 24
    iput v4, p0, Le/b/a/a/s/g;->c:I

    add-int/2addr p1, v0

    .line 25
    iget-object v4, p0, Le/b/a/a/s/g;->h:[C

    if-eqz v4, :cond_0

    array-length v4, v4

    if-le p1, v4, :cond_1

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Le/b/a/a/s/g;->a(I)[C

    move-result-object p1

    iput-object p1, p0, Le/b/a/a/s/g;->h:[C

    :cond_1
    if-lez v0, :cond_2

    .line 27
    iget-object p1, p0, Le/b/a/a/s/g;->h:[C

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    :cond_2
    iput v1, p0, Le/b/a/a/s/g;->g:I

    .line 29
    iput v0, p0, Le/b/a/a/s/g;->i:I

    return-void
.end method

.method public c()[C
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Le/b/a/a/s/g;->c:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/b/a/a/s/g;->i:I

    .line 3
    iput v0, p0, Le/b/a/a/s/g;->d:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Le/b/a/a/s/g;->b:[C

    .line 5
    iput-object v1, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Le/b/a/a/s/g;->k:[C

    .line 7
    iget-boolean v1, p0, Le/b/a/a/s/g;->f:Z

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Le/b/a/a/s/g;->a()V

    .line 9
    :cond_0
    iget-object v1, p0, Le/b/a/a/s/g;->h:[C

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Le/b/a/a/s/g;->a(I)[C

    move-result-object v1

    iput-object v1, p0, Le/b/a/a/s/g;->h:[C

    :cond_1
    return-object v1
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Le/b/a/a/s/g;->f:Z

    .line 5
    iget-object v1, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v1, p0, Le/b/a/a/s/g;->g:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Le/b/a/a/s/g;->g:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Le/b/a/a/s/g;->i:I

    .line 8
    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/high16 v0, 0x40000

    .line 9
    :cond_2
    :goto_0
    new-array v0, v0, [C

    .line 10
    iput-object v0, p0, Le/b/a/a/s/g;->h:[C

    return-void
.end method

.method public e()[C
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    .line 2
    array-length v1, v0

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v1

    const/high16 v3, 0x40000

    if-le v2, v3, :cond_0

    shr-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    .line 3
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/s/g;->h:[C

    return-object v0
.end method

.method public f()[C
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/b/a/a/s/g;->f:Z

    .line 4
    iget-object v0, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Le/b/a/a/s/g;->h:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    array-length v0, v0

    .line 6
    iget v1, p0, Le/b/a/a/s/g;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Le/b/a/a/s/g;->g:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Le/b/a/a/s/g;->i:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/high16 v0, 0x40000

    .line 8
    :cond_2
    :goto_0
    new-array v0, v0, [C

    .line 9
    iput-object v0, p0, Le/b/a/a/s/g;->h:[C

    return-object v0
.end method

.method public g()[C
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/a/s/g;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Le/b/a/a/s/g;->b(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Le/b/a/a/s/g;->a(I)[C

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/s/g;->h:[C

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Le/b/a/a/s/g;->i:I

    array-length v0, v0

    if-lt v1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Le/b/a/a/s/g;->d()V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    return-object v0
.end method

.method public h()[C
    .locals 7

    .line 1
    iget v0, p0, Le/b/a/a/s/g;->c:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Le/b/a/a/s/g;->b:[C

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/b/a/a/s/g;->k:[C

    if-eqz v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v2, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Le/b/a/a/s/g;->k:[C

    return-object v0

    .line 5
    :cond_2
    iget-boolean v3, p0, Le/b/a/a/s/g;->f:Z

    if-nez v3, :cond_4

    .line 6
    iget-object v0, p0, Le/b/a/a/s/g;->h:[C

    if-nez v0, :cond_3

    sget-object v0, Le/b/a/a/s/g;->l:[C

    :cond_3
    return-object v0

    :cond_4
    if-nez v1, :cond_c

    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    if-ltz v0, :cond_8

    .line 8
    iget v2, p0, Le/b/a/a/s/g;->d:I

    if-ge v2, v1, :cond_6

    .line 9
    sget-object v0, Le/b/a/a/s/g;->l:[C

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    .line 10
    iget-object v0, p0, Le/b/a/a/s/g;->b:[C

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_7
    iget-object v1, p0, Le/b/a/a/s/g;->b:[C

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_8
    invoke-virtual {p0}, Le/b/a/a/s/g;->j()I

    move-result v0

    if-ge v0, v1, :cond_9

    .line 13
    sget-object v0, Le/b/a/a/s/g;->l:[C

    goto :goto_0

    .line 14
    :cond_9
    new-array v0, v0, [C

    .line 15
    iget-object v1, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_b

    .line 17
    iget-object v5, p0, Le/b/a/a/s/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 18
    array-length v6, v5

    .line 19
    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    const/4 v4, 0x0

    .line 20
    :cond_b
    iget-object v1, p0, Le/b/a/a/s/g;->h:[C

    iget v3, p0, Le/b/a/a/s/g;->i:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 21
    :goto_2
    iput-object v1, p0, Le/b/a/a/s/g;->k:[C

    :cond_c
    return-object v1
.end method

.method public i()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Le/b/a/a/s/g;->c:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/b/a/a/s/g;->i:I

    .line 3
    iput v0, p0, Le/b/a/a/s/g;->d:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/b/a/a/s/g;->b:[C

    .line 5
    iput-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Le/b/a/a/s/g;->k:[C

    .line 7
    iget-boolean v0, p0, Le/b/a/a/s/g;->f:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Le/b/a/a/s/g;->a()V

    :cond_0
    return-void
.end method

.method public j()I
    .locals 2

    .line 1
    iget v0, p0, Le/b/a/a/s/g;->c:I

    if-ltz v0, :cond_0

    .line 2
    iget v0, p0, Le/b/a/a/s/g;->d:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/a/s/g;->k:[C

    if-eqz v0, :cond_1

    .line 4
    array-length v0, v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/b/a/a/s/g;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 7
    :cond_2
    iget v0, p0, Le/b/a/a/s/g;->g:I

    iget v1, p0, Le/b/a/a/s/g;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/b/a/a/s/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
