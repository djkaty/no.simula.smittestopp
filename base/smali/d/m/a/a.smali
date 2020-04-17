.class public final Ld/m/a/a;
.super Ld/m/a/y;
.source "SourceFile"

# interfaces
.implements Ld/m/a/p$e;


# instance fields
.field public final r:Ld/m/a/p;

.field public s:Z

.field public t:I


# direct methods
.method public constructor <init>(Ld/m/a/p;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ld/m/a/p;->h()Ld/m/a/l;

    move-result-object v0

    iget-object v1, p1, Ld/m/a/p;->n:Ld/m/a/m;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Ld/m/a/m;->y:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v0, v1}, Ld/m/a/y;-><init>(Ld/m/a/l;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ld/m/a/a;->t:I

    .line 6
    iput-object p1, p0, Ld/m/a/a;->r:Ld/m/a/p;

    return-void
.end method

.method public static b(Ld/m/a/y$a;)Z
    .locals 1

    .line 36
    iget-object p0, p0, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    .line 37
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

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
.method public a()I
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Ld/m/a/a;->a(Z)I

    move-result v0

    return v0
.end method

.method public a(Z)I
    .locals 3

    .line 67
    iget-boolean v0, p0, Ld/m/a/a;->s:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 68
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ld/i/h/a;

    invoke-direct {v0, v2}, Ld/i/h/a;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 72
    invoke-virtual {p0, v0, v2, v1}, Ld/m/a/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 73
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 74
    :cond_0
    iput-boolean v1, p0, Ld/m/a/a;->s:Z

    .line 75
    iget-boolean v0, p0, Ld/m/a/y;->g:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Ld/m/a/a;->r:Ld/m/a/p;

    .line 77
    iget-object v0, v0, Ld/m/a/p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 78
    iput v0, p0, Ld/m/a/a;->t:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 79
    iput v0, p0, Ld/m/a/a;->t:I

    .line 80
    :goto_0
    iget-object v0, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v0, p0, p1}, Ld/m/a/p;->a(Ld/m/a/p$e;Z)V

    .line 81
    iget p1, p0, Ld/m/a/a;->t:I

    return p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/fragment/app/Fragment;)Ld/m/a/y;
    .locals 2

    .line 48
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/m/a/a;->r:Ld/m/a/p;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ld/m/a/y;->a(Landroidx/fragment/app/Fragment;)Ld/m/a/y;

    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;Ld/o/g$b;)Ld/m/a/y;
    .locals 2

    .line 52
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    iget-object v1, p0, Ld/m/a/a;->r:Ld/m/a/p;

    if-ne v0, v1, :cond_1

    .line 53
    sget-object v0, Ld/o/g$b;->CREATED:Ld/o/g$b;

    invoke-virtual {p2, v0}, Ld/o/g$b;->isAtLeast(Ld/o/g$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-super {p0, p1, p2}, Ld/m/a/y;->a(Landroidx/fragment/app/Fragment;Ld/o/g$b;)Ld/m/a/y;

    return-object p0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set maximum Lifecycle below "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Ld/o/g$b;->CREATED:Ld/o/g$b;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)V
    .locals 7

    .line 57
    iget-boolean v0, p0, Ld/m/a/y;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 58
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    iget-object v1, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 61
    iget-object v4, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/a/y$a;

    .line 62
    iget-object v5, v4, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 63
    iget v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    add-int/2addr v6, p1

    iput v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 64
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Bump nesting of "

    .line 65
    invoke-static {v5}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Ld/m/a/y;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 47
    iget-object p1, p0, Ld/m/a/a;->r:Ld/m/a/p;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ld/m/a/y;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Ld/m/a/a;->t:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Ld/m/a/a;->s:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4
    iget v0, p0, Ld/m/a/y;->f:I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Ld/m/a/y;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget v0, p0, Ld/m/a/y;->b:I

    if-nez v0, :cond_1

    iget v0, p0, Ld/m/a/y;->c:I

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Ld/m/a/y;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 10
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Ld/m/a/y;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    :cond_2
    iget v0, p0, Ld/m/a/y;->d:I

    if-nez v0, :cond_3

    iget v0, p0, Ld/m/a/y;->e:I

    if-eqz v0, :cond_4

    .line 13
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget v0, p0, Ld/m/a/y;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 15
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget v0, p0, Ld/m/a/y;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    :cond_4
    iget v0, p0, Ld/m/a/y;->j:I

    if-nez v0, :cond_5

    iget-object v0, p0, Ld/m/a/y;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 18
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Ld/m/a/y;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 20
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Ld/m/a/y;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 22
    :cond_6
    iget v0, p0, Ld/m/a/y;->l:I

    if-nez v0, :cond_7

    iget-object v0, p0, Ld/m/a/y;->m:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 23
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget v0, p0, Ld/m/a/y;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 25
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Ld/m/a/y;->m:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 27
    :cond_8
    iget-object v0, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 28
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    .line 30
    iget-object v2, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/m/a/y$a;

    .line 31
    iget v3, v2, Ld/m/a/y$a;->a:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "cmd="

    .line 32
    invoke-static {v3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Ld/m/a/y$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    .line 33
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 34
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 35
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 36
    iget v3, v2, Ld/m/a/y$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Ld/m/a/y$a;->d:I

    if-eqz v3, :cond_a

    .line 37
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    iget v3, v2, Ld/m/a/y$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 39
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget v3, v2, Ld/m/a/y$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    :cond_a
    iget v3, v2, Ld/m/a/y$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Ld/m/a/y$a;->f:I

    if-eqz v3, :cond_c

    .line 42
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    iget v3, v2, Ld/m/a/y$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 44
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    iget v2, v2, Ld/m/a/y$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/ArrayList;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld/m/a/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    .line 92
    :cond_0
    iget-object v1, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    .line 93
    iget-object v4, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/a/y$a;

    .line 94
    iget-object v4, v4, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_5

    .line 95
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/m/a/a;

    .line 96
    iget-object v6, v5, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 97
    iget-object v8, v5, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/m/a/y$a;

    .line 98
    iget-object v8, v8, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_2

    iget v8, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
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

    const/4 v0, 0x2

    .line 83
    invoke-static {v0}, Ld/m/a/p;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 86
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-boolean p1, p0, Ld/m/a/y;->g:Z

    if-eqz p1, :cond_2

    .line 88
    iget-object p1, p0, Ld/m/a/a;->r:Ld/m/a/p;

    .line 89
    iget-object p2, p1, Ld/m/a/p;->d:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Ld/m/a/p;->d:Ljava/util/ArrayList;

    .line 91
    :cond_1
    iget-object p1, p1, Ld/m/a/p;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroidx/fragment/app/Fragment;)Ld/m/a/y;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Ld/m/a/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld/m/a/a;->r:Ld/m/a/p;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ld/m/a/y;->b(Landroidx/fragment/app/Fragment;)Ld/m/a/y;

    return-object p0
.end method

.method public b()V
    .locals 4

    .line 39
    iget-boolean v0, p0, Ld/m/a/y;->g:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Ld/m/a/y;->h:Z

    .line 41
    iget-object v0, p0, Ld/m/a/a;->r:Ld/m/a/p;

    .line 42
    iget-object v1, v0, Ld/m/a/p;->n:Ld/m/a/m;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ld/m/a/p;->w:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Ld/m/a/p;->c(Z)V

    .line 44
    iget-object v2, v0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    iget-object v3, v0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    invoke-interface {p0, v2, v3}, Ld/m/a/p$e;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    iput-boolean v1, v0, Ld/m/a/p;->b:Z

    .line 46
    :try_start_0
    iget-object v1, v0, Ld/m/a/p;->y:Ljava/util/ArrayList;

    iget-object v2, v0, Ld/m/a/p;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ld/m/a/p;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v0}, Ld/m/a/p;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ld/m/a/p;->a()V

    .line 48
    throw v1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ld/m/a/p;->o()V

    .line 50
    invoke-virtual {v0}, Ld/m/a/p;->e()V

    .line 51
    iget-object v0, v0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {v0}, Ld/m/a/x;->a()V

    :cond_2
    :goto_1
    return-void

    .line 52
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Z)V
    .locals 8

    .line 8
    iget-object v0, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 9
    iget-object v2, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/m/a/y$a;

    .line 10
    iget-object v3, v2, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_3

    .line 11
    iget v4, p0, Ld/m/a/y;->f:I

    const/16 v5, 0x2002

    const/16 v6, 0x1001

    const/16 v7, 0x1003

    if-eq v4, v6, :cond_2

    if-eq v4, v7, :cond_1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/16 v5, 0x1001

    goto :goto_1

    :cond_1
    const/16 v5, 0x1003

    :cond_2
    :goto_1
    invoke-virtual {v3, v5}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 12
    :cond_3
    iget v4, v2, Ld/m/a/y$a;->a:I

    packed-switch v4, :pswitch_data_0

    .line 13
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown cmd: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Ld/m/a/y$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :pswitch_1
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    iget-object v5, v2, Ld/m/a/y$a;->g:Ld/o/g$b;

    invoke-virtual {v4, v3, v5}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Ld/o/g$b;)V

    goto :goto_2

    .line 15
    :pswitch_2
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3}, Ld/m/a/p;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 16
    :pswitch_3
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ld/m/a/p;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 17
    :pswitch_4
    iget v4, v2, Ld/m/a/y$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 18
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3, v1}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 19
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3}, Ld/m/a/p;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 20
    :pswitch_5
    iget v4, v2, Ld/m/a/y$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 21
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3}, Ld/m/a/p;->c(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 22
    :pswitch_6
    iget v4, v2, Ld/m/a/y$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 23
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3, v1}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 24
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3}, Ld/m/a/p;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 25
    :pswitch_7
    iget v4, v2, Ld/m/a/y$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 26
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3}, Ld/m/a/p;->s(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 27
    :pswitch_8
    iget v4, v2, Ld/m/a/y$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 28
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 29
    :pswitch_9
    iget v4, v2, Ld/m/a/y$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 30
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3, v1}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 31
    iget-object v4, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v4, v3}, Ld/m/a/p;->o(Landroidx/fragment/app/Fragment;)V

    .line 32
    :goto_2
    iget-boolean v4, p0, Ld/m/a/y;->p:Z

    if-nez v4, :cond_4

    iget v2, v2, Ld/m/a/y$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    if-eqz v3, :cond_4

    .line 33
    iget-object v2, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v2, v3}, Ld/m/a/p;->m(Landroidx/fragment/app/Fragment;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 34
    :cond_5
    iget-boolean v0, p0, Ld/m/a/y;->p:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 35
    iget-object p1, p0, Ld/m/a/a;->r:Ld/m/a/p;

    iget v0, p1, Ld/m/a/p;->m:I

    invoke-virtual {p1, v0, v1}, Ld/m/a/p;->a(IZ)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(I)Z
    .locals 4

    .line 5
    iget-object v0, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    iget-object v3, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/m/a/y$a;

    .line 7
    iget-object v3, v3, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public c()V
    .locals 8

    .line 1
    iget-object v0, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 2
    iget-object v4, p0, Ld/m/a/y;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/m/a/y$a;

    .line 3
    iget-object v5, v4, Ld/m/a/y$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 4
    iget v6, p0, Ld/m/a/y;->f:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 5
    :cond_0
    iget v6, v4, Ld/m/a/y$a;->a:I

    packed-switch v6, :pswitch_data_0

    .line 6
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cmd: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Ld/m/a/y$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_1
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    iget-object v7, v4, Ld/m/a/y$a;->h:Ld/o/g$b;

    invoke-virtual {v6, v5, v7}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Ld/o/g$b;)V

    goto :goto_1

    .line 8
    :pswitch_2
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ld/m/a/p;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 9
    :pswitch_3
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5}, Ld/m/a/p;->q(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 10
    :pswitch_4
    iget v6, v4, Ld/m/a/y$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 11
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5, v1}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 12
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5}, Ld/m/a/p;->c(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 13
    :pswitch_5
    iget v6, v4, Ld/m/a/y$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 14
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5}, Ld/m/a/p;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 15
    :pswitch_6
    iget v6, v4, Ld/m/a/y$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 16
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5, v1}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 17
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5}, Ld/m/a/p;->s(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 18
    :pswitch_7
    iget v6, v4, Ld/m/a/y$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 19
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5}, Ld/m/a/p;->i(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 20
    :pswitch_8
    iget v6, v4, Ld/m/a/y$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 21
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5}, Ld/m/a/p;->o(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 22
    :pswitch_9
    iget v6, v4, Ld/m/a/y$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 23
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5, v1}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 24
    iget-object v6, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v6, v5}, Ld/m/a/p;->a(Landroidx/fragment/app/Fragment;)V

    .line 25
    :goto_1
    iget-boolean v6, p0, Ld/m/a/y;->p:Z

    if-nez v6, :cond_1

    iget v4, v4, Ld/m/a/y$a;->a:I

    if-eq v4, v3, :cond_1

    if-eqz v5, :cond_1

    .line 26
    iget-object v3, p0, Ld/m/a/a;->r:Ld/m/a/p;

    invoke-virtual {v3, v5}, Ld/m/a/p;->m(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 27
    :cond_2
    iget-boolean v0, p0, Ld/m/a/y;->p:Z

    if-nez v0, :cond_3

    .line 28
    iget-object v0, p0, Ld/m/a/a;->r:Ld/m/a/p;

    iget v1, v0, Ld/m/a/p;->m:I

    invoke-virtual {v0, v1, v3}, Ld/m/a/p;->a(IZ)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Ld/m/a/a;->t:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Ld/m/a/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object v1, p0, Ld/m/a/y;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Ld/m/a/y;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
