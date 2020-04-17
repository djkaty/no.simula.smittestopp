.class public Ld/s/j;
.super Ld/s/i;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/s/i;",
        "Ljava/lang/Iterable<",
        "Ld/s/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final F:Ld/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/i<",
            "Ld/s/i;",
            ">;"
        }
    .end annotation
.end field

.field public G:I

.field public H:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld/s/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/s/p<",
            "+",
            "Ld/s/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ld/s/i;-><init>(Ld/s/p;)V

    .line 2
    new-instance p1, Ld/f/i;

    const/16 v0, 0xa

    .line 3
    invoke-direct {p1, v0}, Ld/f/i;-><init>(I)V

    .line 4
    iput-object p1, p0, Ld/s/j;->F:Ld/f/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Ld/s/i$a;
    .locals 4

    .line 9
    invoke-super {p0, p1}, Ld/s/i;->a(Landroid/net/Uri;)Ld/s/i$a;

    move-result-object v0

    .line 10
    new-instance v1, Ld/s/j$a;

    invoke-direct {v1, p0}, Ld/s/j$a;-><init>(Ld/s/j;)V

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ld/s/j$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ld/s/j$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/s/i;

    .line 12
    invoke-virtual {v2, p1}, Ld/s/i;->a(Landroid/net/Uri;)Ld/s/i$a;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v2, v0}, Ld/s/i$a;->a(Ld/s/i$a;)I

    move-result v3

    if-lez v3, :cond_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(IZ)Ld/s/i;
    .locals 2

    .line 14
    iget-object v0, p0, Ld/s/j;->F:Ld/f/i;

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Ld/f/i;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Ld/s/i;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 17
    iget-object p2, p0, Ld/s/i;->y:Ld/s/j;

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p2, p1}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ld/s/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/common/R$styleable;->NavGraphNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    sget v0, Landroidx/navigation/common/R$styleable;->NavGraphNavigator_startDestination:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 5
    iput v0, p0, Ld/s/j;->G:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Ld/s/j;->H:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0}, Ld/s/i;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld/s/j;->H:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final a(Ld/s/i;)V
    .locals 2

    .line 19
    iget v0, p1, Ld/s/i;->z:I

    if-eqz v0, :cond_3

    .line 20
    iget-object v1, p0, Ld/s/j;->F:Ld/f/i;

    invoke-virtual {v1, v0}, Ld/f/i;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/i;

    if-ne v0, p1, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v1, p1, Ld/s/i;->y:Ld/s/j;

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Ld/s/i;->y:Ld/s/j;

    .line 23
    :cond_1
    iput-object p0, p1, Ld/s/i;->y:Ld/s/j;

    .line 24
    iget-object v0, p0, Ld/s/j;->F:Ld/f/i;

    .line 25
    iget v1, p1, Ld/s/i;->z:I

    .line 26
    invoke-virtual {v0, v1, p1}, Ld/f/i;->c(ILjava/lang/Object;)V

    return-void

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destinations must have an id. Call setId() or include an android:id in your navigation XML."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Ld/s/i;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Ld/s/j;->a(IZ)Ld/s/i;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ld/s/i;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/s/j$a;

    invoke-direct {v0, p0}, Ld/s/j$a;-><init>(Ld/s/j;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-super {p0}, Ld/s/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startDestination="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Ld/s/j;->G:I

    .line 5
    invoke-virtual {p0, v1}, Ld/s/j;->b(I)Ld/s/i;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Ld/s/j;->H:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0x"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Ld/s/j;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "{"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ld/s/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
