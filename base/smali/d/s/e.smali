.class public final Ld/s/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/l;
.implements Ld/o/f0;
.implements Ld/v/c;


# instance fields
.field public final A:Ld/v/b;

.field public final B:Ljava/util/UUID;

.field public C:Ld/o/g$b;

.field public D:Ld/o/g$b;

.field public E:Ld/s/g;

.field public final x:Ld/s/i;

.field public final y:Landroid/os/Bundle;

.field public final z:Ld/o/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/s/i;Landroid/os/Bundle;Ld/o/l;Ld/s/g;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v7}, Ld/s/e;-><init>(Landroid/content/Context;Ld/s/i;Landroid/os/Bundle;Ld/o/l;Ld/s/g;Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ld/s/i;Landroid/os/Bundle;Ld/o/l;Ld/s/g;Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ld/o/m;

    invoke-direct {p1, p0}, Ld/o/m;-><init>(Ld/o/l;)V

    iput-object p1, p0, Ld/s/e;->z:Ld/o/m;

    .line 5
    new-instance p1, Ld/v/b;

    invoke-direct {p1, p0}, Ld/v/b;-><init>(Ld/v/c;)V

    .line 6
    iput-object p1, p0, Ld/s/e;->A:Ld/v/b;

    .line 7
    sget-object v0, Ld/o/g$b;->CREATED:Ld/o/g$b;

    iput-object v0, p0, Ld/s/e;->C:Ld/o/g$b;

    .line 8
    sget-object v0, Ld/o/g$b;->RESUMED:Ld/o/g$b;

    iput-object v0, p0, Ld/s/e;->D:Ld/o/g$b;

    .line 9
    iput-object p6, p0, Ld/s/e;->B:Ljava/util/UUID;

    .line 10
    iput-object p2, p0, Ld/s/e;->x:Ld/s/i;

    .line 11
    iput-object p3, p0, Ld/s/e;->y:Landroid/os/Bundle;

    .line 12
    iput-object p5, p0, Ld/s/e;->E:Ld/s/g;

    .line 13
    invoke-virtual {p1, p7}, Ld/v/b;->a(Landroid/os/Bundle;)V

    if-eqz p4, :cond_0

    .line 14
    invoke-interface {p4}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p1

    check-cast p1, Ld/o/m;

    .line 15
    iget-object p1, p1, Ld/o/m;->b:Ld/o/g$b;

    .line 16
    iput-object p1, p0, Ld/s/e;->C:Ld/o/g$b;

    .line 17
    :cond_0
    invoke-virtual {p0}, Ld/s/e;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/s/e;->C:Ld/o/g$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Ld/s/e;->D:Ld/o/g$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ld/s/e;->z:Ld/o/m;

    iget-object v1, p0, Ld/s/e;->C:Ld/o/g$b;

    .line 3
    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$b;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ld/s/e;->z:Ld/o/m;

    iget-object v1, p0, Ld/s/e;->D:Ld/o/g$b;

    .line 5
    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$b;)V

    :goto_0
    return-void
.end method

.method public getLifecycle()Ld/o/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/s/e;->z:Ld/o/m;

    return-object v0
.end method

.method public getSavedStateRegistry()Ld/v/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/s/e;->A:Ld/v/b;

    .line 2
    iget-object v0, v0, Ld/v/b;->b:Ld/v/a;

    return-object v0
.end method

.method public getViewModelStore()Ld/o/e0;
    .locals 3

    .line 1
    iget-object v0, p0, Ld/s/e;->E:Ld/s/g;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Ld/s/e;->B:Ljava/util/UUID;

    .line 3
    iget-object v2, v0, Ld/s/g;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/o/e0;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ld/o/e0;

    invoke-direct {v2}, Ld/o/e0;-><init>()V

    .line 5
    iget-object v0, v0, Ld/s/g;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
