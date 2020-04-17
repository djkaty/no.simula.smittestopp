.class public Ld/x/n;
.super Ld/x/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/x/n$b;
    }
.end annotation


# instance fields
.field public f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/x/h;",
            ">;"
        }
    .end annotation
.end field

.field public g0:Z

.field public h0:I

.field public i0:Z

.field public j0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/x/h;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ld/x/n;->g0:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ld/x/n;->i0:Z

    .line 5
    iput v0, p0, Ld/x/n;->j0:I

    return-void
.end method


# virtual methods
.method public a(I)Ld/x/h;
    .locals 1

    if-ltz p1, :cond_1

    .line 18
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/x/h;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(J)Ld/x/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ld/x/n;->a(J)Ld/x/n;

    return-object p0
.end method

.method public bridge synthetic a(Landroid/animation/TimeInterpolator;)Ld/x/h;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ld/x/n;->a(Landroid/animation/TimeInterpolator;)Ld/x/n;

    return-object p0
.end method

.method public a(Landroid/view/View;)Ld/x/h;
    .locals 2

    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    invoke-virtual {v1, p1}, Ld/x/h;->a(Landroid/view/View;)Ld/x/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ld/x/h$d;)Ld/x/h;
    .locals 0

    .line 28
    invoke-super {p0, p1}, Ld/x/h;->a(Ld/x/h$d;)Ld/x/h;

    return-object p0
.end method

.method public a(J)Ld/x/n;
    .locals 3

    .line 29
    iput-wide p1, p0, Ld/x/h;->z:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 30
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    invoke-virtual {v2, p1, p2}, Ld/x/h;->a(J)Ld/x/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Ld/x/n;
    .locals 3

    .line 20
    iget v0, p0, Ld/x/n;->j0:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/x/n;->j0:I

    .line 21
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    invoke-virtual {v2, p1}, Ld/x/h;->a(Landroid/animation/TimeInterpolator;)Ld/x/h;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Ld/x/h;->A:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Ld/x/h;)Ld/x/n;
    .locals 5

    .line 3
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iput-object p0, p1, Ld/x/h;->O:Ld/x/n;

    .line 5
    iget-wide v0, p0, Ld/x/h;->z:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 6
    invoke-virtual {p1, v0, v1}, Ld/x/h;->a(J)Ld/x/h;

    .line 7
    :cond_0
    iget v0, p0, Ld/x/n;->j0:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Ld/x/h;->A:Landroid/animation/TimeInterpolator;

    .line 9
    invoke-virtual {p1, v0}, Ld/x/h;->a(Landroid/animation/TimeInterpolator;)Ld/x/h;

    .line 10
    :cond_1
    iget v0, p0, Ld/x/n;->j0:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ld/x/h;->a(Ld/x/m;)V

    .line 12
    :cond_2
    iget v0, p0, Ld/x/n;->j0:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Ld/x/h;->b0:Ld/x/e;

    .line 14
    invoke-virtual {p1, v0}, Ld/x/h;->a(Ld/x/e;)V

    .line 15
    :cond_3
    iget v0, p0, Ld/x/n;->j0:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Ld/x/h;->a0:Ld/x/h$c;

    .line 17
    invoke-virtual {p1, v0}, Ld/x/h;->a(Ld/x/h$c;)V

    :cond_4
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 45
    invoke-super {p0, p1}, Ld/x/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    :goto_0
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    .line 47
    invoke-static {v0, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ld/x/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Ld/x/q;Ld/x/q;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ld/x/q;",
            "Ld/x/q;",
            "Ljava/util/ArrayList<",
            "Ld/x/p;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ld/x/p;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 32
    iget-wide v1, v0, Ld/x/h;->y:J

    .line 33
    iget-object v3, v0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 34
    iget-object v5, v0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ld/x/h;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 35
    iget-boolean v5, v0, Ld/x/n;->g0:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 36
    :cond_0
    iget-wide v9, v6, Ld/x/h;->y:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 37
    invoke-virtual {v6, v9, v10}, Ld/x/h;->b(J)Ld/x/h;

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v6, v1, v2}, Ld/x/h;->b(J)Ld/x/h;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 39
    invoke-virtual/range {v6 .. v11}, Ld/x/h;->a(Landroid/view/ViewGroup;Ld/x/q;Ld/x/q;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Ld/x/e;)V
    .locals 2

    if-nez p1, :cond_0

    .line 48
    sget-object v0, Ld/x/h;->d0:Ld/x/e;

    iput-object v0, p0, Ld/x/h;->b0:Ld/x/e;

    goto :goto_0

    .line 49
    :cond_0
    iput-object p1, p0, Ld/x/h;->b0:Ld/x/e;

    .line 50
    :goto_0
    iget v0, p0, Ld/x/n;->j0:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ld/x/n;->j0:I

    const/4 v0, 0x0

    .line 51
    :goto_1
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    invoke-virtual {v1, p1}, Ld/x/h;->a(Ld/x/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Ld/x/h$c;)V
    .locals 3

    .line 53
    iput-object p1, p0, Ld/x/h;->a0:Ld/x/h$c;

    .line 54
    iget v0, p0, Ld/x/n;->j0:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ld/x/n;->j0:I

    .line 55
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    invoke-virtual {v2, p1}, Ld/x/h;->a(Ld/x/h$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ld/x/m;)V
    .locals 3

    .line 57
    iput-object p1, p0, Ld/x/h;->Z:Ld/x/m;

    .line 58
    iget v0, p0, Ld/x/n;->j0:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/x/n;->j0:I

    .line 59
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    invoke-virtual {v2, p1}, Ld/x/h;->a(Ld/x/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ld/x/p;)V
    .locals 3

    .line 40
    iget-object v0, p1, Ld/x/p;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ld/x/h;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    .line 42
    iget-object v2, p1, Ld/x/p;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ld/x/h;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1, p1}, Ld/x/h;->a(Ld/x/p;)V

    .line 44
    iget-object v2, p1, Ld/x/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(J)Ld/x/h;
    .locals 0

    .line 4
    iput-wide p1, p0, Ld/x/h;->y:J

    return-object p0
