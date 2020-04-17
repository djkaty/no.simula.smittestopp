.class public Le/b/a/a/q/e;
.super Le/b/a/a/k;
.source "SourceFile"


# instance fields
.field public final c:Le/b/a/a/q/e;

.field public d:Le/b/a/a/q/b;

.field public e:Le/b/a/a/q/e;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(ILe/b/a/a/q/e;Le/b/a/a/q/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/b/a/a/k;-><init>()V

    .line 2
    iput p1, p0, Le/b/a/a/k;->a:I

    .line 3
    iput-object p2, p0, Le/b/a/a/q/e;->c:Le/b/a/a/q/e;

    .line 4
    iput-object p3, p0, Le/b/a/a/q/e;->d:Le/b/a/a/q/b;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Le/b/a/a/k;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    .line 2
    iget v0, p0, Le/b/a/a/k;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Le/b/a/a/q/e;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/b/a/a/q/e;->g:Z

    .line 4
    iput-object p1, p0, Le/b/a/a/q/e;->f:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Le/b/a/a/q/e;->d:Le/b/a/a/q/b;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, p1}, Le/b/a/a/q/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, v1, Le/b/a/a/q/b;->a:Ljava/lang/Object;

    .line 8
    new-instance v1, Le/b/a/a/e;

    const-string v2, "Duplicate field \'"

    const-string v3, "\'"

    invoke-static {v2, p1, v3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    instance-of v2, v0, Le/b/a/a/f;

    if-eqz v2, :cond_1

    check-cast v0, Le/b/a/a/f;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, v0}, Le/b/a/a/e;-><init>(Ljava/lang/String;Le/b/a/a/f;)V

    throw v1

    .line 9
    :cond_2
    iget p1, p0, Le/b/a/a/k;->b:I

    if-gez p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p1, 0x4

    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/q/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Le/b/a/a/q/e;
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/a/a/q/e;->e:Le/b/a/a/q/e;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/b/a/a/q/e;

    iget-object v3, p0, Le/b/a/a/q/e;->d:Le/b/a/a/q/b;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Le/b/a/a/q/b;->a()Le/b/a/a/q/b;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v2, p0, v1}, Le/b/a/a/q/e;-><init>(ILe/b/a/a/q/e;Le/b/a/a/q/b;)V

    iput-object v0, p0, Le/b/a/a/q/e;->e:Le/b/a/a/q/e;

    return-object v0

    .line 3
    :cond_1
    iput v2, v0, Le/b/a/a/k;->a:I

    const/4 v2, -0x1

    .line 4
    iput v2, v0, Le/b/a/a/k;->b:I

    .line 5
    iput-object v1, v0, Le/b/a/a/q/e;->f:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Le/b/a/a/q/e;->g:Z

    .line 7
    iget-object v2, v0, Le/b/a/a/q/e;->d:Le/b/a/a/q/b;

    if-eqz v2, :cond_2

    .line 8
    iput-object v1, v2, Le/b/a/a/q/b;->b:Ljava/lang/String;

    .line 9
    iput-object v1, v2, Le/b/a/a/q/b;->c:Ljava/lang/String;

    .line 10
    iput-object v1, v2, Le/b/a/a/q/b;->d:Ljava/util/HashSet;

    :cond_2
    return-object v0
.end method

.method public g()I
    .locals 4

    .line 1
    iget v0, p0, Le/b/a/a/k;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Le/b/a/a/q/e;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 3
    :cond_0
    iput-boolean v2, p0, Le/b/a/a/q/e;->g:Z

    .line 4
    iget v0, p0, Le/b/a/a/k;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Le/b/a/a/k;->b:I

    return v1

    :cond_1
    if-ne v0, v3, :cond_3

    .line 5
    iget v0, p0, Le/b/a/a/k;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 6
    iput v1, p0, Le/b/a/a/k;->b:I

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 7
    :cond_3
    iget v0, p0, Le/b/a/a/k;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Le/b/a/a/k;->b:I

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    :goto_1
    return v2
.end method
