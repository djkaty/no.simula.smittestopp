.class public abstract Ld/m/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/m/a/p$g;,
        Ld/m/a/p$f;,
        Ld/m/a/p$e;
    }
.end annotation


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/m/a/p$g;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ld/m/a/t;

.field public D:Ljava/lang/Runnable;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/m/a/p$e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Ld/m/a/x;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ld/m/a/n;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Ld/a/b;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Ld/i/e/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ld/m/a/f0$a;

.field public final l:Ld/m/a/o;

.field public m:I

.field public n:Ld/m/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/m/a/m<",
            "*>;"
        }
    .end annotation
.end field

.field public o:Ld/m/a/i;

.field public p:Landroidx/fragment/app/Fragment;

.field public q:Landroidx/fragment/app/Fragment;

.field public r:Ld/m/a/l;

.field public s:Ld/m/a/l;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ld/m/a/x;

    invoke-direct {v0}, Ld/m/a/x;-><init>()V

    iput-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    .line 4
    new-instance v0, Ld/m/a/n;

    invoke-direct {v0, p0}, Ld/m/a/n;-><init>(Ld/m/a/p;)V

    iput-object v0, p0, Ld/m/a/p;->f:Ld/m/a/n;

    .line 5
    new-instance v0, Ld/m/a/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/m/a/p$a;-><init>(Ld/m/a/p;Z)V

    iput-object v0, p0, Ld/m/a/p;->h:Ld/a/b;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ld/m/a/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance v0, Ld/m/a/p$b;

    invoke-direct {v0, p0}, Ld/m/a/p$b;-><init>(Ld/m/a/p;)V

    iput-object v0, p0, Ld/m/a/p;->k:Ld/m/a/f0$a;

    .line 9
    new-instance v0, Ld/m/a/o;

    invoke-direct {v0, p0}, Ld/m/a/o;-><init>(Ld/m/a/p;)V

    iput-object v0, p0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Ld/m/a/p;->m:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ld/m/a/p;->r:Ld/m/a/l;

    .line 12
    new-instance v0, Ld/m/a/p$c;

    invoke-direct {v0, p0}, Ld/m/a/p$c;-><init>(Ld/m/a/p;)V

    iput-object v0, p0, Ld/m/a/p;->s:Ld/m/a/l;

    .line 13
    new-instance v0, Ld/m/a/p$d;

    invoke-direct {v0, p0}, Ld/m/a/p$d;-><init>(Ld/m/a/p;)V

    iput-object v0, p0, Ld/m/a/p;->D:Ljava/lang/Runnable;

    return-void
.end method

