.class public abstract Ld/t/a/s$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "x"
.end annotation


# static fields
.field public static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ld/t/a/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:J

.field public f:I

.field public g:Ld/t/a/s$x;

.field public h:Ld/t/a/s$x;

.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Ld/t/a/s$q;

.field public n:Z

.field public o:I

.field public p:I

.field public q:Ld/t/a/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Ld/t/a/s$x;->r:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 21
    iget-object v0, p0, Ld/t/a/s$x;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    :cond_0
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Ld/t/a/s$x;->i:I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 14
    iget v0, p0, Ld/t/a/s$x;->i:I

    or-int/2addr p1, v0

    iput p1, p0, Ld/t/a/s$x;->i:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 13
    iget v0, p0, Ld/t/a/s$x;->i:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Ld/t/a/s$x;->i:I

    return-void
.end method

.method public a(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Ld/t/a/s$x;->a(I)V

    .line 2
    invoke-virtual {p0, p2, p3}, Ld/t/a/s$x;->a(IZ)V

    .line 3
    iput p1, p0, Ld/t/a/s$x;->c:I

    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 4
    iget v0, p0, Ld/t/a/s$x;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Ld/t/a/s$x;->c:I

    iput v0, p0, Ld/t/a/s$x;->d:I

    .line 6
    :cond_0
    iget v0, p0, Ld/t/a/s$x;->f:I

    if-ne v0, v1, :cond_1

    .line 7
    iget v0, p0, Ld/t/a/s$x;->c:I

    iput v0, p0, Ld/t/a/s$x;->f:I

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    iget p2, p0, Ld/t/a/s$x;->f:I

    add-int/2addr p2, p1

    iput p2, p0, Ld/t/a/s$x;->f:I

    .line 9
    :cond_2
    iget p2, p0, Ld/t/a/s$x;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Ld/t/a/s$x;->c:I

    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public a(Ld/t/a/s$q;Z)V
    .locals 0

    .line 11
    iput-object p1, p0, Ld/t/a/s$x;->m:Ld/t/a/s$q;

    .line 12
    iput-boolean p2, p0, Ld/t/a/s$x;->n:Z

    return-void
.end method

.method public a(Ld/t/a/s;)V
    .locals 1

    .line 24
    iget v0, p0, Ld/t/a/s$x;->o:I

    invoke-virtual {p1, p0, v0}, Ld/t/a/s;->a(Ld/t/a/s$x;I)Z

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Ld/t/a/s$x;->o:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0, v0}, Ld/t/a/s$x;->a(I)V

    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Ld/t/a/s$x;->i:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Ld/t/a/s$x;->j:Ljava/util/List;

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/t/a/s$x;->j:Ljava/util/List;

    .line 19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/t/a/s$x;->k:Ljava/util/List;

    .line 20
    :cond_1
    iget-object v0, p0, Ld/t/a/s$x;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 26
    iget v1, p0, Ld/t/a/s$x;->l:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Ld/t/a/s$x;->l:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Ld/t/a/s$x;->l:I

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    .line 29
    iget p1, p0, Ld/t/a/s$x;->i:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Ld/t/a/s$x;->i:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 30
    iget p1, p0, Ld/t/a/s$x;->l:I

    if-nez p1, :cond_3

    .line 31
    iget p1, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Ld/t/a/s$x;->i:I

    :cond_3
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Ld/t/a/s$x;->i:I

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 2
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Ld/t/a/s$x;->i:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$x;->q:Ld/t/a/s;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ld/t/a/s;->a(Ld/t/a/s$x;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 2

    .line 1
    iget v0, p0, Ld/t/a/s$x;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ld/t/a/s$x;->c:I

    :cond_0
    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->d:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ld/t/a/s$x;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ld/t/a/s$x;->k:Ljava/util/List;

    return-object v0

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Ld/t/a/s$x;->r:Ljava/util/List;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Ld/t/a/s$x;->r:Ljava/util/List;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld/t/a/s$x;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$x;->m:Ld/t/a/s$q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ld/t/a/s$x;->i:I

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Ld/t/a/s$x;->c:I

    .line 3
    iput v1, p0, Ld/t/a/s$x;->d:I

    const-wide/16 v2, -0x1

    .line 4
    iput-wide v2, p0, Ld/t/a/s$x;->e:J

    .line 5
    iput v1, p0, Ld/t/a/s$x;->f:I

    .line 6
    iput v0, p0, Ld/t/a/s$x;->l:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Ld/t/a/s$x;->g:Ld/t/a/s$x;

    .line 8
    iput-object v2, p0, Ld/t/a/s$x;->h:Ld/t/a/s$x;

    .line 9
    invoke-virtual {p0}, Ld/t/a/s$x;->a()V

    .line 10
    iput v0, p0, Ld/t/a/s$x;->o:I

    .line 11
    iput v1, p0, Ld/t/a/s$x;->p:I

    .line 12
    invoke-static {p0}, Ld/t/a/s;->b(Ld/t/a/s$x;)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewHolder{"

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ld/t/a/s$x;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ld/t/a/s$x;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ld/t/a/s$x;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ld/t/a/s$x;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ld/t/a/s$x;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " scrap "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ld/t/a/s$x;->n:Z

    if-eqz v1, :cond_0

    const-string v1, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v1, "[attachedScrap]"

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {p0}, Ld/t/a/s$x;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {p0}, Ld/t/a/s$x;->k()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_3
    invoke-virtual {p0}, Ld/t/a/s$x;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_4
    invoke-virtual {p0}, Ld/t/a/s$x;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    invoke-virtual {p0}, Ld/t/a/s$x;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_6
    invoke-virtual {p0}, Ld/t/a/s$x;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_7
    invoke-virtual {p0}, Ld/t/a/s$x;->m()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, " not recyclable("

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/t/a/s$x;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_8
    invoke-virtual {p0}, Ld/t/a/s$x;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/s$x;->m:Ld/t/a/s$q;

    invoke-virtual {v0, p0}, Ld/t/a/s$q;->b(Ld/t/a/s$x;)V

    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget v0, p0, Ld/t/a/s$x;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
