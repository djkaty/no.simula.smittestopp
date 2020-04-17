.class public Ld/u/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/u/f;


# direct methods
.method public constructor <init>(Ld/u/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/u/f$c;->x:Ld/u/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ld/u/f$c;->x:Ld/u/f;

    iget-object v0, v0, Ld/u/f;->f:Ld/u/d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ld/u/f$c;->x:Ld/u/f;

    iget-object v2, p0, Ld/u/f$c;->x:Ld/u/f;

    iget-object v2, v2, Ld/u/f;->h:Ld/u/c;

    iget-object v3, p0, Ld/u/f$c;->x:Ld/u/f;

    iget-object v3, v3, Ld/u/f;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ld/u/d;->a(Ld/u/c;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Ld/u/f;->c:I

    .line 3
    iget-object v0, p0, Ld/u/f$c;->x:Ld/u/f;

    iget-object v0, v0, Ld/u/f;->d:Ld/u/e;

    iget-object v1, p0, Ld/u/f$c;->x:Ld/u/f;

    iget-object v1, v1, Ld/u/f;->e:Ld/u/e$c;

    invoke-virtual {v0, v1}, Ld/u/e;->a(Ld/u/e$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
