.class public Ld/u/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/u/f;


# direct methods
.method public constructor <init>(Ld/u/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/u/f$b;->a:Ld/u/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld/u/f$b;->a:Ld/u/f;

    invoke-static {p2}, Ld/u/d$a;->a(Landroid/os/IBinder;)Ld/u/d;

    move-result-object p2

    iput-object p2, p1, Ld/u/f;->f:Ld/u/d;

    .line 2
    iget-object p1, p0, Ld/u/f$b;->a:Ld/u/f;

    iget-object p2, p1, Ld/u/f;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Ld/u/f;->k:Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/u/f$b;->a:Ld/u/f;

    iget-object v0, p1, Ld/u/f;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Ld/u/f;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Ld/u/f$b;->a:Ld/u/f;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/u/f;->f:Ld/u/d;

    return-void
.end method
