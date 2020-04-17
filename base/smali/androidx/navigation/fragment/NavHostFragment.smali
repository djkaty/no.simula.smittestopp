.class public Landroidx/navigation/fragment/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public A:Z

.field public x:Ld/s/l;

.field public y:Ljava/lang/Boolean;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->y:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_4

    .line 1
    instance-of v1, v0, Landroidx/navigation/fragment/NavHostFragment;

    const-string v2, "NavController is not available before onCreate()"

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 3
    iget-object p0, v0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v1

    .line 6
    iget-object v1, v1, Ld/m/a/p;->q:Landroidx/fragment/app/Fragment;

    .line 7
    instance-of v3, v1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v3, :cond_3

    .line 8
    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    .line 9
    iget-object p0, v1, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    if-eqz p0, :cond_2

    return-object p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, " does not have a NavController set"

    if-eqz v0, :cond_6

    .line 13
    invoke-static {v0}, Ld/b/a/r;->a(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Fragment "

    invoke-static {v2, p0, v1}, Le/a/a/a/a;->a(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iget-boolean p1, p0, Landroidx/navigation/fragment/NavHostFragment;->A:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Ld/m/a/a;

    invoke-direct {v0, p1}, Ld/m/a/a;-><init>(Ld/m/a/p;)V

    .line 5
    invoke-virtual {v0, p0}, Ld/m/a/y;->b(Landroidx/fragment/app/Fragment;)Ld/m/a/y;

    .line 6
    invoke-virtual {v0}, Ld/m/a/y;->a()I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Ld/s/l;

    invoke-direct {v1, v0}, Ld/s/l;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    .line 4
    iput-object p0, v1, Landroidx/navigation/NavController;->i:Ld/o/l;

    .line 5
    invoke-interface {p0}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object v0

    iget-object v1, v1, Landroidx/navigation/NavController;->m:Ld/o/k;

    invoke-virtual {v0, v1}, Ld/o/g;->a(Ld/o/k;)V

    .line 6
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ld/m/a/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/navigation/NavController;->i:Ld/o/l;

    if-eqz v2, :cond_10

    .line 8
    iget-object v2, v0, Landroidx/navigation/NavController;->n:Ld/a/b;

    invoke-virtual {v2}, Ld/a/b;->b()V

    .line 9
    iget-object v2, v0, Landroidx/navigation/NavController;->i:Ld/o/l;

    iget-object v0, v0, Landroidx/navigation/NavController;->n:Ld/a/b;

    invoke-virtual {v1, v2, v0}, Landroidx/activity/OnBackPressedDispatcher;->a(Ld/o/l;Ld/a/b;)V

    .line 10
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->y:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iput-boolean v1, v0, Landroidx/navigation/NavController;->o:Z

    .line 13
    invoke-virtual {v0}, Landroidx/navigation/NavController;->c()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->y:Ljava/lang/Boolean;

    .line 15
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Ld/o/e0;

    move-result-object v4

    .line 16
    iget-object v5, v1, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 17
    sget-object v5, Ld/s/g;->d:Ld/o/a0;

    .line 18
    const-class v6, Ld/s/g;

    .line 19
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    const-string v8, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 20
    invoke-static {v8, v7}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 21
    iget-object v8, v4, Ld/o/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/o/y;

    .line 22
    invoke-virtual {v6, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 23
    instance-of v4, v5, Ld/o/d0;

    if-eqz v4, :cond_3

    .line 24
    check-cast v5, Ld/o/d0;

    invoke-virtual {v5, v8}, Ld/o/d0;->a(Ld/o/y;)V

    goto :goto_2

    .line 25
    :cond_1
    instance-of v8, v5, Ld/o/b0;

    if-eqz v8, :cond_2

    .line 26
    check-cast v5, Ld/o/b0;

    invoke-virtual {v5, v7, v6}, Ld/o/b0;->a(Ljava/lang/String;Ljava/lang/Class;)Ld/o/y;

    move-result-object v5

    goto :goto_1

    .line 27
    :cond_2
    new-instance v5, Ld/s/g;

    invoke-direct {v5}, Ld/s/g;-><init>()V

    :goto_1
    move-object v8, v5

    .line 28
    iget-object v4, v4, Ld/o/e0;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/o/y;

    if-eqz v4, :cond_3

    .line 29
    invoke-virtual {v4}, Ld/o/y;->b()V

    .line 30
    :cond_3
    :goto_2
    check-cast v8, Ld/s/g;

    .line 31
    iput-object v8, v1, Landroidx/navigation/NavController;->j:Ld/s/g;

    .line 32
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    .line 33
    iget-object v4, v1, Landroidx/navigation/NavController;->k:Ld/s/q;

    .line 34
    new-instance v5, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/m/a/p;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Ld/m/a/p;)V

    .line 36
    invoke-virtual {v4, v5}, Ld/s/q;->a(Ld/s/p;)Ld/s/p;

    .line 37
    iget-object v1, v1, Landroidx/navigation/NavController;->k:Ld/s/q;

    .line 38
    new-instance v4, Ld/s/r/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/m/a/p;

    move-result-object v6

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    goto :goto_3

    .line 40
    :cond_4
    sget v7, Landroidx/navigation/fragment/R$id;->nav_host_fragment_container:I

    .line 41
    :goto_3
    invoke-direct {v4, v5, v6, v7}, Ld/s/r/a;-><init>(Landroid/content/Context;Ld/m/a/p;I)V

    .line 42
    invoke-virtual {v1, v4}, Ld/s/q;->a(Ld/s/p;)Ld/s/p;

    const-string v1, "android-support-nav:fragment:graphId"

    if-eqz p1, :cond_7

    const-string v4, "android-support-nav:fragment:navControllerState"

    .line 43
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:defaultHost"

    .line 44
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 45
    iput-boolean v3, p0, Landroidx/navigation/fragment/NavHostFragment;->A:Z

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Ld/m/a/p;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 47
    new-instance v5, Ld/m/a/a;

    invoke-direct {v5, v3}, Ld/m/a/a;-><init>(Ld/m/a/p;)V

    .line 48
    invoke-virtual {v5, p0}, Ld/m/a/y;->b(Landroidx/fragment/app/Fragment;)Ld/m/a/y;

    .line 49
    invoke-virtual {v5}, Ld/m/a/y;->a()I

    goto :goto_4

    .line 50
    :cond_5
    throw v0

    .line 51
    :cond_6
    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/navigation/fragment/NavHostFragment;->z:I

    goto :goto_5

    :cond_7
    move-object v4, v0

    :goto_5
    if-eqz v4, :cond_9

    .line 52
    iget-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    if-eqz p1, :cond_8

    .line 53
    iget-object v3, p1, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "android-support-nav:controller:navigatorState"

    .line 54
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p1, Landroidx/navigation/NavController;->e:Landroid/os/Bundle;

    const-string v3, "android-support-nav:controller:backStack"

    .line 55
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p1, Landroidx/navigation/NavController;->f:[Landroid/os/Parcelable;

    const-string v3, "android-support-nav:controller:deepLinkHandled"

    .line 56
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p1, Landroidx/navigation/NavController;->g:Z

    goto :goto_6

    .line 57
    :cond_8
    throw v0

    .line 58
    :cond_9
    :goto_6
    iget p1, p0, Landroidx/navigation/fragment/NavHostFragment;->z:I

    if-eqz p1, :cond_a

    .line 59
    iget-object v1, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    .line 60
    invoke-virtual {v1, p1, v0}, Landroidx/navigation/NavController;->a(ILandroid/os/Bundle;)V

    goto :goto_7

    .line 61
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_b
    if-eqz p1, :cond_c

    const-string v0, "android-support-nav:fragment:startDestinationArgs"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_c
    if-eqz v2, :cond_d

    .line 64
    iget-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    invoke-virtual {p1, v2, v0}, Landroidx/navigation/NavController;->a(ILandroid/os/Bundle;)V

    :cond_d
    :goto_7
    return-void

    .line 65
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewModelStore should be set before setGraph call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p2, Ld/m/a/j;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Ld/m/a/j;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Landroidx/navigation/fragment/R$id;->nav_host_fragment_container:I

    .line 4
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    return-object p2
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2
    sget-object p3, Landroidx/navigation/fragment/R$styleable;->NavHost:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 3
    sget v0, Landroidx/navigation/fragment/R$styleable;->NavHost_navGraph:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput v0, p0, Landroidx/navigation/fragment/NavHostFragment;->z:I

    .line 5
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    sget-object p3, Landroidx/navigation/fragment/R$styleable;->NavHostFragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Landroidx/navigation/fragment/R$styleable;->NavHostFragment_defaultNavHost:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Landroidx/navigation/fragment/NavHostFragment;->A:Z

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, v0, Landroidx/navigation/NavController;->o:Z

    .line 3
    invoke-virtual {v0}, Landroidx/navigation/NavController;->c()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/fragment/NavHostFragment;->y:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v4, v0, Landroidx/navigation/NavController;->k:Ld/s/q;

    .line 6
    iget-object v4, v4, Ld/s/q;->a:Ljava/util/HashMap;

    .line 7
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/s/p;

    invoke-virtual {v5}, Ld/s/p;->b()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android-support-nav:controller:navigatorState:names"

    .line 14
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "android-support-nav:controller:navigatorState"

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    :cond_2
    iget-object v2, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v1, :cond_3

    .line 17
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    :cond_3
    iget-object v2, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/Parcelable;

    const/4 v3, 0x0

    .line 19
    iget-object v4, v0, Landroidx/navigation/NavController;->h:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/s/e;

    add-int/lit8 v6, v3, 0x1

    .line 20
    new-instance v7, Ld/s/f;

    invoke-direct {v7, v5}, Ld/s/f;-><init>(Ld/s/e;)V

    aput-object v7, v2, v3

    move v3, v6

    goto :goto_1

    :cond_4
    const-string v3, "android-support-nav:controller:backStack"

    .line 21
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 22
    :cond_5
    iget-boolean v2, v0, Landroidx/navigation/NavController;->g:Z

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    :cond_6
    iget-boolean v0, v0, Landroidx/navigation/NavController;->g:Z

    const-string v2, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    if-eqz v1, :cond_8

    const-string v0, "android-support-nav:fragment:navControllerState"

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 26
    :cond_8
    iget-boolean v0, p0, Landroidx/navigation/fragment/NavHostFragment;->A:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const-string v1, "android-support-nav:fragment:defaultHost"

    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    :cond_9
    iget v0, p0, Landroidx/navigation/fragment/NavHostFragment;->z:I

    if-eqz v0, :cond_a

    const-string v1, "android-support-nav:fragment:graphId"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    return-void

    .line 30
    :cond_b
    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    .line 4
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 8
    iget-object p2, p0, Landroidx/navigation/fragment/NavHostFragment;->x:Ld/s/l;

    .line 9
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created host view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a ViewGroup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
