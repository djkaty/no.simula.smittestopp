.class public abstract Ld/b/d/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld/i/d/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ld/i/d/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/b/d/i/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, Ld/i/d/a/b;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Ld/i/d/a/b;

    .line 3
    iget-object v1, p0, Ld/b/d/i/c;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ld/f/a;

    invoke-direct {v1}, Ld/f/a;-><init>()V

    iput-object v1, p0, Ld/b/d/i/c;->b:Ljava/util/Map;

    .line 5
    :cond_0
    iget-object v1, p0, Ld/b/d/i/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ld/b/d/i/j;

    iget-object v1, p0, Ld/b/d/i/c;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Ld/b/d/i/j;-><init>(Landroid/content/Context;Ld/i/d/a/b;)V

    .line 7
    iget-object v1, p0, Ld/b/d/i/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 8
    instance-of v0, p1, Ld/i/d/a/c;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Ld/i/d/a/c;

    .line 10
    iget-object v0, p0, Ld/b/d/i/c;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ld/f/a;

    invoke-direct {v0}, Ld/f/a;-><init>()V

    iput-object v0, p0, Ld/b/d/i/c;->c:Ljava/util/Map;

    .line 12
    :cond_0
    iget-object v0, p0, Ld/b/d/i/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Ld/b/d/i/s;

    iget-object v1, p0, Ld/b/d/i/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ld/b/d/i/s;-><init>(Landroid/content/Context;Ld/i/d/a/c;)V

    .line 14
    iget-object v1, p0, Ld/b/d/i/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
