.class public Ld/s/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/j;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ld/s/i;",
        ">;"
    }
.end annotation


# instance fields
.field public x:I

.field public y:Z

.field public final synthetic z:Ld/s/j;


# direct methods
.method public constructor <init>(Ld/s/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/s/j$a;->z:Ld/s/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ld/s/j$a;->x:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ld/s/j$a;->y:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1
    iget v0, p0, Ld/s/j$a;->x:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Ld/s/j$a;->z:Ld/s/j;

    iget-object v2, v2, Ld/s/j;->F:Ld/f/i;

    invoke-virtual {v2}, Ld/f/i;->b()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld/s/j$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld/s/j$a;->y:Z

    .line 3
    iget-object v1, p0, Ld/s/j$a;->z:Ld/s/j;

    iget-object v1, v1, Ld/s/j;->F:Ld/f/i;

    iget v2, p0, Ld/s/j$a;->x:I

    add-int/2addr v2, v0

    iput v2, p0, Ld/s/j$a;->x:I

    invoke-virtual {v1, v2}, Ld/f/i;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/i;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ld/s/j$a;->y:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/s/j$a;->z:Ld/s/j;

    iget-object v0, v0, Ld/s/j;->F:Ld/f/i;

    iget v1, p0, Ld/s/j$a;->x:I

    invoke-virtual {v0, v1}, Ld/f/i;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/i;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Ld/s/i;->y:Ld/s/j;

    .line 4
    iget-object v0, p0, Ld/s/j$a;->z:Ld/s/j;

    iget-object v0, v0, Ld/s/j;->F:Ld/f/i;

    iget v1, p0, Ld/s/j$a;->x:I

    .line 5
    iget-object v2, v0, Ld/f/i;->z:[Ljava/lang/Object;

    aget-object v3, v2, v1

    sget-object v4, Ld/f/i;->B:Ljava/lang/Object;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_0

    .line 6
    aput-object v4, v2, v1

    .line 7
    iput-boolean v5, v0, Ld/f/i;->x:Z

    .line 8
    :cond_0
    iget v0, p0, Ld/s/j$a;->x:I

    sub-int/2addr v0, v5

    iput v0, p0, Ld/s/j$a;->x:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Ld/s/j$a;->y:Z

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call next() before you can remove an element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
