.class public final Le/b/a/a/q/d;
.super Le/b/a/a/k;
.source "SourceFile"


# instance fields
.field public final c:Le/b/a/a/q/d;

.field public d:Le/b/a/a/q/b;

.field public e:Le/b/a/a/q/d;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Le/b/a/a/q/d;Le/b/a/a/q/b;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/b/a/a/k;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/a/a/q/d;->c:Le/b/a/a/q/d;

    .line 3
    iput-object p2, p0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    .line 4
    iput p3, p0, Le/b/a/a/k;->a:I

    .line 5
    iput p4, p0, Le/b/a/a/q/d;->g:I

    .line 6
    iput p5, p0, Le/b/a/a/q/d;->h:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Le/b/a/a/k;->b:I

    return-void
.end method


# virtual methods
.method public a(II)Le/b/a/a/q/d;
    .locals 7

    .line 10
    iget-object v0, p0, Le/b/a/a/q/d;->e:Le/b/a/a/q/d;

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Le/b/a/a/q/d;

    iget-object v1, p0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Le/b/a/a/q/b;->a()Le/b/a/a/q/b;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Le/b/a/a/q/d;-><init>(Le/b/a/a/q/d;Le/b/a/a/q/b;III)V

    iput-object v0, p0, Le/b/a/a/q/d;->e:Le/b/a/a/q/d;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1, p1, p2}, Le/b/a/a/q/d;->a(III)V

    :goto_1
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Le/b/a/a/q/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(III)V
    .locals 0

    .line 1
    iput p1, p0, Le/b/a/a/k;->a:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/b/a/a/k;->b:I

    .line 3
    iput p2, p0, Le/b/a/a/q/d;->g:I

    .line 4
    iput p3, p0, Le/b/a/a/q/d;->h:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/b/a/a/q/d;->f:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    if-eqz p2, :cond_0

    .line 7
    iput-object p1, p2, Le/b/a/a/q/b;->b:Ljava/lang/String;

    .line 8
    iput-object p1, p2, Le/b/a/a/q/b;->c:Ljava/lang/String;

    .line 9
    iput-object p1, p2, Le/b/a/a/q/b;->d:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 14
    iput-object p1, p0, Le/b/a/a/q/d;->f:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0, p1}, Le/b/a/a/q/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v0, v0, Le/b/a/a/q/b;->a:Ljava/lang/Object;

    .line 18
    new-instance v1, Le/b/a/a/h;

    instance-of v2, v0, Le/b/a/a/i;

    if-eqz v2, :cond_0

    check-cast v0, Le/b/a/a/i;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Duplicate field \'"

    const-string v3, "\'"

    invoke-static {v2, p1, v3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Le/b/a/a/h;-><init>(Le/b/a/a/i;Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method public b(II)Le/b/a/a/q/d;
    .locals 7

    .line 1
    iget-object v0, p0, Le/b/a/a/q/d;->e:Le/b/a/a/q/d;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/b/a/a/q/d;

    iget-object v1, p0, Le/b/a/a/q/d;->d:Le/b/a/a/q/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Le/b/a/a/q/b;->a()Le/b/a/a/q/b;

    move-result-object v1

    :goto_0
    move-object v3, v1

    const/4 v4, 0x2

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Le/b/a/a/q/d;-><init>(Le/b/a/a/q/d;Le/b/a/a/q/b;III)V

    iput-object v0, p0, Le/b/a/a/q/d;->e:Le/b/a/a/q/d;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Le/b/a/a/q/d;->a(III)V

    return-object v0
.end method
