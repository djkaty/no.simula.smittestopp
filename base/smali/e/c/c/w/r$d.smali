.class public abstract Le/c/c/w/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/c/w/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
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
.field public final synthetic A:Le/c/c/w/r;

.field public x:Le/c/c/w/r$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public y:Le/c/c/w/r$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public z:I


# direct methods
.method public constructor <init>(Le/c/c/w/r;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/c/c/w/r$d;->A:Le/c/c/w/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Le/c/c/w/r$d;->A:Le/c/c/w/r;

    iget-object v0, p1, Le/c/c/w/r;->B:Le/c/c/w/r$e;

    iget-object v0, v0, Le/c/c/w/r$e;->A:Le/c/c/w/r$e;

    iput-object v0, p0, Le/c/c/w/r$d;->x:Le/c/c/w/r$e;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/c/c/w/r$d;->y:Le/c/c/w/r$e;

    .line 4
    iget p1, p1, Le/c/c/w/r;->A:I

    iput p1, p0, Le/c/c/w/r$d;->z:I

    return-void
.end method


# virtual methods
.method public final a()Le/c/c/w/r$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/c/c/w/r$d;->x:Le/c/c/w/r$e;

    .line 2
    iget-object v1, p0, Le/c/c/w/r$d;->A:Le/c/c/w/r;

    iget-object v2, v1, Le/c/c/w/r;->B:Le/c/c/w/r$e;

    if-eq v0, v2, :cond_1

    .line 3
    iget v1, v1, Le/c/c/w/r;->A:I

    iget v2, p0, Le/c/c/w/r$d;->z:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Le/c/c/w/r$e;->A:Le/c/c/w/r$e;

    iput-object v1, p0, Le/c/c/w/r$d;->x:Le/c/c/w/r$e;

    .line 5
    iput-object v0, p0, Le/c/c/w/r$d;->y:Le/c/c/w/r$e;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/c/w/r$d;->x:Le/c/c/w/r$e;

    iget-object v1, p0, Le/c/c/w/r$d;->A:Le/c/c/w/r;

    iget-object v1, v1, Le/c/c/w/r;->B:Le/c/c/w/r$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/c/w/r$d;->y:Le/c/c/w/r$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/c/c/w/r$d;->A:Le/c/c/w/r;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Le/c/c/w/r;->b(Le/c/c/w/r$e;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/c/c/w/r$d;->y:Le/c/c/w/r$e;

    .line 4
    iget-object v0, p0, Le/c/c/w/r$d;->A:Le/c/c/w/r;

    iget v0, v0, Le/c/c/w/r;->A:I

    iput v0, p0, Le/c/c/w/r$d;->z:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