.method public static c(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 348
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0, p1}, Ld/m/a/x;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Ld/m/a/p;->b:Z

    .line 363
    iget-object v0, p0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    iget-object v0, p0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 638
    :try_start_0
    iput-boolean v0, p0, Ld/m/a/p;->b:Z

    .line 639
    iget-object v2, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v2, p1}, Ld/m/a/x;->a(I)V

    .line 640
    invoke-virtual {p0, p1, v1}, Ld/m/a/p;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iput-boolean v1, p0, Ld/m/a/p;->b:Z

    .line 642
    invoke-virtual {p0, v0}, Ld/m/a/p;->d(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 643
    iput-boolean v1, p0, Ld/m/a/p;->b:Z

    .line 644
    throw p1
.end method

.method public a(IZ)V
    .locals 1

    .line 325
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 327
    iget p2, p0, Ld/m/a/p;->m:I

    if-ne p1, p2, :cond_2

    return-void

    .line 328
    :cond_2
    iput p1, p0, Ld/m/a/p;->m:I

    .line 329
    iget-object p1, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {p1}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 330
    invoke-virtual {p0, p2}, Ld/m/a/p;->m(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 331
    :cond_3
    iget-object p1, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {p1}, Ld/m/a/x;->b()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_4

    .line 332
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v0, :cond_4

    .line 333
    invoke-virtual {p0, p2}, Ld/m/a/p;->m(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 334
    :cond_5
    invoke-virtual {p0}, Ld/m/a/p;->n()V

    .line 335
    iget-boolean p1, p0, Ld/m/a/p;->t:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-eqz p1, :cond_6

    iget p2, p0, Ld/m/a/p;->m:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 336
    check-cast p1, Ld/m/a/c$a;

    .line 337
    iget-object p1, p1, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {p1}, Ld/m/a/c;->supportInvalidateOptionsMenu()V

    const/4 p1, 0x0

    .line 338
    iput-boolean p1, p0, Ld/m/a/p;->t:Z

    :cond_6
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    .line 647
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 509
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Ld/m/a/s;

    .line 510
    iget-object v2, v1, Ld/m/a/s;->x:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    .line 511
    :cond_1
    iget-object v2, v0, Ld/m/a/p;->c:Ld/m/a/x;

    .line 512
    iget-object v2, v2, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 513
    iget-object v2, v1, Ld/m/a/s;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "): "

    const/4 v5, 0x2

    const-string v6, "FragmentManager"

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/m/a/u;

    if-eqz v3, :cond_2

    .line 514
    iget-object v7, v0, Ld/m/a/p;->C:Ld/m/a/t;

    iget-object v8, v3, Ld/m/a/u;->y:Ljava/lang/String;

    .line 515
    iget-object v7, v7, Ld/m/a/t;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_4

    .line 516
    invoke-static {v5}, Ld/m/a/p;->c(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreSaveState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_3
    new-instance v8, Ld/m/a/v;

    iget-object v9, v0, Ld/m/a/p;->l:Ld/m/a/o;

    invoke-direct {v8, v9, v7, v3}, Ld/m/a/v;-><init>(Ld/m/a/o;Landroidx/fragment/app/Fragment;Ld/m/a/u;)V

    goto :goto_1

    .line 519
    :cond_4
    new-instance v8, Ld/m/a/v;

    iget-object v7, v0, Ld/m/a/p;->l:Ld/m/a/o;

    iget-object v9, v0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 520
    iget-object v9, v9, Ld/m/a/m;->y:Landroid/content/Context;

    .line 521
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Ld/m/a/p;->h()Ld/m/a/l;

    move-result-object v10

    invoke-direct {v8, v7, v9, v10, v3}, Ld/m/a/v;-><init>(Ld/m/a/o;Ljava/lang/ClassLoader;Ld/m/a/l;Ld/m/a/u;)V

    .line 522
    :goto_1
    iget-object v3, v8, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 523
    iput-object v0, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    .line 524
    invoke-static {v5}, Ld/m/a/p;->c(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "restoreSaveState: active ("

    .line 525
    invoke-static {v5}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_5
    iget-object v3, v0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 527
    iget-object v3, v3, Ld/m/a/m;->y:Landroid/content/Context;

    .line 528
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v8, v3}, Ld/m/a/v;->a(Ljava/lang/ClassLoader;)V

    .line 529
    iget-object v3, v0, Ld/m/a/p;->c:Ld/m/a/x;

    .line 530
    iget-object v3, v3, Ld/m/a/x;->b:Ljava/util/HashMap;

    .line 531
    iget-object v4, v8, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 532
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget v3, v0, Ld/m/a/p;->m:I

    .line 534
    iput v3, v8, Ld/m/a/v;->c:I

    goto/16 :goto_0

    .line 535
    :cond_6
    iget-object v2, v0, Ld/m/a/p;->C:Ld/m/a/t;

    .line 536
    iget-object v2, v2, Ld/m/a/t;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 537
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 538
    iget-object v8, v0, Ld/m/a/p;->c:Ld/m/a/x;

    iget-object v9, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ld/m/a/x;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 539
    invoke-static {v5}, Ld/m/a/p;->c(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding retained Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " that was not found in the set of active Fragments "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Ld/m/a/s;->x:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_8
    invoke-virtual {v0, v3, v7}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    .line 542
    iput-boolean v7, v3, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v7, -0x1

    .line 543
    invoke-virtual {v0, v3, v7}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    goto :goto_2

    .line 544
    :cond_9
    iget-object v2, v0, Ld/m/a/p;->c:Ld/m/a/x;

    iget-object v3, v1, Ld/m/a/s;->y:Ljava/util/ArrayList;

    .line 545
    iget-object v8, v2, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_c

    .line 546
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 547
    invoke-virtual {v2, v8}, Ld/m/a/x;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 548
    invoke-static {v5}, Ld/m/a/p;->c(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 549
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: added ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_a
    invoke-virtual {v2, v9}, Ld/m/a/x;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    .line 551
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    invoke-static {v2, v8, v3}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_c
    iget-object v2, v1, Ld/m/a/s;->z:[Ld/m/a/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 553
    new-instance v2, Ljava/util/ArrayList;

    iget-object v8, v1, Ld/m/a/s;->z:[Ld/m/a/b;

    array-length v8, v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 554
    :goto_4
    iget-object v9, v1, Ld/m/a/s;->z:[Ld/m/a/b;

    array-length v10, v9

    if-ge v8, v10, :cond_13

    .line 555
    aget-object v9, v9, v8

    if-eqz v9, :cond_11

    .line 556
    new-instance v10, Ld/m/a/a;

    invoke-direct {v10, v0}, Ld/m/a/a;-><init>(Ld/m/a/p;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 557
    :goto_5
    iget-object v13, v9, Ld/m/a/b;->x:[I

    array-length v13, v13

    if-ge v11, v13, :cond_f

    .line 558
    new-instance v13, Ld/m/a/y$a;

    invoke-direct {v13}, Ld/m/a/y$a;-><init>()V

    .line 559
    iget-object v14, v9, Ld/m/a/b;->x:[I

    add-int/lit8 v15, v11, 0x1

    aget v11, v14, v11

    iput v11, v13, Ld/m/a/y$a;->a:I

    .line 560
    invoke-static {v5}, Ld/m/a/p;->c(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Instantiate "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " op #"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " base fragment #"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Ld/m/a/b;->x:[I

    aget v14, v14, v15

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_d
    iget-object v11, v9, Ld/m/a/b;->y:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 563
    iget-object v3, v0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v3, v11}, Ld/m/a/x;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 564
    iput-object v3, v13, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_6

    .line 565
    :cond_e
    iput-object v3, v13, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    .line 566
    :goto_6
    invoke-static {}, Ld/o/g$b;->values()[Ld/o/g$b;

    move-result-object v3

    iget-object v11, v9, Ld/m/a/b;->z:[I

    aget v11, v11, v12

    aget-object v3, v3, v11

    iput-object v3, v13, Ld/m/a/y$a;->g:Ld/o/g$b;

    .line 567
    invoke-static {}, Ld/o/g$b;->values()[Ld/o/g$b;

    move-result-object v3

    iget-object v11, v9, Ld/m/a/b;->A:[I

    aget v11, v11, v12

    aget-object v3, v3, v11

    iput-object v3, v13, Ld/m/a/y$a;->h:Ld/o/g$b;

    .line 568
    iget-object v3, v9, Ld/m/a/b;->x:[I

    add-int/lit8 v11, v15, 0x1

    aget v14, v3, v15

    iput v14, v13, Ld/m/a/y$a;->c:I

    add-int/lit8 v15, v11, 0x1

    .line 569
    aget v11, v3, v11

    iput v11, v13, Ld/m/a/y$a;->d:I

    add-int/lit8 v16, v15, 0x1

    .line 570
    aget v15, v3, v15

    iput v15, v13, Ld/m/a/y$a;->e:I

    add-int/lit8 v17, v16, 0x1

    .line 571
    aget v3, v3, v16

    iput v3, v13, Ld/m/a/y$a;->f:I

    .line 572
    iput v14, v10, Ld/m/a/y;->b:I

    .line 573
    iput v11, v10, Ld/m/a/y;->c:I

    .line 574
    iput v15, v10, Ld/m/a/y;->d:I

    .line 575
    iput v3, v10, Ld/m/a/y;->e:I

    .line 576
    invoke-virtual {v10, v13}, Ld/m/a/y;->a(Ld/m/a/y$a;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    move/from16 v11, v17

    goto/16 :goto_5

    .line 577
    :cond_f
    iget v3, v9, Ld/m/a/b;->B:I

    iput v3, v10, Ld/m/a/y;->f:I

    .line 578
    iget-object v3, v9, Ld/m/a/b;->C:Ljava/lang/String;

    iput-object v3, v10, Ld/m/a/y;->i:Ljava/lang/String;

    .line 579
    iget v3, v9, Ld/m/a/b;->D:I

    iput v3, v10, Ld/m/a/a;->t:I

    .line 580
    iput-boolean v7, v10, Ld/m/a/y;->g:Z

    .line 581
    iget v3, v9, Ld/m/a/b;->E:I

    iput v3, v10, Ld/m/a/y;->j:I

    .line 582
    iget-object v3, v9, Ld/m/a/b;->F:Ljava/lang/CharSequence;

    iput-object v3, v10, Ld/m/a/y;->k:Ljava/lang/CharSequence;

    .line 583
    iget v3, v9, Ld/m/a/b;->G:I

    iput v3, v10, Ld/m/a/y;->l:I

    .line 584
    iget-object v3, v9, Ld/m/a/b;->H:Ljava/lang/CharSequence;

    iput-object v3, v10, Ld/m/a/y;->m:Ljava/lang/CharSequence;

    .line 585
    iget-object v3, v9, Ld/m/a/b;->I:Ljava/util/ArrayList;

    iput-object v3, v10, Ld/m/a/y;->n:Ljava/util/ArrayList;

    .line 586
    iget-object v3, v9, Ld/m/a/b;->J:Ljava/util/ArrayList;

    iput-object v3, v10, Ld/m/a/y;->o:Ljava/util/ArrayList;

    .line 587
    iget-boolean v3, v9, Ld/m/a/b;->K:Z

    iput-boolean v3, v10, Ld/m/a/y;->p:Z

    .line 588
    invoke-virtual {v10, v7}, Ld/m/a/a;->a(I)V

    .line 589
    invoke-static {v5}, Ld/m/a/p;->c(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "restoreAllState: back stack #"

    const-string v9, " (index "

    .line 590
    invoke-static {v3, v8, v9}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, v10, Ld/m/a/a;->t:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v3, Ld/i/h/a;

    invoke-direct {v3, v6}, Ld/i/h/a;-><init>(Ljava/lang/String;)V

    .line 592
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "  "

    .line 593
    invoke-virtual {v10, v3, v9, v2}, Ld/m/a/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 594
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 595
    :cond_10
    iget-object v3, v0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto/16 :goto_4

    .line 596
    :cond_11
    throw v3

    .line 597
    :cond_12
    iput-object v3, v0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    .line 598
    :cond_13
    iget-object v2, v0, Ld/m/a/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v1, Ld/m/a/s;->A:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 599
    iget-object v1, v1, Ld/m/a/s;->B:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 600
    iget-object v2, v0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v2, v1}, Ld/m/a/x;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 601
    iput-object v1, v0, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    .line 602
    invoke-virtual {v0, v1}, Ld/m/a/p;->g(Landroidx/fragment/app/Fragment;)V

    :cond_14
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 2

    .line 663
    iget v0, p0, Ld/m/a/p;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 339
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Ld/m/a/p;->l(Landroidx/fragment/app/Fragment;)V

    .line 341
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_2

    .line 342
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0, p1}, Ld/m/a/x;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 344
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 345
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 346
    :cond_1
    invoke-virtual {p0, p1}, Ld/m/a/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 347
    iput-boolean p1, p0, Ld/m/a/p;->t:Z

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 90
    iget-object v1, v0, Ld/m/a/p;->c:Ld/m/a/x;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 91
    iget-object v1, v1, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m/a/v;

    const/4 v8, 0x1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ld/m/a/v;

    iget-object v2, v0, Ld/m/a/p;->l:Ld/m/a/o;

    invoke-direct {v1, v2, v7}, Ld/m/a/v;-><init>(Ld/m/a/o;Landroidx/fragment/app/Fragment;)V

    .line 93
    iput v8, v1, Ld/m/a/v;->c:I

    :cond_0
    move-object v9, v1

    .line 94
    iget v1, v9, Ld/m/a/v;->c:I

    .line 95
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    .line 96
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v3, :cond_1

    .line 97
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ge v1, v4, :cond_2

    .line 98
    iget v2, v2, Landroidx/fragment/app/Fragment;->mState:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 100
    :cond_3
    :goto_0
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v2, :cond_4

    .line 101
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 102
    :cond_4
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_6

    .line 103
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 105
    :cond_5
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 106
    :cond_6
    :goto_1
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    const/4 v6, 0x3

    if-eqz v3, :cond_7

    iget v2, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, v6, :cond_7

    .line 107
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 108
    :cond_7
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mMaxState:Ld/o/g$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v4, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v3, :cond_a

    .line 109
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 110
    :cond_8
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 111
    :cond_9
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_a
    :goto_2
    move/from16 v2, p2

    .line 112
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 113
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    const-string v11, "FragmentManager"

    const/4 v2, 0x0

    const/4 v12, 0x0

    if-gt v1, v10, :cond_2d

    if-ge v1, v10, :cond_b

    .line 114
    iget-object v1, v0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 115
    invoke-virtual/range {p0 .. p1}, Ld/m/a/p;->d(Landroidx/fragment/app/Fragment;)V

    .line 116
    :cond_b
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v5, :cond_c

    if-eqz v1, :cond_14

    if-eq v1, v8, :cond_17

    if-eq v1, v4, :cond_29

    if-eq v1, v6, :cond_2b

    goto/16 :goto_19

    :cond_c
    if-le v10, v5, :cond_14

    .line 117
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveto ATTACHED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_d
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    const-string v13, "Fragment "

    if-eqz v1, :cond_10

    .line 119
    iget-object v14, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ld/m/a/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 120
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v14, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v14, v8, :cond_e

    .line 121
    invoke-virtual {v0, v1, v8}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    .line 122
    :cond_e
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 123
    iput-object v2, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 124
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_10
    :goto_3
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 126
    iget-object v14, v0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v14, v1}, Ld/m/a/x;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 127
    iget v3, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v8, :cond_12

    .line 128
    invoke-virtual {v0, v1, v8}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    goto :goto_4

    .line 129
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_12
    :goto_4
    iget-object v1, v0, Ld/m/a/p;->n:Ld/m/a/m;

    iget-object v3, v0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    .line 131
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iput-object v1, v4, Landroidx/fragment/app/Fragment;->mHost:Ld/m/a/m;

    .line 132
    iput-object v3, v4, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 133
    iput-object v0, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    .line 134
    iget-object v3, v9, Ld/m/a/v;->a:Ld/m/a/o;

    .line 135
    iget-object v13, v1, Ld/m/a/m;->y:Landroid/content/Context;

    .line 136
    invoke-virtual {v3, v4, v13, v12}, Ld/m/a/o;->b(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 137
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 138
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v4, :cond_13

    .line 139
    move-object v4, v1

    check-cast v4, Ld/m/a/c$a;

    .line 140
    iget-object v4, v4, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {v4, v3}, Ld/m/a/c;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_5

    .line 141
    :cond_13
    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 142
    :goto_5
    iget-object v3, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 143
    iget-object v1, v1, Ld/m/a/m;->y:Landroid/content/Context;

    .line 144
    invoke-virtual {v3, v4, v1, v12}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    :cond_14
    if-lez v10, :cond_17

    .line 145
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "moveto CREATED: "

    .line 146
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 147
    :cond_15
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v3, :cond_16

    .line 148
    iget-object v3, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4, v12}, Ld/m/a/o;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 149
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 150
    iget-object v1, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v12}, Ld/m/a/o;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_6

    .line 151
    :cond_16
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 152
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iput v8, v1, Landroidx/fragment/app/Fragment;->mState:I

    :cond_17
    :goto_6
    const/16 v1, 0x8

    const-string v3, "moveto CREATE_VIEW: "

    if-le v10, v5, :cond_1a

    .line 153
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v13, :cond_1a

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v13, :cond_1a

    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v4, :cond_1a

    .line 154
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 155
    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v4, v13, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 156
    :cond_18
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v13}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v13

    iget-object v14, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v14, v14, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v13, v2, v14}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 157
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_1a

    .line 158
    invoke-virtual {v4, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 159
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v14, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v13, v14, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 160
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v13, v4, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v13, :cond_19

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_19
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v14, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v13, v14}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 162
    iget-object v4, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v13, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v14, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v15, v13, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v4, v13, v14, v15, v12}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_1a
    if-le v10, v8, :cond_29

    .line 163
    iget-object v4, v0, Ld/m/a/p;->o:Ld/m/a/i;

    .line 164
    iget-object v13, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v13, v13, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v13, :cond_1b

    goto/16 :goto_a

    .line 165
    :cond_1b
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 166
    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v13, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v3, v13, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 167
    :cond_1c
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v13, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v13, :cond_1d

    goto :goto_8

    .line 168
    :cond_1d
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v3, :cond_20

    if-eq v3, v5, :cond_1f

    .line 169
    invoke-virtual {v4, v3}, Ld/m/a/i;->a(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/view/ViewGroup;

    if-nez v13, :cond_21

    .line 170
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-eqz v4, :cond_1e

    goto :goto_8

    .line 171
    :cond_1e
    :try_start_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const-string v1, "unknown"

    .line 172
    :goto_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No view found for id 0x"

    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 173
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create fragment "

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for a container view with no id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    move-object v13, v2

    .line 175
    :cond_21
    :goto_8
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iput-object v13, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 176
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v13, v5}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 177
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_25

    .line 178
    invoke-virtual {v3, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 179
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v5, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v13, :cond_22

    .line 180
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    :cond_22
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_23

    .line 182
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_23
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1}, Ld/i/i/n;->y(Landroid/view/View;)V

    .line 184
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 185
    iget-object v1, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v5, v12}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 186
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_24

    goto :goto_9

    :cond_24
    const/4 v8, 0x0

    :goto_9
    iput-boolean v8, v1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 187
    :cond_25
    :goto_a
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "moveto ACTIVITY_CREATED: "

    .line 188
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 189
    :cond_26
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 190
    iget-object v1, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4, v12}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 191
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    .line 192
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 193
    :cond_27
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_28

    .line 194
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 195
    :cond_28
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_29
    const/4 v1, 0x2

    if-le v10, v1, :cond_2b

    .line 196
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "moveto STARTED: "

    .line 197
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 198
    :cond_2a
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 199
    iget-object v1, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Ld/m/a/o;->e(Landroidx/fragment/app/Fragment;Z)V

    :cond_2b
    if-le v10, v6, :cond_59

    .line 200
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "moveto RESUMED: "

    .line 201
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 202
    :cond_2c
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 203
    iget-object v1, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Ld/m/a/o;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 204
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 205
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_19

    :cond_2d
    if-le v1, v10, :cond_59

    if-eqz v1, :cond_53

    if-eq v1, v8, :cond_3b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_32

    if-eq v1, v6, :cond_30

    if-eq v1, v3, :cond_2e

    goto/16 :goto_19

    :cond_2e
    if-ge v10, v3, :cond_30

    .line 206
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "movefrom RESUMED: "

    .line 207
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 208
    :cond_2f
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 209
    iget-object v1, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Ld/m/a/o;->c(Landroidx/fragment/app/Fragment;Z)V

    :cond_30
    if-ge v10, v6, :cond_32

    .line 210
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "movefrom STARTED: "

    .line 211
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v3, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 212
    :cond_31
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 213
    iget-object v1, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v12}, Ld/m/a/o;->f(Landroidx/fragment/app/Fragment;Z)V

    :cond_32
    const/4 v1, 0x2

    if-ge v10, v1, :cond_3b

    .line 214
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_33
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_34

    .line 217
    iget-object v1, v0, Ld/m/a/p;->n:Ld/m/a/m;

    check-cast v1, Ld/m/a/c$a;

    .line 218
    iget-object v1, v1, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_34

    .line 219
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_34

    .line 220
    invoke-virtual {v9}, Ld/m/a/v;->b()V

    .line 221
    :cond_34
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_38

    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_38

    .line 222
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 223
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v1

    if-nez v1, :cond_38

    .line 225
    iget v1, v0, Ld/m/a/p;->m:I

    const/4 v3, 0x0

    if-le v1, v5, :cond_35

    iget-boolean v1, v0, Ld/m/a/p;->w:Z

    if-nez v1, :cond_35

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 226
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_35

    iget v1, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_35

    .line 227
    iget-object v1, v0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 228
    iget-object v1, v1, Ld/m/a/m;->y:Landroid/content/Context;

    .line 229
    iget-object v2, v0, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-static {v1, v2, v7, v12}, Ld/b/a/r;->a(Landroid/content/Context;Ld/m/a/i;Landroidx/fragment/app/Fragment;Z)Ld/m/a/g;

    move-result-object v2

    .line 230
    :cond_35
    iput v3, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 231
    iget-object v12, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 232
    iget-object v13, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_37

    .line 233
    invoke-virtual {v7, v10}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 234
    iget-object v1, v0, Ld/m/a/p;->k:Ld/m/a/f0$a;

    .line 235
    iget-object v3, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 236
    iget-object v4, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 237
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 238
    new-instance v6, Ld/i/e/a;

    invoke-direct {v6}, Ld/i/e/a;-><init>()V

    .line 239
    new-instance v5, Ld/m/a/d;

    invoke-direct {v5, v7}, Ld/m/a/d;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v5}, Ld/i/e/a;->a(Ld/i/e/a$a;)V

    .line 240
    move-object v5, v1

    check-cast v5, Ld/m/a/p$b;

    invoke-virtual {v5, v7, v6}, Ld/m/a/p$b;->b(Landroidx/fragment/app/Fragment;Ld/i/e/a;)V

    .line 241
    iget-object v1, v2, Ld/m/a/g;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_36

    .line 242
    new-instance v1, Ld/m/a/h;

    iget-object v2, v2, Ld/m/a/g;->a:Landroid/view/animation/Animation;

    invoke-direct {v1, v2, v4, v3}, Ld/m/a/h;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 243
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 244
    new-instance v2, Ld/m/a/e;

    invoke-direct {v2, v4, v7, v5, v6}, Ld/m/a/e;-><init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ld/m/a/f0$a;Ld/i/e/a;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b

    .line 246
    :cond_36
    iget-object v14, v2, Ld/m/a/g;->b:Landroid/animation/Animator;

    .line 247
    invoke-virtual {v7, v14}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 248
    new-instance v15, Ld/m/a/f;

    const/16 v16, 0x0

    move-object v1, v15

    move-object v2, v4

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Ld/m/a/f;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Ld/m/a/f0$a;Ld/i/e/a;)V

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v14}, Landroid/animation/Animator;->start()V

    goto :goto_c

    :cond_37
    :goto_b
    const/16 v16, 0x0

    .line 251
    :goto_c
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v12, v1, :cond_39

    return-void

    :cond_38
    const/16 v16, 0x0

    .line 253
    :cond_39
    iget-object v1, v0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 254
    invoke-virtual/range {p0 .. p1}, Ld/m/a/p;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_d

    .line 255
    :cond_3a
    invoke-virtual {v7, v10}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    :goto_d
    move/from16 v1, v16

    goto :goto_e

    :cond_3b
    const/16 v16, 0x0

    const/4 v1, 0x0

    :goto_e
    if-ge v10, v8, :cond_54

    .line 256
    iget-boolean v2, v7, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 v2, 0x1

    goto :goto_f

    :cond_3c
    const/4 v2, 0x0

    :goto_f
    if-nez v2, :cond_3e

    .line 257
    iget-object v2, v0, Ld/m/a/p;->C:Ld/m/a/t;

    invoke-virtual {v2, v7}, Ld/m/a/t;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_10

    .line 258
    :cond_3d
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 259
    iget-object v3, v0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v3, v2}, Ld/m/a/x;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 260
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 261
    iput-object v2, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_12

    .line 262
    :cond_3e
    :goto_10
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 263
    iget-object v3, v0, Ld/m/a/p;->c:Ld/m/a/x;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ld/m/a/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto :goto_12

    :cond_3f
    const/4 v3, 0x2

    .line 264
    invoke-static {v3}, Ld/m/a/p;->c(I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed fragment from active set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_40
    iget-object v3, v0, Ld/m/a/p;->c:Ld/m/a/x;

    if-eqz v3, :cond_52

    .line 267
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 268
    iget-object v5, v3, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_41
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/m/a/v;

    if-eqz v6, :cond_41

    .line 269
    iget-object v6, v6, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 270
    iget-object v12, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v13, v6, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    .line 271
    iput-object v4, v6, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const/4 v12, 0x0

    .line 272
    iput-object v12, v6, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    goto :goto_11

    :cond_42
    const/4 v5, 0x0

    .line 273
    iget-object v6, v3, Ld/m/a/x;->b:Ljava/util/HashMap;

    iget-object v12, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v5, :cond_43

    .line 275
    invoke-virtual {v3, v5}, Ld/m/a/x;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    iput-object v3, v4, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 276
    :cond_43
    invoke-virtual {v0, v2}, Ld/m/a/p;->p(Landroidx/fragment/app/Fragment;)V

    .line 277
    :cond_44
    :goto_12
    iget-object v2, v0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 278
    invoke-virtual {v7, v10}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto/16 :goto_17

    .line 279
    :cond_45
    iget-object v2, v0, Ld/m/a/p;->n:Ld/m/a/m;

    iget-object v3, v0, Ld/m/a/p;->C:Ld/m/a/t;

    const/4 v4, 0x3

    .line 280
    invoke-static {v4}, Ld/m/a/p;->c(I)Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v4, "movefrom CREATED: "

    .line 281
    invoke-static {v4}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v4, v5, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 282
    :cond_46
    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v5, :cond_47

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v4

    if-nez v4, :cond_47

    const/4 v4, 0x1

    goto :goto_13

    :cond_47
    const/4 v4, 0x0

    :goto_13
    if-nez v4, :cond_49

    .line 283
    iget-object v5, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ld/m/a/t;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_14

    :cond_48
    const/4 v5, 0x0

    goto :goto_15

    :cond_49
    :goto_14
    const/4 v5, 0x1

    :goto_15
    if-eqz v5, :cond_51

    .line 284
    instance-of v5, v2, Ld/o/f0;

    if-eqz v5, :cond_4a

    .line 285
    iget-boolean v2, v3, Ld/m/a/t;->g:Z

    goto :goto_16

    .line 286
    :cond_4a
    iget-object v2, v2, Ld/m/a/m;->y:Landroid/content/Context;

    .line 287
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_4b

    .line 288
    check-cast v2, Landroid/app/Activity;

    .line 289
    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    xor-int/2addr v2, v8

    goto :goto_16

    :cond_4b
    const/4 v2, 0x1

    :goto_16
    if-nez v4, :cond_4c

    if-eqz v2, :cond_4f

    .line 290
    :cond_4c
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_50

    const/4 v4, 0x3

    .line 291
    invoke-static {v4}, Ld/m/a/p;->c(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing non-config state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_4d
    iget-object v4, v3, Ld/m/a/t;->d:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/a/t;

    if-eqz v4, :cond_4e

    .line 294
    invoke-virtual {v4}, Ld/m/a/t;->b()V

    .line 295
    iget-object v4, v3, Ld/m/a/t;->d:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_4e
    iget-object v4, v3, Ld/m/a/t;->e:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/o/e0;

    if-eqz v4, :cond_4f

    .line 297
    invoke-virtual {v4}, Ld/o/e0;->a()V

    .line 298
    iget-object v3, v3, Ld/m/a/t;->e:Ljava/util/HashMap;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_4f
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 300
    iget-object v2, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3, v1}, Ld/m/a/o;->a(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_17

    :cond_50
    const/4 v1, 0x0

    .line 301
    throw v1

    .line 302
    :cond_51
    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iput v1, v2, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_17

    :cond_52
    const/4 v1, 0x0

    .line 303
    throw v1

    :cond_53
    const/4 v1, 0x0

    :cond_54
    :goto_17
    if-gez v10, :cond_59

    .line 304
    iget-object v2, v0, Ld/m/a/p;->C:Ld/m/a/t;

    const/4 v3, 0x3

    .line 305
    invoke-static {v3}, Ld/m/a/p;->c(I)Z

    move-result v3

    if-eqz v3, :cond_55

    const-string v3, "movefrom ATTACHED: "

    .line 306
    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v3, v4, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 307
    :cond_55
    iget-object v3, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 308
    iget-object v3, v9, Ld/m/a/v;->a:Ld/m/a/o;

    iget-object v4, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v4, v1}, Ld/m/a/o;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 309
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v3, 0x0

    .line 310
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Ld/m/a/m;

    .line 311
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 312
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    .line 313
    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v3, :cond_56

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_56

    goto :goto_18

    :cond_56
    const/4 v8, 0x0

    :goto_18
    if-nez v8, :cond_57

    .line 314
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v1}, Ld/m/a/t;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_59

    :cond_57
    const/4 v1, 0x3

    .line 315
    invoke-static {v1}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_58

    const-string v1, "initState called for fragment: "

    .line 316
    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v1, v2, v11}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 317
    :cond_58
    iget-object v1, v9, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->initState()V

    .line 318
    :cond_59
    :goto_19
    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v1, v10, :cond_5b

    const/4 v1, 0x3

    .line 319
    invoke-static {v1}, Ld/m/a/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_5a
    iput v10, v7, Landroidx/fragment/app/Fragment;->mState:I

    :cond_5b
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;Ld/o/g$b;)V
    .locals 2

    .line 666
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/m/a/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Ld/m/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    if-ne v0, p0, :cond_1

    .line 667
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Ld/o/g$b;

    return-void

    .line 668
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 322
    invoke-virtual {p0, p1}, Ld/m/a/p;->h(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 323
    instance-of v0, p1, Ld/m/a/j;

    if-eqz v0, :cond_0

    .line 324
    check-cast p1, Ld/m/a/j;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ld/m/a/j;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final a(Ld/f/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/f/c<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 486
    iget v0, p0, Ld/m/a/p;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 488
    iget-object v1, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v1}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 489
    iget v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v0, :cond_1

    .line 490
    invoke-virtual {p0, v2, v0}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    .line 491
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_1

    .line 492
    invoke-virtual {p1, v2}, Ld/f/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ld/m/a/a;ZZZ)V
    .locals 8

    if-eqz p2, :cond_0

    .line 470
    invoke-virtual {p1, p4}, Ld/m/a/a;->b(Z)V

    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {p1}, Ld/m/a/a;->c()V

    .line 472
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 474
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 476
    iget-object v6, p0, Ld/m/a/p;->k:Ld/m/a/f0$a;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Ld/m/a/f0;->a(Ld/m/a/p;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/m/a/f0$a;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 477
    iget p2, p0, Ld/m/a/p;->m:I

    invoke-virtual {p0, p2, v7}, Ld/m/a/p;->a(IZ)V

    .line 478
    :cond_2
    iget-object p2, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {p2}, Ld/m/a/x;->b()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 479
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 480
    invoke-virtual {p1, v0}, Ld/m/a/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    iget v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 482
    iget-object v2, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    .line 483
    iput v1, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 484
    iput v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public a(Ld/m/a/m;Ld/m/a/i;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/m<",
            "*>;",
            "Ld/m/a/i;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-nez v0, :cond_a

    .line 604
    iput-object p1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 605
    iput-object p2, p0, Ld/m/a/p;->o:Ld/m/a/i;

    .line 606
    iput-object p3, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    .line 607
    invoke-virtual {p0}, Ld/m/a/p;->o()V

    .line 608
    :cond_0
    instance-of p2, p1, Ld/a/c;

    if-eqz p2, :cond_2

    .line 609
    move-object p2, p1

    check-cast p2, Ld/a/c;

    .line 610
    invoke-interface {p2}, Ld/a/c;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Ld/m/a/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_1

    move-object p2, p3

    .line 611
    :cond_1
    iget-object v0, p0, Ld/m/a/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Ld/m/a/p;->h:Ld/a/b;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Ld/o/l;Ld/a/b;)V

    :cond_2
    if-eqz p3, :cond_4

    .line 612
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    .line 613
    iget-object p1, p1, Ld/m/a/p;->C:Ld/m/a/t;

    .line 614
    iget-object p2, p1, Ld/m/a/t;->d:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld/m/a/t;

    if-nez p2, :cond_3

    .line 615
    new-instance p2, Ld/m/a/t;

    iget-boolean v0, p1, Ld/m/a/t;->f:Z

    invoke-direct {p2, v0}, Ld/m/a/t;-><init>(Z)V

    .line 616
    iget-object p1, p1, Ld/m/a/t;->d:Ljava/util/HashMap;

    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_3
    iput-object p2, p0, Ld/m/a/p;->C:Ld/m/a/t;

    goto :goto_2

    .line 618
    :cond_4
    instance-of p2, p1, Ld/o/f0;

    if-eqz p2, :cond_9

    .line 619
    check-cast p1, Ld/o/f0;

    invoke-interface {p1}, Ld/o/f0;->getViewModelStore()Ld/o/e0;

    move-result-object p1

    .line 620
    sget-object p2, Ld/m/a/t;->i:Ld/o/a0;

    .line 621
    const-class p3, Ld/m/a/t;

    .line 622
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 623
    invoke-static {v1, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    iget-object v1, p1, Ld/o/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/o/y;

    .line 625
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 626
    instance-of p1, p2, Ld/o/d0;

    if-eqz p1, :cond_7

    .line 627
    check-cast p2, Ld/o/d0;

    invoke-virtual {p2, v1}, Ld/o/d0;->a(Ld/o/y;)V

    goto :goto_1

    .line 628
    :cond_5
    instance-of v1, p2, Ld/o/b0;

    if-eqz v1, :cond_6

    .line 629
    check-cast p2, Ld/o/b0;

    invoke-virtual {p2, v0, p3}, Ld/o/b0;->a(Ljava/lang/String;Ljava/lang/Class;)Ld/o/y;

    move-result-object p2

    goto :goto_0

    .line 630
    :cond_6
    invoke-interface {p2, p3}, Ld/o/a0;->a(Ljava/lang/Class;)Ld/o/y;

    move-result-object p2

    :goto_0
    move-object v1, p2

    .line 631
    iget-object p1, p1, Ld/o/e0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/o/y;

    if-eqz p1, :cond_7

    .line 632
    invoke-virtual {p1}, Ld/o/y;->b()V

    .line 633
    :cond_7
    :goto_1
    check-cast v1, Ld/m/a/t;

    .line 634
    iput-object v1, p0, Ld/m/a/p;->C:Ld/m/a/t;

    goto :goto_2

    .line 635
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 636
    :cond_9
    new-instance p1, Ld/m/a/t;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ld/m/a/t;-><init>(Z)V

    iput-object p1, p0, Ld/m/a/p;->C:Ld/m/a/t;

    :goto_2
    return-void

    .line 637
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ld/m/a/p$e;Z)V
    .locals 2

    if-nez p2, :cond_3

    .line 349
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-nez v0, :cond_1

    .line 350
    iget-boolean p1, p0, Ld/m/a/p;->w:Z

    if-eqz p1, :cond_0

    .line 351
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :cond_1
    invoke-virtual {p0}, Ld/m/a/p;->i()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 354
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_3
    :goto_0
    iget-object v0, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    .line 357
    monitor-exit v0

    return-void

    .line 358
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_5
    iget-object p2, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {p0}, Ld/m/a/p;->m()V

    .line 361
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Ld/i/h/a;

    invoke-direct {v0, v1}, Ld/i/h/a;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 6
    check-cast v0, Ld/m/a/c$a;

    .line 7
    iget-object v0, v0, Ld/m/a/c$a;->B:Ld/m/a/c;

    invoke-virtual {v0, v6, v5, v2, v4}, Ld/m/a/c;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v6, v5, v2, v0}, Ld/m/a/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 10
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :goto_0
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    .line 12
    invoke-static {p1, v0}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Ld/m/a/p;->c:Ld/m/a/x;

    if-eqz v1, :cond_8

    const-string v2, "    "

    .line 14
    invoke-static {p1, v2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v3, v1, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    .line 17
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    iget-object v3, v1, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/a/v;

    .line 19
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 20
    iget-object v4, v4, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 21
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    .line 23
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object p2, v1, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    .line 25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    .line 26
    iget-object v3, v1, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 27
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    .line 28
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 30
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 32
    :cond_2
    iget-object p2, p0, Ld/m/a/p;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 33
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    .line 35
    iget-object v2, p0, Ld/m/a/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 36
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 37
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 39
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41
    :cond_3
    iget-object p2, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 43
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    .line 44
    iget-object v2, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/m/a/a;

    .line 45
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 46
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 48
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2}, Ld/m/a/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 50
    invoke-virtual {v2, v0, p3, v3}, Ld/m/a/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 51
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/m/a/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 54
    :try_start_0
    iget-object v0, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    .line 56
    iget-object v1, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m/a/p$e;

    .line 57
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 58
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 60
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 62
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 64
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 66
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Ld/m/a/p;->n:Ld/m/a/m;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 69
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 71
    iget-object p2, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_6

    .line 72
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 73
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget-object p2, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 75
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 76
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget p2, p0, Ld/m/a/p;->m:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 78
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-boolean p2, p0, Ld/m/a/p;->u:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 80
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget-boolean p2, p0, Ld/m/a/p;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 82
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-boolean p2, p0, Ld/m/a/p;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 84
    iget-boolean p2, p0, Ld/m/a/p;->t:Z

    if-eqz p2, :cond_7

    .line 85
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 86
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-boolean p1, p0, Ld/m/a/p;->t:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    const/4 p1, 0x0

    .line 89
    throw p1
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 366
    iget-object v3, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/m/a/p$g;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    .line 367
    iget-boolean v6, v3, Ld/m/a/p$g;->a:Z

    if-nez v6, :cond_1

    .line 368
    iget-object v6, v3, Ld/m/a/p$g;->b:Ld/m/a/a;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eqz p2, :cond_1

    .line 369
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 370
    iget-object v5, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 371
    iget-object v5, v3, Ld/m/a/p$g;->b:Ld/m/a/a;

    iget-object v6, v5, Ld/m/a/a;->r:Ld/m/a/p;

    iget-boolean v3, v3, Ld/m/a/p$g;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Ld/m/a/p;->a(Ld/m/a/a;ZZZ)V

    goto :goto_3

    .line 372
    :cond_1
    iget v6, v3, Ld/m/a/p$g;->c:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 373
    iget-object v6, v3, Ld/m/a/p$g;->b:Ld/m/a/a;

    .line 374
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Ld/m/a/a;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 375
    :cond_3
    iget-object v6, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    .line 376
    iget-boolean v6, v3, Ld/m/a/p$g;->a:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Ld/m/a/p$g;->b:Ld/m/a/a;

    .line 377
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eqz p2, :cond_4

    .line 378
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 379
    iget-object v5, v3, Ld/m/a/p$g;->b:Ld/m/a/a;

    iget-object v6, v5, Ld/m/a/a;->r:Ld/m/a/p;

    iget-boolean v3, v3, Ld/m/a/p$g;->a:Z

    invoke-virtual {v6, v5, v3, v1, v1}, Ld/m/a/p;->a(Ld/m/a/a;ZZZ)V

    goto :goto_3

    .line 380
    :cond_4
    invoke-virtual {v3}, Ld/m/a/p$g;->a()V

    :cond_5
    :goto_3
    add-int/2addr v2, v4

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 381
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/a;

    iget-boolean v12, v0, Ld/m/a/y;->p:Z

    .line 382
    iget-object v0, v7, Ld/m/a/p;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Ld/m/a/p;->A:Ljava/util/ArrayList;

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    :goto_0
    iget-object v0, v7, Ld/m/a/p;->A:Ljava/util/ArrayList;

    iget-object v1, v7, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v1}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 386
    iget-object v0, v7, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    move v1, v10

    const/4 v14, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v1, v11, :cond_12

    .line 387
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/m/a/a;

    .line 388
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_c

    .line 389
    iget-object v3, v7, Ld/m/a/p;->A:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 390
    :goto_2
    iget-object v15, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_b

    .line 391
    iget-object v15, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ld/m/a/y$a;

    .line 392
    iget v13, v15, Ld/m/a/y$a;->a:I

    if-eq v13, v6, :cond_a

    const/4 v6, 0x2

    const/16 v10, 0x9

    if-eq v13, v6, :cond_4

    if-eq v13, v4, :cond_2

    const/4 v6, 0x6

    if-eq v13, v6, :cond_2

    const/4 v6, 0x7

    if-eq v13, v6, :cond_a

    const/16 v6, 0x8

    if-eq v13, v6, :cond_1

    goto :goto_3

    .line 393
    :cond_1
    iget-object v6, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    new-instance v13, Ld/m/a/y$a;

    invoke-direct {v13, v10, v0}, Ld/m/a/y$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v5, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    .line 394
    iget-object v0, v15, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_3

    .line 395
    :cond_2
    iget-object v6, v15, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 396
    iget-object v6, v15, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v6, v0, :cond_3

    .line 397
    iget-object v0, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    new-instance v13, Ld/m/a/y$a;

    invoke-direct {v13, v10, v6}, Ld/m/a/y$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v5, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    :cond_3
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_7

    .line 398
    :cond_4
    iget-object v6, v15, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    .line 399
    iget v13, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 400
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v4, v17

    const/16 v17, 0x0

    :goto_4
    if-ltz v4, :cond_8

    .line 401
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Landroidx/fragment/app/Fragment;

    .line 402
    iget v9, v10, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v9, v13, :cond_7

    if-ne v10, v6, :cond_5

    move/from16 v18, v13

    const/16 v17, 0x1

    goto :goto_6

    :cond_5
    if-ne v10, v0, :cond_6

    .line 403
    iget-object v0, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    new-instance v9, Ld/m/a/y$a;

    move/from16 v18, v13

    const/16 v13, 0x9

    invoke-direct {v9, v13, v10}, Ld/m/a/y$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    move/from16 v18, v13

    const/16 v13, 0x9

    .line 404
    :goto_5
    new-instance v9, Ld/m/a/y$a;

    const/4 v13, 0x3

    invoke-direct {v9, v13, v10}, Ld/m/a/y$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 405
    iget v13, v15, Ld/m/a/y$a;->c:I

    iput v13, v9, Ld/m/a/y$a;->c:I

    .line 406
    iget v13, v15, Ld/m/a/y$a;->e:I

    iput v13, v9, Ld/m/a/y$a;->e:I

    .line 407
    iget v13, v15, Ld/m/a/y$a;->d:I

    iput v13, v9, Ld/m/a/y$a;->d:I

    .line 408
    iget v13, v15, Ld/m/a/y$a;->f:I

    iput v13, v9, Ld/m/a/y$a;->f:I

    .line 409
    iget-object v13, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 410
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    add-int/2addr v5, v9

    goto :goto_6

    :cond_7
    move/from16 v18, v13

    :goto_6
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v9, p2

    move/from16 v13, v18

    const/16 v10, 0x9

    goto :goto_4

    :cond_8
    if-eqz v17, :cond_9

    .line 411
    iget-object v4, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x1

    .line 412
    iput v9, v15, Ld/m/a/y$a;->a:I

    .line 413
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/4 v9, 0x1

    .line 414
    iget-object v4, v15, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v5, v9

    move-object/from16 v9, p2

    move/from16 v10, p3

    const/4 v4, 0x3

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v9, 0x1

    goto :goto_a

    :cond_c
    const/4 v9, 0x1

    .line 415
    iget-object v3, v7, Ld/m/a/p;->A:Ljava/util/ArrayList;

    .line 416
    iget-object v4, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v9

    :goto_8
    if-ltz v4, :cond_f

    .line 417
    iget-object v5, v2, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/m/a/y$a;

    .line 418
    iget v6, v5, Ld/m/a/y$a;->a:I

    const/4 v10, 0x3

    if-eq v6, v9, :cond_e

    if-eq v6, v10, :cond_d

    packed-switch v6, :pswitch_data_0

    goto :goto_9

    .line 419
    :pswitch_0
    iget-object v6, v5, Ld/m/a/y$a;->g:Ld/o/g$b;

    iput-object v6, v5, Ld/m/a/y$a;->h:Ld/o/g$b;

    goto :goto_9

    .line 420
    :pswitch_1
    iget-object v0, v5, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_9

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_9

    .line 421
    :cond_d
    :pswitch_3
    iget-object v5, v5, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 422
    :cond_e
    :pswitch_4
    iget-object v5, v5, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_f
    :goto_a
    if-nez v14, :cond_11

    .line 423
    iget-boolean v2, v2, Ld/m/a/y;->g:Z

    if-eqz v2, :cond_10

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v14, 0x1

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v9, p2

    move/from16 v10, p3

    goto/16 :goto_1

    :cond_12
    const/4 v9, 0x1

    .line 424
    iget-object v0, v7, Ld/m/a/p;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v12, :cond_13

    const/4 v5, 0x0

    .line 425
    iget-object v6, v7, Ld/m/a/p;->k:Ld/m/a/f0$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Ld/m/a/f0;->a(Ld/m/a/p;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/m/a/f0$a;)V

    :cond_13
    move/from16 v0, p3

    :goto_d
    const/4 v10, -0x1

    if-ge v0, v11, :cond_16

    .line 426
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m/a/a;

    move-object/from16 v13, p2

    .line 427
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 428
    invoke-virtual {v1, v10}, Ld/m/a/a;->a(I)V

    add-int/lit8 v2, v11, -0x1

    if-ne v0, v2, :cond_14

    const/4 v6, 0x1

    goto :goto_e

    :cond_14
    const/4 v6, 0x0

    .line 429
    :goto_e
    invoke-virtual {v1, v6}, Ld/m/a/a;->b(Z)V

    goto :goto_f

    .line 430
    :cond_15
    invoke-virtual {v1, v9}, Ld/m/a/a;->a(I)V

    .line 431
    invoke-virtual {v1}, Ld/m/a/a;->c()V

    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    move-object/from16 v13, p2

    if-eqz v12, :cond_23

    .line 432
    new-instance v0, Ld/f/c;

    invoke-direct {v0}, Ld/f/c;-><init>()V

    .line 433
    invoke-virtual {v7, v0}, Ld/m/a/p;->a(Ld/f/c;)V

    add-int/lit8 v1, v11, -0x1

    move/from16 v15, p3

    move v2, v11

    :goto_10
    if-lt v1, v15, :cond_20

    .line 434
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/m/a/a;

    .line 435
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    .line 436
    :goto_11
    iget-object v6, v3, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_18

    .line 437
    iget-object v6, v3, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/m/a/y$a;

    .line 438
    invoke-static {v6}, Ld/m/a/a;->b(Ld/m/a/y$a;)Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_12

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_18
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_19

    add-int/lit8 v5, v1, 0x1

    .line 439
    invoke-virtual {v3, v8, v5, v11}, Ld/m/a/a;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_19

    const/4 v6, 0x1

    goto :goto_13

    :cond_19
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_1f

    .line 440
    iget-object v5, v7, Ld/m/a/p;->B:Ljava/util/ArrayList;

    if-nez v5, :cond_1a

    .line 441
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v7, Ld/m/a/p;->B:Ljava/util/ArrayList;

    .line 442
    :cond_1a
    new-instance v5, Ld/m/a/p$g;

    invoke-direct {v5, v3, v4}, Ld/m/a/p$g;-><init>(Ld/m/a/a;Z)V

    .line 443
    iget-object v6, v7, Ld/m/a/p;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 444
    :goto_14
    iget-object v10, v3, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_1c

    .line 445
    iget-object v10, v3, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ld/m/a/y$a;

    .line 446
    invoke-static {v10}, Ld/m/a/a;->b(Ld/m/a/y$a;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 447
    iget-object v10, v10, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v10, v5}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$f;)V

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1c
    if-eqz v4, :cond_1d

    .line 448
    invoke-virtual {v3}, Ld/m/a/a;->c()V

    const/4 v10, 0x0

    goto :goto_15

    :cond_1d
    const/4 v10, 0x0

    .line 449
    invoke-virtual {v3, v10}, Ld/m/a/a;->b(Z)V

    :goto_15
    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 450
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    invoke-virtual {v8, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 452
    :cond_1e
    invoke-virtual {v7, v0}, Ld/m/a/p;->a(Ld/f/c;)V

    goto :goto_16

    :cond_1f
    const/4 v10, 0x0

    :goto_16
    add-int/lit8 v1, v1, -0x1

    const/4 v10, -0x1

    goto/16 :goto_10

    :cond_20
    const/4 v10, 0x0

    .line 453
    iget v1, v0, Ld/f/c;->z:I

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_22

    .line 454
    iget-object v4, v0, Ld/f/c;->y:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 455
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 456
    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v5, :cond_21

    .line 457
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v5

    .line 458
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v4, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    .line 459
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_22
    move v4, v2

    goto :goto_18

    :cond_23
    move/from16 v15, p3

    const/4 v10, 0x0

    move v4, v11

    :goto_18
    if-eq v4, v15, :cond_24

    if-eqz v12, :cond_24

    const/4 v5, 0x1

    .line 460
    iget-object v6, v7, Ld/m/a/p;->k:Ld/m/a/f0$a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v6}, Ld/m/a/f0;->a(Ld/m/a/p;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLd/m/a/f0$a;)V

    .line 461
    iget v0, v7, Ld/m/a/p;->m:I

    invoke-virtual {v7, v0, v9}, Ld/m/a/p;->a(IZ)V

    :cond_24
    :goto_19
    if-ge v15, v11, :cond_28

    .line 462
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/a;

    .line 463
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 464
    iget v1, v0, Ld/m/a/a;->t:I

    if-ltz v1, :cond_25

    const/4 v1, -0x1

    .line 465
    iput v1, v0, Ld/m/a/a;->t:I

    goto :goto_1a

    :cond_25
    const/4 v1, -0x1

    .line 466
    :goto_1a
    iget-object v2, v0, Ld/m/a/y;->q:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    .line 467
    :goto_1b
    iget-object v3, v0, Ld/m/a/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 468
    iget-object v3, v0, Ld/m/a/y;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_26
    const/4 v2, 0x0

    .line 469
    iput-object v2, v0, Ld/m/a/y;->q:Ljava/util/ArrayList;

    goto :goto_1c

    :cond_27
    const/4 v2, 0x0

    :goto_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_28
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    .line 645
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 649
    iget v0, p0, Ld/m/a/p;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 650
    iget-object v3, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v3}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    .line 651
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_2

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 653
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_0

    .line 654
    :cond_3
    iget-object p1, p0, Ld/m/a/p;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 655
    :goto_1
    iget-object p1, p0, Ld/m/a/p;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 656
    iget-object p1, p0, Ld/m/a/p;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    .line 657
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 658
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 659
    :cond_6
    iput-object v0, p0, Ld/m/a/p;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .line 660
    iget v0, p0, Ld/m/a/p;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 661
    :cond_0
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 662
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 494
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 495
    :cond_1
    iget-object p4, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/4 v0, -0x1

    if-nez p3, :cond_3

    if-ltz p4, :cond_b

    .line 497
    :cond_3
    iget-object v3, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_6

    .line 498
    iget-object v4, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/a/a;

    if-eqz p3, :cond_4

    .line 499
    iget-object v5, v4, Ld/m/a/y;->i:Ljava/lang/String;

    .line 500
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    if-ltz p4, :cond_5

    .line 501
    iget v4, v4, Ld/m/a/a;->t:I

    if-ne p4, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-gez v3, :cond_7

    return v1

    :cond_7
    and-int/2addr p5, v2

    if-eqz p5, :cond_a

    :cond_8
    :goto_2
    add-int/2addr v3, v0

    if-ltz v3, :cond_a

    .line 502
    iget-object p5, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ld/m/a/a;

    if-eqz p3, :cond_9

    .line 503
    iget-object v4, p5, Ld/m/a/y;->i:Ljava/lang/String;

    .line 504
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_9
    if-ltz p4, :cond_a

    iget p5, p5, Ld/m/a/a;->t:I

    if-ne p4, p5, :cond_a

    goto :goto_2

    :cond_a
    move v0, v3

    .line 505
    :cond_b
    iget-object p3, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v0, p3, :cond_c

    return v1

    .line 506
    :cond_c
    iget-object p3, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_3
    if-le p3, v0, :cond_d

    .line 507
    iget-object p4, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_d
    :goto_4
    return v2
