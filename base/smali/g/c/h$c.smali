.class public abstract Lg/c/h$c;
.super Lg/c/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lg/c/h;Lg/c/i;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    check-cast p2, Lg/c/h;

    .line 2
    iget v0, p2, Lg/c/h;->f:I

    .line 3
    iget p2, p2, Lg/c/h;->e:I

    .line 4
    iget-boolean v1, p1, Lg/c/h;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p1, Lg/c/h;->d:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p2, -0x1

    not-int v2, v2

    and-int/2addr v1, v2

    .line 5
    :goto_0
    iget v2, p1, Lg/c/h;->d:I

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lg/c/h;->d:I

    .line 6
    iget v0, p1, Lg/c/h;->e:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lg/c/h;->e:I

    .line 7
    iget v0, p1, Lg/c/h;->d:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p2, p2, -0x1

    not-int p2, p2

    and-int/2addr p2, v0

    iput p2, p1, Lg/c/h;->f:I

    .line 8
    invoke-direct {p0, p1, v1}, Lg/c/h$a;-><init>(Lg/c/h;I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
