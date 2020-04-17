.class public Ld/m/a/c;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Ld/i/a/a$b;
.implements Ld/i/a/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/m/a/c$a;
    }
.end annotation


# static fields
.field public static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field public static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field public static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field public static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field public static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field public static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:Ld/o/m;

.field public final mFragments:Ld/m/a/k;

.field public mNextCandidateRequestIndex:I

.field public mPendingFragmentActivityResults:Ld/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRequestedPermissionsFromFragment:Z

.field public mResumed:Z

.field public mStartedActivityFromFragment:Z

.field public mStartedIntentSenderFromFragment:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Ld/m/a/c$a;

    invoke-direct {v0, p0}, Ld/m/a/c$a;-><init>(Ld/m/a/c;)V

    .line 3
    new-instance v1, Ld/m/a/k;

    const-string v2, "callbacks == null"

    invoke-static {v0, v2}, Ld/b/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0}, Ld/m/a/k;-><init>(Ld/m/a/m;)V

    .line 4
    iput-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 5
    new-instance v0, Ld/o/m;

    invoke-direct {v0, p0}, Ld/o/m;-><init>(Ld/o/l;)V

    iput-object v0, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ld/m/a/c;->mStopped:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;-><init>(I)V

    .line 8
    new-instance p1, Ld/m/a/c$a;

    invoke-direct {p1, p0}, Ld/m/a/c$a;-><init>(Ld/m/a/c;)V

    .line 9
    new-instance v0, Ld/m/a/k;

    const-string v1, "callbacks == null"

    invoke-static {p1, v1}, Ld/b/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Ld/m/a/k;-><init>(Ld/m/a/m;)V

    .line 10
    iput-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 11
    new-instance p1, Ld/o/m;

    invoke-direct {p1, p0}, Ld/o/m;-><init>(Ld/o/l;)V

    iput-object p1, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Ld/m/a/c;->mStopped:Z

    return-void
.end method

