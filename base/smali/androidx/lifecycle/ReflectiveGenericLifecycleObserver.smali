.class public Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/j;


# instance fields
.field public final x:Ljava/lang/Object;

.field public final y:Ld/o/b$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->x:Ljava/lang/Object;

    .line 3
    sget-object v0, Ld/o/b;->c:Ld/o/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld/o/b;->a(Ljava/lang/Class;)Ld/o/b$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->y:Ld/o/b$a;

    return-void
.end method


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->y:Ld/o/b$a;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->x:Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Ld/o/b$a;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Ld/o/b$a;->a(Ljava/util/List;Ld/o/l;Ld/o/g$a;Ljava/lang/Object;)V

    .line 3
    iget-object v0, v0, Ld/o/b$a;->a:Ljava/util/Map;

    sget-object v2, Ld/o/g$a;->ON_ANY:Ld/o/g$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Ld/o/b$a;->a(Ljava/util/List;Ld/o/l;Ld/o/g$a;Ljava/lang/Object;)V

    return-void
.end method
