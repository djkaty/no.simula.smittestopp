.class public final Lg/c/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lg/c/f;

.field public b:Lg/c/e;

.field public c:Lg/c/g;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Lg/c/g$b;


# direct methods
.method public constructor <init>(Lg/c/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/c/g$c;->b:Lg/c/e;

    .line 3
    iput-object v0, p0, Lg/c/g$c;->c:Lg/c/g;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lg/c/g$c;->d:I

    .line 5
    iput v0, p0, Lg/c/g$c;->e:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lg/c/g$c;->f:I

    .line 7
    iput-boolean v0, p0, Lg/c/g$c;->g:Z

    .line 8
    new-instance v1, Lg/c/g$b;

    invoke-direct {v1, v0}, Lg/c/g$b;-><init>(I)V

    iput-object v1, p0, Lg/c/g$c;->h:Lg/c/g$b;

    .line 9
    iput-object p1, p0, Lg/c/g$c;->a:Lg/c/f;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/g$c;->c:Lg/c/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lg/c/g$c;->d:I

    iget-object v0, v0, Lg/c/g;->a:Lg/c/g$c;

    invoke-virtual {v0}, Lg/c/g$c;->a()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public final a(II)I
    .locals 2

    .line 6
    iget-object v0, p0, Lg/c/g$c;->h:Lg/c/g$b;

    .line 7
    iget v0, v0, Lg/c/g$b;->x:I

    shr-int/lit8 p2, p2, 0x3

    if-lez v0, :cond_0

    .line 8
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 9
    :cond_0
    iget-boolean v0, p0, Lg/c/g$c;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lg/c/g$c;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p2, -0x1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 10
    :goto_0
    iget v1, p0, Lg/c/g$c;->e:I

    shr-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lg/c/g$c;->e:I

    .line 11
    iget p1, p0, Lg/c/g$c;->f:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lg/c/g$c;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lg/c/g$c;->c:Lg/c/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/c/g;->a:Lg/c/g$c;

    invoke-virtual {v0, p1}, Lg/c/g$c;->a(I)V

    goto :goto_2

    :cond_0
    and-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lg/c/g$c;->a:Lg/c/f;

    invoke-virtual {p1}, Lg/c/f;->b()Lg/c/m/f;

    move-result-object p1

    invoke-virtual {p0}, Lg/c/g$c;->b()I

    move-result v1

    invoke-interface {p1, v1, v0}, Lg/c/m/f;->a(IZ)Lg/c/e;

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lg/c/g$c;->a:Lg/c/f;

    invoke-virtual {p1}, Lg/c/f;->b()Lg/c/m/f;

    move-result-object p1

    invoke-virtual {p0}, Lg/c/g$c;->b()I

    move-result v0

    invoke-interface {p1, v0}, Lg/c/m/f;->a(I)Lg/c/e;

    :goto_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lg/c/g$c;->b:Lg/c/e;

    :goto_2
    return-void
.end method

.method public final b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lg/c/g$c;->h:Lg/c/g$b;

    .line 2
    iget v0, v0, Lg/c/g$b;->x:I

    if-lez v0, :cond_0

    .line 3
    iget v0, p0, Lg/c/g$c;->e:I

    neg-int v1, v0

    iget v2, p0, Lg/c/g$c;->f:I

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lg/c/g$c;->e:I

    :goto_0
    return v0
.end method
