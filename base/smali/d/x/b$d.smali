.class public final Ld/x/b$d;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Ld/x/b$k;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ld/x/b$k;

    const/4 p1, 0x0

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ld/x/b$k;

    check-cast p2, Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    .line 2
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Ld/x/b$k;->c:I

    .line 3
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Ld/x/b$k;->d:I

    .line 4
    iget v0, p1, Ld/x/b$k;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ld/x/b$k;->g:I

    .line 5
    iget v1, p1, Ld/x/b$k;->f:I

    if-ne v1, v0, :cond_0

    .line 6
    iget-object v0, p1, Ld/x/b$k;->e:Landroid/view/View;

    iget v1, p1, Ld/x/b$k;->a:I

    iget v2, p1, Ld/x/b$k;->b:I

    iget v3, p1, Ld/x/b$k;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ld/x/v;->a(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    .line 7
    iput p2, p1, Ld/x/b$k;->f:I

    .line 8
    iput p2, p1, Ld/x/b$k;->g:I

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
