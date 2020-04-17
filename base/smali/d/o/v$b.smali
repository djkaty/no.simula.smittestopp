.class public Ld/o/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p2, Ld/o/g$a;->ON_CREATE:Ld/o/g$a;

    invoke-static {p1, p2}, Ld/o/v;->a(Landroid/app/Activity;Ld/o/g$a;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ld/o/g$a;->ON_RESUME:Ld/o/g$a;

    invoke-static {p1, v0}, Ld/o/v;->a(Landroid/app/Activity;Ld/o/g$a;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ld/o/g$a;->ON_START:Ld/o/g$a;

    invoke-static {p1, v0}, Ld/o/v;->a(Landroid/app/Activity;Ld/o/g$a;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ld/o/g$a;->ON_DESTROY:Ld/o/g$a;

    invoke-static {p1, v0}, Ld/o/v;->a(Landroid/app/Activity;Ld/o/g$a;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ld/o/g$a;->ON_PAUSE:Ld/o/g$a;

    invoke-static {p1, v0}, Ld/o/v;->a(Landroid/app/Activity;Ld/o/g$a;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Ld/o/g$a;->ON_STOP:Ld/o/g$a;

    invoke-static {p1, v0}, Ld/o/v;->a(Landroid/app/Activity;Ld/o/g$a;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