.end method

.method public b(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 9
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    .line 10
    iget-object v1, v0, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 11
    iget-object v2, v0, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 12
    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, v0, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m/a/v;

    if-eqz v1, :cond_2

    .line 14
    iget-object v2, v1, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 15
    iget v1, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 16
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    .line 17
    iget-object v2, v0, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 18
    iget-object v3, v0, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 19
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 20
    iget-object v0, v0, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/m/a/v;

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, v2, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 22
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    :goto_0
    return-object v1

    .line 23
    :cond_4
    throw v1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Ld/m/a/p;->u:Z

    .line 35
    iput-boolean v0, p0, Ld/m/a/p;->v:Z

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Ld/m/a/p;->a(I)V

    return-void
.end method

.method public b(Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld/m/a/p;->i()Z

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v2}, Ld/m/a/p;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ignoring addRetainedFragment as the state is already saved"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Ld/m/a/p;->C:Ld/m/a/t;

    .line 5
    iget-object v3, v0, Ld/m/a/t;->c:Ljava/util/HashMap;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, v0, Ld/m/a/t;->c:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 7
    invoke-static {v2}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 37
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 4

    .line 39
    iget v0, p0, Ld/m/a/p;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 40
    :cond_0
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 4

    .line 42
    iget v0, p0, Ld/m/a/p;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 43
    :cond_0
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public final b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return v2

    .line 27
    :cond_0
    iget-object v1, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    iget-object v4, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/a/p$e;

    invoke-interface {v4, p1, p2}, Ld/m/a/p$e;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object p1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 31
    iget-object p1, p1, Ld/m/a/m;->z:Landroid/os/Handler;

    .line 32
    iget-object p2, p0, Ld/m/a/p;->D:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 10
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    .line 11
    iget-object v0, v0, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/m/a/v;

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, v1, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 13
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Ld/m/a/p;->w:Z

    .line 46
    invoke-virtual {p0, v0}, Ld/m/a/p;->d(Z)Z

    .line 47
    invoke-virtual {p0}, Ld/m/a/p;->f()V

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p0, v0}, Ld/m/a/p;->a(I)V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 50
    iput-object v0, p0, Ld/m/a/p;->o:Ld/m/a/i;

    .line 51
    iput-object v0, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    .line 52
    iget-object v1, p0, Ld/m/a/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Ld/m/a/p;->h:Ld/a/b;

    invoke-virtual {v1}, Ld/a/b;->b()V

    .line 54
    iput-object v0, p0, Ld/m/a/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    :cond_0
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 5
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v1, p1}, Ld/m/a/x;->a(Landroidx/fragment/app/Fragment;)V

    .line 7
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Ld/m/a/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Ld/m/a/p;->t:Z

    :cond_2
    return-void
