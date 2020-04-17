.class public final Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
.super Ld/o/h;
.source "SourceFile"

# interfaces
.implements Ld/o/j;


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    throw v0

    :cond_0
    const-string p1, "event"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "source"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
