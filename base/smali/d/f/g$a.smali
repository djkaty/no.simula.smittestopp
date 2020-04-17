.class public final Ld/f/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public A:Z

.field public final synthetic B:Ld/f/g;

.field public final x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ld/f/g;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Ld/f/g$a;->B:Ld/f/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld/f/g$a;->A:Z

    .line 3
    iput p2, p0, Ld/f/g$a;->x:I

    .line 4
    invoke-virtual {p1}, Ld/f/g;->c()I

    move-result p1

    iput p1, p0, Ld/f/g$a;->y:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ld/f/g$a;->z:I

    iget v1, p0, Ld/f/g$a;->y:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ld/f/g$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/f/g$a;->B:Ld/f/g;

    iget v1, p0, Ld/f/g$a;->z:I

    iget v2, p0, Ld/f/g$a;->x:I

    invoke-virtual {v0, v1, v2}, Ld/f/g;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget v1, p0, Ld/f/g$a;->z:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Ld/f/g$a;->z:I

    .line 4
    iput-boolean v2, p0, Ld/f/g$a;->A:Z

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld/f/g$a;->A:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ld/f/g$a;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld/f/g$a;->z:I

    .line 3
    iget v1, p0, Ld/f/g$a;->y:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ld/f/g$a;->y:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ld/f/g$a;->A:Z

    .line 5
    iget-object v1, p0, Ld/f/g$a;->B:Ld/f/g;

    invoke-virtual {v1, v0}, Ld/f/g;->a(I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
