.class public Landroidx/navigation/NavController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Landroidx/navigation/NavController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavController$1;->x:Landroidx/navigation/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/navigation/NavController$1;->x:Landroidx/navigation/NavController;

    iget-object v0, p1, Landroidx/navigation/NavController;->d:Ld/s/j;

    if-eqz v0, :cond_5

    .line 2
    iget-object p1, p1, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/s/e;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v1, Ld/o/g$b;->DESTROYED:Ld/o/g$b;

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    sget-object v1, Ld/o/g$b;->RESUMED:Ld/o/g$b;

    goto :goto_1

    .line 7
    :cond_2
    sget-object v1, Ld/o/g$b;->STARTED:Ld/o/g$b;

    goto :goto_1

    .line 8
    :cond_3
    sget-object v1, Ld/o/g$b;->CREATED:Ld/o/g$b;

    .line 9
    :goto_1
    iput-object v1, v0, Ld/s/e;->C:Ld/o/g$b;

    .line 10
    invoke-virtual {v0}, Ld/s/e;->a()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_5
    return-void
.end method
