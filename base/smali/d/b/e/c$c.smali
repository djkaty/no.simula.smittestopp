.class public Ld/b/e/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public x:Ld/b/e/c$e;

.field public final synthetic y:Ld/b/e/c;


# direct methods
.method public constructor <init>(Ld/b/e/c;Ld/b/e/c$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/e/c$c;->y:Ld/b/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ld/b/e/c$c;->x:Ld/b/e/c$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/c$c;->y:Ld/b/e/c;

    .line 2
    iget-object v0, v0, Ld/b/d/i/b;->z:Ld/b/d/i/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Ld/b/d/i/g;->e:Ld/b/d/i/g$a;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Ld/b/d/i/g$a;->a(Ld/b/d/i/g;)V

    .line 5
    :cond_0
    iget-object v0, p0, Ld/b/e/c$c;->y:Ld/b/e/c;

    .line 6
    iget-object v0, v0, Ld/b/d/i/b;->E:Ld/b/d/i/n;

    .line 7
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/b/e/c$c;->x:Ld/b/e/c$e;

    invoke-virtual {v0}, Ld/b/d/i/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Ld/b/e/c$c;->y:Ld/b/e/c;

    iget-object v1, p0, Ld/b/e/c$c;->x:Ld/b/e/c$e;

    iput-object v1, v0, Ld/b/e/c;->R:Ld/b/e/c$e;

    .line 10
    :cond_1
    iget-object v0, p0, Ld/b/e/c$c;->y:Ld/b/e/c;

    const/4 v1, 0x0

    iput-object v1, v0, Ld/b/e/c;->T:Ld/b/e/c$c;

    return-void
.end method
