.class public Ld/o/u;
.super Ld/o/c;
.source "SourceFile"


# instance fields
.field public final synthetic x:Ld/o/t;


# direct methods
.method public constructor <init>(Ld/o/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/o/u;->x:Ld/o/t;

    invoke-direct {p0}, Ld/o/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ld/o/v;->a(Landroid/app/Activity;)Ld/o/v;

    move-result-object p1

    iget-object p2, p0, Ld/o/u;->x:Ld/o/t;

    iget-object p2, p2, Ld/o/t;->E:Ld/o/v$a;

    .line 2
    iput-object p2, p1, Ld/o/v;->x:Ld/o/v$a;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ld/o/u;->x:Ld/o/t;

    .line 2
    iget v0, p1, Ld/o/t;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Ld/o/t;->y:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Ld/o/t;->B:Landroid/os/Handler;

    iget-object p1, p1, Ld/o/t;->D:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ld/o/u;->x:Ld/o/t;

    .line 2
    iget v0, p1, Ld/o/t;->x:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Ld/o/t;->x:I

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p1, Ld/o/t;->z:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Ld/o/t;->C:Ld/o/m;

    sget-object v2, Ld/o/g$a;->ON_STOP:Ld/o/g$a;

    invoke-virtual {v0, v2}, Ld/o/m;->a(Ld/o/g$a;)V

    .line 5
    iput-boolean v1, p1, Ld/o/t;->A:Z

    :cond_0
    return-void
.end method
