.class public final Lh/o/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/o/b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lh/l/c;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A:Lh/l/c;

.field public B:I

.field public final synthetic C:Lh/o/b;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Lh/o/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lh/o/b$a;->C:Lh/o/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lh/o/b$a;->x:I

    .line 3
    iget v0, p1, Lh/o/b;->b:I

    const/4 v1, 0x0

    .line 4
    iget-object p1, p1, Lh/o/b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    iput v0, p0, Lh/o/b$a;->y:I

    .line 6
    iput v0, p0, Lh/o/b$a;->z:I

    return-void

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Lh/o/b$a;->z:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lh/o/b$a;->x:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lh/o/b$a;->A:Lh/l/c;

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lh/o/b$a;->C:Lh/o/b;

    .line 5
    iget v0, v0, Lh/o/b;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    .line 6
    iget v4, p0, Lh/o/b$a;->B:I

    add-int/2addr v4, v3

    iput v4, p0, Lh/o/b$a;->B:I

    if-ge v4, v0, :cond_2

    :cond_1
    iget v0, p0, Lh/o/b$a;->z:I

    iget-object v4, p0, Lh/o/b$a;->C:Lh/o/b;

    .line 7
    iget-object v4, v4, Lh/o/b;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 9
    :cond_2
    iget v0, p0, Lh/o/b$a;->y:I

    new-instance v1, Lh/l/c;

    iget-object v4, p0, Lh/o/b$a;->C:Lh/o/b;

    .line 10
    iget-object v4, v4, Lh/o/b;->a:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v4}, Lh/o/g;->a(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lh/l/c;-><init>(II)V

    iput-object v1, p0, Lh/o/b$a;->A:Lh/l/c;

    .line 12
    iput v2, p0, Lh/o/b$a;->z:I

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Lh/o/b$a;->C:Lh/o/b;

    .line 14
    iget-object v4, v0, Lh/o/b;->d:Lh/k/a/p;

    .line 15
    iget-object v0, v0, Lh/o/b;->a:Ljava/lang/CharSequence;

    .line 16
    iget v5, p0, Lh/o/b$a;->z:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lh/k/a/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/c;

    if-nez v0, :cond_4

    .line 17
    iget v0, p0, Lh/o/b$a;->y:I

    new-instance v1, Lh/l/c;

    iget-object v4, p0, Lh/o/b$a;->C:Lh/o/b;

    .line 18
    iget-object v4, v4, Lh/o/b;->a:Ljava/lang/CharSequence;

    .line 19
    invoke-static {v4}, Lh/o/g;->a(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lh/l/c;-><init>(II)V

    iput-object v1, p0, Lh/o/b$a;->A:Lh/l/c;

    .line 20
    iput v2, p0, Lh/o/b$a;->z:I

    goto :goto_1

    .line 21
    :cond_4
    iget-object v2, v0, Lh/c;->x:Ljava/lang/Object;

    .line 22
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    iget-object v0, v0, Lh/c;->y:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 25
    iget v4, p0, Lh/o/b$a;->y:I

    const/high16 v5, -0x80000000

    if-gt v2, v5, :cond_5

    .line 26
    sget-object v4, Lh/l/c;->B:Lh/l/c;

    .line 27
    sget-object v4, Lh/l/c;->A:Lh/l/c;

    goto :goto_0

    .line 28
    :cond_5
    new-instance v5, Lh/l/c;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v5, v4, v6}, Lh/l/c;-><init>(II)V

    move-object v4, v5

    .line 29
    :goto_0
    iput-object v4, p0, Lh/o/b$a;->A:Lh/l/c;

    add-int/2addr v2, v0

    .line 30
    iput v2, p0, Lh/o/b$a;->y:I

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v2, v1

    .line 31
    iput v2, p0, Lh/o/b$a;->z:I

    .line 32
    :goto_1
    iput v3, p0, Lh/o/b$a;->x:I

    :goto_2
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lh/o/b$a;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lh/o/b$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lh/o/b$a;->x:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lh/o/b$a;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lh/o/b$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lh/o/b$a;->x:I

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lh/o/b$a;->A:Lh/l/c;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lh/o/b$a;->A:Lh/l/c;

    .line 6
    iput v1, p0, Lh/o/b$a;->x:I

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lh/e;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lh/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