.end method

.method public b(Ld/x/h$d;)Ld/x/h;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Ld/x/h;->b(Ld/x/h$d;)Ld/x/h;

    return-object p0
.end method

.method public b(I)Ld/x/n;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Ld/x/n;->g0:Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Ld/x/n;->g0:Z

    :goto_0
    return-object p0
.end method

.method public b(Ld/x/p;)V
    .locals 3

    .line 6
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    invoke-virtual {v2, p1}, Ld/x/h;->b(Ld/x/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ld/x/h;->d()V

    .line 3
    invoke-virtual {p0}, Ld/x/h;->a()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ld/x/n$b;

    invoke-direct {v0, p0}, Ld/x/n$b;-><init>(Ld/x/n;)V

    .line 5
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    .line 6
    invoke-virtual {v2, v0}, Ld/x/h;->a(Ld/x/h$d;)Ld/x/h;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ld/x/n;->h0:I

    .line 8
    iget-boolean v0, p0, Ld/x/n;->g0:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    .line 11
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    .line 12
    new-instance v3, Ld/x/n$a;

    invoke-direct {v3, p0, v2}, Ld/x/n$a;-><init>(Ld/x/n;Ld/x/h;)V

    invoke-virtual {v1, v3}, Ld/x/h;->a(Ld/x/h$d;)Ld/x/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/x/h;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ld/x/h;->c()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    .line 16
    invoke-virtual {v1}, Ld/x/h;->c()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-super {p0, p1}, Ld/x/h;->c(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    invoke-virtual {v2, p1}, Ld/x/h;->c(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ld/x/p;)V
    .locals 3

    .line 17
    iget-object v0, p1, Ld/x/p;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ld/x/h;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    .line 19
    iget-object v2, p1, Ld/x/p;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ld/x/h;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {v1, p1}, Ld/x/h;->c(Ld/x/p;)V

    .line 21
    iget-object v2, p1, Ld/x/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Ld/x/h;
    .locals 4

    .line 2
    invoke-super {p0}, Ld/x/h;->clone()Ld/x/h;

    move-result-object v0

    check-cast v0, Ld/x/n;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ld/x/n;->f0:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v3, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/x/h;

    invoke-virtual {v3}, Ld/x/h;->clone()Ld/x/h;

    move-result-object v3

    invoke-virtual {v0, v3}, Ld/x/n;->a(Ld/x/h;)Ld/x/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/x/n;->clone()Ld/x/h;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)Ld/x/h;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/x/h;

    invoke-virtual {v1, p1}, Ld/x/h;->d(Landroid/view/View;)Ld/x/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/x/h;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ld/x/h;->e(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ld/x/n;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/x/h;

    invoke-virtual {v2, p1}, Ld/x/h;->e(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
