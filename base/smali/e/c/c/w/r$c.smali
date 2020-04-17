.class public final Le/c/c/w/r$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/c/w/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic x:Le/c/c/w/r;


# direct methods
.method public constructor <init>(Le/c/c/w/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/c/w/r$c;->x:Le/c/c/w/r;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/c/w/r$c;->x:Le/c/c/w/r;

    invoke-virtual {v0}, Le/c/c/w/r;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/c/w/r$c;->x:Le/c/c/w/r;

    .line 2
    invoke-virtual {v0, p1}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/c/c/w/r$c$a;

    invoke-direct {v0, p0}, Le/c/c/w/r$c$a;-><init>(Le/c/c/w/r$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/c/w/r$c;->x:Le/c/c/w/r;

    .line 2
    invoke-virtual {v0, p1}, Le/c/c/w/r;->a(Ljava/lang/Object;)Le/c/c/w/r$e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1}, Le/c/c/w/r;->b(Le/c/c/w/r$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/c/w/r$c;->x:Le/c/c/w/r;

    iget v0, v0, Le/c/c/w/r;->z:I

    return v0
.end method