.end method

.method public final c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 35
    invoke-virtual {p0, p1, p2}, Ld/m/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/m/a/a;

    iget-boolean v3, v3, Ld/m/a/y;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Ld/m/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 39
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 40
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/m/a/a;

    iget-boolean v3, v3, Ld/m/a/y;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Ld/m/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 43
    invoke-virtual {p0, p1, p2, v2, v0}, Ld/m/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 44
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Z)V
    .locals 2

    .line 14
    iget-boolean v0, p0, Ld/m/a/p;->b:Z

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-nez v0, :cond_1

    .line 16
    iget-boolean p1, p0, Ld/m/a/p;->w:Z

    if-eqz p1, :cond_0

    .line 17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 20
    iget-object v1, v1, Ld/m/a/m;->z:Landroid/os/Handler;

    .line 21
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 22
    invoke-virtual {p0}, Ld/m/a/p;->i()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    :goto_0
    iget-object p1, p0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Ld/m/a/p;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0, v0, v0}, Ld/m/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iput-boolean p1, p0, Ld/m/a/p;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Ld/m/a/p;->b:Z

    .line 30
    throw v0

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 2

    .line 16
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/i/e/a;

    .line 3
    invoke-virtual {v2}, Ld/i/e/a;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5
    invoke-virtual {p0, p1}, Ld/m/a/p;->e(Landroidx/fragment/app/Fragment;)V

    .line 6
    iget-object v0, p0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(Z)Z
    .locals 3

    .line 7
    invoke-virtual {p0, p1}, Ld/m/a/p;->c(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Ld/m/a/p;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iput-boolean p1, p0, Ld/m/a/p;->b:Z

    .line 10
    :try_start_0
    iget-object v0, p0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Ld/m/a/p;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {p0}, Ld/m/a/p;->a()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ld/m/a/p;->a()V

    .line 12
    throw p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ld/m/a/p;->o()V

    .line 14
    invoke-virtual {p0}, Ld/m/a/p;->e()V

    .line 15
    iget-object p1, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {p1}, Ld/m/a/x;->a()V

    return v0
.end method

.method public final e()V
    .locals 1

    .line 8
    iget-boolean v0, p0, Ld/m/a/p;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Ld/m/a/p;->x:Z

    .line 10
    invoke-virtual {p0}, Ld/m/a/p;->n()V

    :cond_0
    return-void
.end method

.method public final e(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 2
    iget-object v0, p0, Ld/m/a/p;->l:Ld/m/a/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ld/m/a/o;->g(Landroidx/fragment/app/Fragment;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 4
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 5
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Ld/m/a/l0;

    .line 6
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Ld/o/q;

    invoke-virtual {v2, v0}, Ld/o/q;->a(Ljava/lang/Object;)V

    .line 7
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method public final f()V
    .locals 3

    .line 10
    iget-object v0, p0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Ld/m/a/p;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 12
    invoke-virtual {p0, v1}, Ld/m/a/p;->d(Landroidx/fragment/app/Fragment;)V

    .line 13
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 4
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_3

    .line 5
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0, p1}, Ld/m/a/x;->b(Landroidx/fragment/app/Fragment;)V

    .line 7
    invoke-virtual {p0, p1}, Ld/m/a/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v1, p0, Ld/m/a/p;->t:Z

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Ld/m/a/p;->r(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/p$g;

    invoke-virtual {v0}, Ld/m/a/p$g;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/m/a/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method public final h(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Ld/m/a/p;->o:Ld/m/a/i;

    invoke-virtual {v0}, Ld/m/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ld/m/a/p;->o:Ld/m/a/i;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Ld/m/a/i;->a(I)Landroid/view/View;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public h()Ld/m/a/l;
    .locals 1

    .line 6
    iget-object v0, p0, Ld/m/a/p;->r:Ld/m/a/l;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    invoke-virtual {v0}, Ld/m/a/p;->h()Ld/m/a/l;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    iget-object v0, p0, Ld/m/a/p;->s:Ld/m/a/l;

    return-object v0
.end method

.method public i(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 5
    invoke-virtual {p0, p1}, Ld/m/a/p;->r(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Ld/m/a/p;->u:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ld/m/a/p;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld/m/a/p;->u:Z

    .line 3
    iput-boolean v0, p0, Ld/m/a/p;->v:Z

    .line 4
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final j(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    .line 6
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_5

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Ld/m/a/p;

    .line 7
    iget-object v0, p1, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p1, v4}, Ld/m/a/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public k()Z
    .locals 8

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Ld/m/a/p;->d(Z)Z

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ld/m/a/p;->c(Z)V

    .line 7
    iget-object v1, p0, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/m/a/p;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ld/m/a/p;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v3, p0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    iget-object v4, p0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ld/m/a/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iput-boolean v0, p0, Ld/m/a/p;->b:Z

    .line 12
    :try_start_0
    iget-object v0, p0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Ld/m/a/p;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Ld/m/a/p;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ld/m/a/p;->a()V

    .line 14
    throw v0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ld/m/a/p;->o()V

    .line 16
    invoke-virtual {p0}, Ld/m/a/p;->e()V

    .line 17
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->a()V

    move v0, v1

    :goto_1
    return v0
.end method

.method public k(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    .line 2
    iget-object v2, v1, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p0, p1}, Ld/m/a/p;->k(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Landroid/os/Parcelable;
    .locals 12

    .line 18
    invoke-virtual {p0}, Ld/m/a/p;->g()V

    .line 19
    invoke-virtual {p0}, Ld/m/a/p;->f()V

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Ld/m/a/p;->d(Z)Z

    .line 21
    iput-boolean v0, p0, Ld/m/a/p;->u:Z

    .line 22
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    iget-object v0, v0, Ld/m/a/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ": "

    const-string v5, "FragmentManager"

    const/4 v6, 0x2

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/m/a/v;

    if-eqz v3, :cond_0

    .line 25
    iget-object v7, v3, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 26
    new-instance v8, Ld/m/a/u;

    iget-object v9, v3, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {v8, v9}, Ld/m/a/u;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 27
    iget-object v9, v3, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget v9, v9, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_2

    iget-object v9, v8, Ld/m/a/u;->J:Landroid/os/Bundle;

    if-nez v9, :cond_2

    .line 28
    invoke-virtual {v3}, Ld/m/a/v;->a()Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v8, Ld/m/a/u;->J:Landroid/os/Bundle;

    .line 29
    iget-object v10, v3, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v10, :cond_3

    if-nez v9, :cond_1

    .line 30
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v8, Ld/m/a/u;->J:Landroid/os/Bundle;

    .line 31
    :cond_1
    iget-object v9, v8, Ld/m/a/u;->J:Landroid/os/Bundle;

    iget-object v10, v3, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    const-string v11, "android:target_state"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v3, v3, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v3, :cond_3

    .line 33
    iget-object v9, v8, Ld/m/a/u;->J:Landroid/os/Bundle;

    const-string v10, "android:target_req_state"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 34
    :cond_2
    iget-object v3, v3, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v3, v8, Ld/m/a/u;->J:Landroid/os/Bundle;

    .line 35
    :cond_3
    :goto_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved state of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Ld/m/a/u;->J:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 38
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "saveAllState: no fragments!"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1

    .line 40
    :cond_6
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    iget-object v3, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 43
    new-array v1, v3, [Ld/m/a/b;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_8

    .line 44
    new-instance v8, Ld/m/a/b;

    iget-object v9, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld/m/a/a;

    invoke-direct {v8, v9}, Ld/m/a/b;-><init>(Ld/m/a/a;)V

    aput-object v8, v1, v7

    .line 45
    invoke-static {v6}, Ld/m/a/p;->c(I)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "saveAllState: adding back stack #"

    .line 46
    invoke-static {v8, v7, v4}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 49
    :cond_8
    new-instance v3, Ld/m/a/s;

    invoke-direct {v3}, Ld/m/a/s;-><init>()V

    .line 50
    iput-object v2, v3, Ld/m/a/s;->x:Ljava/util/ArrayList;

    .line 51
    iput-object v0, v3, Ld/m/a/s;->y:Ljava/util/ArrayList;

    .line 52
    iput-object v1, v3, Ld/m/a/s;->z:[Ld/m/a/b;

    .line 53
    iget-object v0, p0, Ld/m/a/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Ld/m/a/s;->A:I

    .line 54
    iget-object v0, p0, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, v3, Ld/m/a/s;->B:Ljava/lang/String;

    :cond_9
    return-object v3

    .line 56
    :cond_a
    throw v1
.end method

.method public l(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/m/a/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ld/m/a/v;

    iget-object v1, p0, Ld/m/a/p;->l:Ld/m/a/o;

    invoke-direct {v0, v1, p1}, Ld/m/a/v;-><init>(Ld/m/a/o;Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-object v1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 4
    iget-object v1, v1, Ld/m/a/m;->y:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/m/a/v;->a(Ljava/lang/ClassLoader;)V

    .line 6
    iget-object v1, p0, Ld/m/a/p;->c:Ld/m/a/x;

    .line 7
    iget-object v1, v1, Ld/m/a/x;->b:Ljava/util/HashMap;

    .line 8
    iget-object v2, v0, Ld/m/a/v;->b:Landroidx/fragment/app/Fragment;

    .line 9
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v1, :cond_2

    .line 11
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Ld/m/a/p;->b(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Ld/m/a/p;->p(Landroidx/fragment/app/Fragment;)V

    :goto_0
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 15
    :cond_2
    iget v1, p0, Ld/m/a/p;->m:I

    .line 16
    iput v1, v0, Ld/m/a/v;->c:I

    const/4 v0, 0x2

    .line 17
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added fragment to active set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public m()V
    .locals 5

    .line 58
    iget-object v0, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld/m/a/p;->B:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v4, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 62
    :cond_2
    iget-object v1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 63
    iget-object v1, v1, Ld/m/a/m;->z:Landroid/os/Handler;

    .line 64
    iget-object v2, p0, Ld/m/a/p;->D:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object v1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 66
    iget-object v1, v1, Ld/m/a/m;->z:Landroid/os/Handler;

    .line 67
    iget-object v2, p0, Ld/m/a/p;->D:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    invoke-virtual {p0}, Ld/m/a/p;->o()V

    .line 69
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/m/a/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Ld/m/a/p;->m:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 4
    :cond_1
    iget v0, p0, Ld/m/a/p;->m:I

    invoke-virtual {p0, p1, v0}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    .line 5
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 6
    iget-object v3, p0, Ld/m/a/p;->c:Ld/m/a/x;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 7
    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, v3, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    .line 9
    iget-object v6, v3, Ld/m/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 10
    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v7, v5, :cond_3

    iget-object v7, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v7, :cond_3

    move-object v4, v6

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 11
    iget-object v0, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 12
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 14
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_5

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 16
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 17
    :cond_5
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 18
    iget v0, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_6

    .line 19
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20
    :cond_6
    iput v3, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 21
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 22
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 23
    iget-object v0, v0, Ld/m/a/m;->y:Landroid/content/Context;

    .line 24
    iget-object v3, p0, Ld/m/a/p;->o:Ld/m/a/i;

    .line 25
    invoke-static {v0, v3, p1, v1}, Ld/b/a/r;->a(Landroid/content/Context;Ld/m/a/i;Landroidx/fragment/app/Fragment;Z)Ld/m/a/g;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 26
    iget-object v3, v0, Ld/m/a/g;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_7

    .line 27
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 28
    :cond_7
    iget-object v3, v0, Ld/m/a/g;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 29
    iget-object v0, v0, Ld/m/a/g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 30
    :cond_8
    throw v4

    .line 31
    :cond_9
    :goto_1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_11

    .line 32
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 33
    iget-object v0, p0, Ld/m/a/p;->n:Ld/m/a/m;

    .line 34
    iget-object v0, v0, Ld/m/a/m;->y:Landroid/content/Context;

    .line 35
    iget-object v3, p0, Ld/m/a/p;->o:Ld/m/a/i;

    iget-boolean v4, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    xor-int/2addr v4, v1

    .line 36
    invoke-static {v0, v3, p1, v4}, Ld/b/a/r;->a(Landroid/content/Context;Ld/m/a/i;Landroidx/fragment/app/Fragment;Z)Ld/m/a/g;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 37
    iget-object v3, v0, Ld/m/a/g;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_c

    .line 38
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 39
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_b

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 41
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_2

    .line 42
    :cond_a
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 43
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 44
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 45
    iget-object v5, v0, Ld/m/a/g;->b:Landroid/animation/Animator;

    new-instance v6, Ld/m/a/q;

    invoke-direct {v6, p0, v3, v4, p1}, Ld/m/a/q;-><init>(Ld/m/a/p;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 46
    :cond_b
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_2
    iget-object v0, v0, Ld/m/a/g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    .line 48
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Ld/m/a/g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    iget-object v0, v0, Ld/m/a/g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 50
    :cond_d
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x8

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    .line 51
    :goto_3
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 54
    :cond_f
    :goto_4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Ld/m/a/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 55
    iput-boolean v1, p0, Ld/m/a/p;->t:Z

    .line 56
    :cond_10
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 57
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    :cond_11
    return-void
.end method

.method public final n()V
    .locals 2

    .line 6
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Ld/m/a/p;->n(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Ld/m/a/p;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ld/m/a/p;->x:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 5
    iget v0, p0, Ld/m/a/p;->m:I

    invoke-virtual {p0, p1, v0}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;I)V

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld/m/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ld/m/a/p;->h:Ld/a/b;

    .line 4
    iput-boolean v2, v1, Ld/a/b;->a:Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Ld/m/a/p;->h:Ld/a/b;

    .line 8
    iget-object v1, p0, Ld/m/a/p;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    .line 9
    iget-object v1, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    .line 10
    invoke-virtual {p0, v1}, Ld/m/a/p;->k(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 11
    :goto_1
    iput-boolean v2, v0, Ld/a/b;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public o(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    .line 13
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 16
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 17
    :cond_1
    iget-object v0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0, p1}, Ld/m/a/x;->b(Landroidx/fragment/app/Fragment;)V

    .line 18
    invoke-virtual {p0, p1}, Ld/m/a/p;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iput-boolean v1, p0, Ld/m/a/p;->t:Z

    .line 20
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 21
    invoke-virtual {p0, p1}, Ld/m/a/p;->r(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public p(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld/m/a/p;->i()Z

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v2}, Ld/m/a/p;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Ld/m/a/p;->C:Ld/m/a/t;

    .line 5
    iget-object v0, v0, Ld/m/a/t;->c:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 6
    invoke-static {v2}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public q(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ld/m/a/p;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Ld/m/a/m;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    .line 4
    iput-object p1, p0, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {p0, v0}, Ld/m/a/p;->g(Landroidx/fragment/app/Fragment;)V

    .line 6
    iget-object p1, p0, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Ld/m/a/p;->g(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final r(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ld/m/a/p;->h(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 4
    :cond_0
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    :cond_1
    return-void
.end method

.method public s(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Ld/m/a/p;->p:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Ld/m/a/p;->n:Ld/m/a/m;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