.method private allocateRequestIndex(Landroidx/fragment/app/Fragment;)I
    .locals 4

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v0}, Ld/f/i;->b()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_2

    .line 2
    :goto_0
    iget-object v0, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    iget v2, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    .line 3
    iget-boolean v3, v0, Ld/f/i;->x:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0}, Ld/f/i;->a()V

    .line 5
    :cond_0
    iget-object v3, v0, Ld/f/i;->y:[I

    iget v0, v0, Ld/f/i;->A:I

    invoke-static {v3, v0, v2}, Ld/f/d;->a([III)I

    move-result v0

    if-ltz v0, :cond_1

    .line 6
    iget v0, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    .line 8
    iget-object v2, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Ld/f/i;->c(ILjava/lang/Object;)V

    .line 9
    iget p1, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    return v0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkForValidRequestCode(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private markFragmentsCreated()V
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ld/m/a/c;->getSupportFragmentManager()Ld/m/a/p;

    move-result-object v0

    sget-object v1, Ld/o/g$b;->CREATED:Ld/o/g$b;

    invoke-static {v0, v1}, Ld/m/a/c;->markState(Ld/m/a/p;Ld/o/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public static markState(Ld/m/a/p;Ld/o/g$b;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Ld/m/a/p;->c:Ld/m/a/x;

    invoke-virtual {p0}, Ld/m/a/x;->c()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/m/a/p;

    move-result-object v2

    .line 5
    invoke-static {v2, p1}, Ld/m/a/c;->markState(Ld/m/a/p;Ld/o/g$b;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 6
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Ld/o/g;

    move-result-object v2

    check-cast v2, Ld/o/m;

    .line 7
    iget-object v2, v2, Ld/o/m;->b:Ld/o/g$b;

    .line 8
    sget-object v3, Ld/o/g$b;->STARTED:Ld/o/g$b;

    invoke-virtual {v2, v3}, Ld/o/g$b;->isAtLeast(Ld/o/g$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Ld/o/m;

    .line 10
    invoke-virtual {v0, p1}, Ld/o/m;->a(Ld/o/g$b;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 2
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    .line 3
    iget-object v0, v0, Ld/m/a/p;->f:Ld/m/a/n;

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Ld/m/a/c;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Ld/m/a/c;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Ld/m/a/c;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Ld/p/a/a;->a(Ld/o/l;)Ld/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Ld/p/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 13
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Ld/m/a/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Ld/m/a/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 2
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    return-object v0
.end method

.method public getSupportLoaderManager()Ld/p/a/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Ld/p/a/a;->a(Ld/o/l;)Ld/p/a/a;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {v0}, Ld/m/a/k;->a()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v1, v0}, Ld/f/i;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v2, v0}, Ld/f/i;->c(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 6
    iget-object v2, v2, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v2, v2, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v2, v1}, Ld/m/a/p;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 8
    invoke-virtual {v2, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    .line 9
    :cond_2
    invoke-static {}, Ld/i/a/a;->a()Ld/i/a/a$c;

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {v0}, Ld/m/a/k;->a()V

    .line 3
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 4
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0, p1}, Ld/m/a/p;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 2
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v1, v0, Ld/m/a/m;->A:Ld/m/a/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Ld/m/a/p;->a(Ld/m/a/m;Ld/m/a/i;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android:support:fragments"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 4
    iget-object v2, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 5
    iget-object v2, v2, Ld/m/a/k;->a:Ld/m/a/m;

    instance-of v3, v2, Ld/o/f0;

    if-eqz v3, :cond_2

    .line 6
    iget-object v2, v2, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v2, v1}, Ld/m/a/p;->a(Landroid/os/Parcelable;)V

    const-string v1, "android:support:next_request_index"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    const-string v1, "android:support:request_indicies"

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android:support:request_fragment_who"

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 11
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v3, Ld/f/i;

    array-length v4, v1

    invoke-direct {v3, v4}, Ld/f/i;-><init>(I)V

    iput-object v3, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    const/4 v3, 0x0

    .line 13
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 14
    iget-object v4, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Ld/f/i;->c(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "FragmentActivity"

    const-string v2, "Invalid requestCode mapping in savedInstanceState."

    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    :goto_2
    iget-object v1, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    if-nez v1, :cond_4

    .line 18
    new-instance v1, Ld/f/i;

    const/16 v2, 0xa

    .line 19
    invoke-direct {v1, v2}, Ld/f/i;-><init>(I)V

    .line 20
    iput-object v1, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    .line 21
    iput v0, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    .line 22
    :cond_4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    sget-object v0, Ld/o/g$a;->ON_CREATE:Ld/o/g$a;

    invoke-virtual {p1, v0}, Ld/o/m;->a(Ld/o/g$a;)V

    .line 24
    iget-object p1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 25
    iget-object p1, p1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object p1, p1, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {p1}, Ld/m/a/p;->b()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 3
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0, p2, v1}, Ld/m/a/p;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ld/m/a/c;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Ld/m/a/c;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 3
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0}, Ld/m/a/p;->c()V

    .line 4
    iget-object v0, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    sget-object v1, Ld/o/g$a;->ON_DESTROY:Ld/o/g$a;

    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$a;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 3
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0}, Ld/m/a/p;->d()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 3
    iget-object p1, p1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object p1, p1, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {p1, p2}, Ld/m/a/p;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 5
    iget-object p1, p1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object p1, p1, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {p1, p2}, Ld/m/a/p;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 2
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0, p1}, Ld/m/a/p;->a(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {p1}, Ld/m/a/k;->a()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 2
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0, p2}, Ld/m/a/p;->a(Landroid/view/Menu;)V

    .line 3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld/m/a/c;->mResumed:Z

    .line 3
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 4
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Ld/m/a/p;->a(I)V

    .line 6
    iget-object v0, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    sget-object v1, Ld/o/g$a;->ON_PAUSE:Ld/o/g$a;

    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$a;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 2
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0, p1}, Ld/m/a/p;->b(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    invoke-virtual {p0}, Ld/m/a/c;->onResumeFragments()V

    return-void
.end method

.method public onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, p2, p3}, Ld/m/a/c;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 3
    iget-object p2, p2, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object p2, p2, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {p2, p3}, Ld/m/a/p;->b(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {v0}, Ld/m/a/k;->a()V

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v2, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v2, v0}, Ld/f/i;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v3, v0}, Ld/f/i;->c(I)V

    const-string v0, "FragmentActivity"

    if-nez v2, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v3, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 6
    iget-object v3, v3, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v3, v3, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v3, v2}, Ld/m/a/p;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    and-int/2addr p1, v1

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld/m/a/c;->mResumed:Z

    .line 3
    iget-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {v1}, Ld/m/a/k;->a()V

    .line 4
    iget-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 5
    iget-object v1, v1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v1, v1, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v1, v0}, Ld/m/a/p;->d(Z)Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    sget-object v1, Ld/o/g$a;->ON_RESUME:Ld/o/g$a;

    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$a;)V

    .line 2
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 3
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Ld/m/a/p;->u:Z

    .line 5
    iput-boolean v1, v0, Ld/m/a/p;->v:Z

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Ld/m/a/p;->a(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Ld/m/a/c;->markFragmentsCreated()V

    .line 3
    iget-object v0, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    sget-object v1, Ld/o/g$a;->ON_STOP:Ld/o/g$a;

    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$a;)V

    .line 4
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 5
    iget-object v0, v0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0}, Ld/m/a/p;->l()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    :cond_0
    iget-object v0, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v0}, Ld/f/i;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iget v0, p0, Ld/m/a/c;->mNextCandidateRequestIndex:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v0}, Ld/f/i;->b()I

    move-result v0

    new-array v0, v0, [I

    .line 10
    iget-object v1, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v1}, Ld/f/i;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v3}, Ld/f/i;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 12
    iget-object v3, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v3, v2}, Ld/f/i;->b(I)I

    move-result v3

    aput v3, v0, v2

    .line 13
    iget-object v3, p0, Ld/m/a/c;->mPendingFragmentActivityResults:Ld/f/i;

    invoke-virtual {v3, v2}, Ld/f/i;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "android:support:request_indicies"

    .line 14
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld/m/a/c;->mStopped:Z

    .line 3
    iget-boolean v1, p0, Ld/m/a/c;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v2, p0, Ld/m/a/c;->mCreated:Z

    .line 5
    iget-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 6
    iget-object v1, v1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v1, v1, Ld/m/a/m;->A:Ld/m/a/p;

    .line 7
    iput-boolean v0, v1, Ld/m/a/p;->u:Z

    .line 8
    iput-boolean v0, v1, Ld/m/a/p;->v:Z

    const/4 v3, 0x2

    .line 9
    invoke-virtual {v1, v3}, Ld/m/a/p;->a(I)V

    .line 10
    :cond_0
    iget-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {v1}, Ld/m/a/k;->a()V

    .line 11
    iget-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 12
    iget-object v1, v1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v1, v1, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v1, v2}, Ld/m/a/p;->d(Z)Z

    .line 13
    iget-object v1, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    sget-object v2, Ld/o/g$a;->ON_START:Ld/o/g$a;

    invoke-virtual {v1, v2}, Ld/o/m;->a(Ld/o/g$a;)V

    .line 14
    iget-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 15
    iget-object v1, v1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v1, v1, Ld/m/a/m;->A:Ld/m/a/p;

    .line 16
    iput-boolean v0, v1, Ld/m/a/p;->u:Z

    .line 17
    iput-boolean v0, v1, Ld/m/a/p;->v:Z

    const/4 v0, 0x3

    .line 18
    invoke-virtual {v1, v0}, Ld/m/a/p;->a(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    invoke-virtual {v0}, Ld/m/a/k;->a()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld/m/a/c;->mStopped:Z

    .line 3
    invoke-direct {p0}, Ld/m/a/c;->markFragmentsCreated()V

    .line 4
    iget-object v1, p0, Ld/m/a/c;->mFragments:Ld/m/a/k;

    .line 5
    iget-object v1, v1, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v1, v1, Ld/m/a/m;->A:Ld/m/a/p;

    .line 6
    iput-boolean v0, v1, Ld/m/a/p;->v:Z

    const/4 v0, 0x2

    .line 7
    invoke-virtual {v1, v0}, Ld/m/a/p;->a(I)V

    .line 8
    iget-object v0, p0, Ld/m/a/c;->mFragmentLifecycleRegistry:Ld/o/m;

    sget-object v1, Ld/o/g$a;->ON_STOP:Ld/o/g$a;

    invoke-virtual {v0, v1}, Ld/o/m;->a(Ld/o/g$a;)V

    return-void
.end method

.method public requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 1
    invoke-static {p0, p2, p3}, Ld/i/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 2
    :cond_0
    invoke-static {p3}, Ld/m/a/c;->checkForValidRequestCode(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Ld/m/a/c;->mRequestedPermissionsFromFragment:Z

    .line 4
    invoke-direct {p0, p1}, Ld/m/a/c;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    .line 5
    invoke-static {p0, p2, p1}, Ld/i/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-boolean v0, p0, Ld/m/a/c;->mRequestedPermissionsFromFragment:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Ld/m/a/c;->mRequestedPermissionsFromFragment:Z

    .line 7
    throw p1
.end method

.method public setEnterSharedElementCallback(Ld/i/a/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ld/i/a/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public setExitSharedElementCallback(Ld/i/a/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ld/i/a/a;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Ld/m/a/c;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p2}, Ld/m/a/c;->checkForValidRequestCode(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 4
    iget-boolean v0, p0, Ld/m/a/c;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5
    invoke-static {p2}, Ld/m/a/c;->checkForValidRequestCode(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Ld/m/a/c;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld/m/a/c;->mStartedActivityFromFragment:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0, p2, v1, p4}, Ld/i/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v2, p0, Ld/m/a/c;->mStartedActivityFromFragment:Z

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p3}, Ld/m/a/c;->checkForValidRequestCode(I)V

    .line 6
    invoke-direct {p0, p1}, Ld/m/a/c;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    .line 7
    invoke-static {p0, p2, p1, p4}, Ld/i/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iput-boolean v2, p0, Ld/m/a/c;->mStartedActivityFromFragment:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Ld/m/a/c;->mStartedActivityFromFragment:Z

    .line 9
    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Ld/m/a/c;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p2}, Ld/m/a/c;->checkForValidRequestCode(I)V

    .line 3
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 4
    iget-boolean v0, p0, Ld/m/a/c;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5
    invoke-static {p2}, Ld/m/a/c;->checkForValidRequestCode(I)V

    .line 6
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .param p2    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    move-object v9, p0

    move v0, p3

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v9, Ld/m/a/c;->mStartedIntentSenderFromFragment:Z

    const/4 v2, -0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    :try_start_0
    invoke-static/range {v1 .. v8}, Ld/i/a/a;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v10, v9, Ld/m/a/c;->mStartedIntentSenderFromFragment:Z

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {p3}, Ld/m/a/c;->checkForValidRequestCode(I)V

    .line 5
    invoke-direct {p0, p1}, Ld/m/a/c;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v3, v1, v0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 6
    invoke-static/range {v1 .. v8}, Ld/i/a/a;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iput-boolean v10, v9, Ld/m/a/c;->mStartedIntentSenderFromFragment:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v10, v9, Ld/m/a/c;->mStartedIntentSenderFromFragment:Z

    .line 8
    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 1
    invoke-static {p0}, Ld/i/a/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 1
    invoke-static {p0}, Ld/i/a/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 1
    invoke-static {p0}, Ld/i/a/a;->g(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld/m/a/c;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Ld/m/a/c;->checkForValidRequestCode(I)V

    :cond_0
    return-void
.end method
