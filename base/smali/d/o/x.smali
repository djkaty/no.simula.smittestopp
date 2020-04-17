.class public final Ld/o/x;
.super Ld/o/b0;
.source "SourceFile"


# static fields
.field public static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ld/o/z;

.field public final c:Landroid/os/Bundle;

.field public final d:Ld/o/g;

.field public final e:Ld/v/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ld/o/w;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/Application;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ld/o/x;->f:[Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Class;

    aput-object v0, v1, v3

    .line 2
    sput-object v1, Ld/o/x;->g:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ld/v/c;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ld/o/b0;-><init>()V

    .line 2
    invoke-interface {p2}, Ld/v/c;->getSavedStateRegistry()Ld/v/a;

    move-result-object v0

    iput-object v0, p0, Ld/o/x;->e:Ld/v/a;

    .line 3
    invoke-interface {p2}, Ld/o/l;->getLifecycle()Ld/o/g;

    move-result-object p2

    iput-object p2, p0, Ld/o/x;->d:Ld/o/g;

    .line 4
    iput-object p3, p0, Ld/o/x;->c:Landroid/os/Bundle;

    .line 5
    iput-object p1, p0, Ld/o/x;->a:Landroid/app/Application;

    .line 6
    sget-object p2, Ld/o/z;->b:Ld/o/z;

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Ld/o/z;

    invoke-direct {p2, p1}, Ld/o/z;-><init>(Landroid/app/Application;)V

    sput-object p2, Ld/o/z;->b:Ld/o/z;

    .line 8
    :cond_0
    sget-object p1, Ld/o/z;->b:Ld/o/z;

    .line 9
    iput-object p1, p0, Ld/o/x;->b:Ld/o/z;

    return-void
.end method

.method public static a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 25
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 26
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ld/o/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/o/y;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0, v0, p1}, Ld/o/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ld/o/y;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ld/o/y;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/o/y;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Ld/o/a;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ld/o/x;->f:[Ljava/lang/Class;

    invoke-static {p2, v1}, Ld/o/x;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ld/o/x;->g:[Ljava/lang/Class;

    invoke-static {p2, v1}, Ld/o/x;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Ld/o/x;->b:Ld/o/z;

    invoke-virtual {p1, p2}, Ld/o/z;->a(Ljava/lang/Class;)Ld/o/y;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v2, p0, Ld/o/x;->e:Ld/v/a;

    iget-object v3, p0, Ld/o/x;->d:Ld/o/g;

    iget-object v4, p0, Ld/o/x;->c:Landroid/os/Bundle;

    .line 6
    invoke-virtual {v2, p1}, Ld/v/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 7
    invoke-static {v5, v4}, Ld/o/w;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Ld/o/w;

    move-result-object v4

    .line 8
    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p1, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Ld/o/w;)V

    .line 9
    invoke-virtual {v5, v2, v3}, Landroidx/lifecycle/SavedStateHandleController;->a(Ld/v/a;Ld/o/g;)V

    .line 10
    invoke-static {v2, v3}, Landroidx/lifecycle/SavedStateHandleController;->b(Ld/v/a;Ld/o/g;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Ld/o/x;->a:Landroid/app/Application;

    aput-object v3, v0, p1

    .line 12
    iget-object p1, v5, Landroidx/lifecycle/SavedStateHandleController;->z:Ld/o/w;

    aput-object p1, v0, v2

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/o/y;

    goto :goto_1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 14
    iget-object v2, v5, Landroidx/lifecycle/SavedStateHandleController;->z:Ld/o/w;

    aput-object v2, v0, p1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/o/y;

    :goto_1
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 16
    invoke-virtual {p1, v0, v5}, Ld/o/y;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception happened in constructor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be instantiated."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Ld/o/y;)V
    .locals 3

    .line 27
    iget-object v0, p0, Ld/o/x;->e:Ld/v/a;

    iget-object v1, p0, Ld/o/x;->d:Ld/o/g;

    const-string v2, "androidx.lifecycle.savedstate.vm.tag"

    .line 28
    invoke-virtual {p1, v2}, Ld/o/y;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p1, :cond_0

    .line 29
    iget-boolean v2, p1, Landroidx/lifecycle/SavedStateHandleController;->y:Z

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->a(Ld/v/a;Ld/o/g;)V

    .line 31
    invoke-static {v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->b(Ld/v/a;Ld/o/g;)V

    :cond_0
    return-void
.end method
