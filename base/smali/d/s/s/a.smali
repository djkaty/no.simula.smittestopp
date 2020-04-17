.class public abstract Ld/s/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavController$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ld/l/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ld/b/c/a/d;

.field public e:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/s/s/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/s/s/a;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p2, Ld/s/s/c;->a:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Ld/s/s/a;->b:Ljava/util/Set;

    .line 5
    iget-object p1, p2, Ld/s/s/c;->b:Ld/l/a/a;

    if-eqz p1, :cond_0

    .line 6
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ld/s/s/a;->c:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Ld/s/s/a;->c:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/drawable/Drawable;I)V
.end method

.method public a(Landroidx/navigation/NavController;Ld/s/i;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    instance-of v0, p2, Ld/s/b;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/s/s/a;->c:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/l/a/a;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Ld/s/s/a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 5
    iget-object p1, p1, Landroidx/navigation/NavController;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_2
    iget-object p1, p2, Ld/s/i;->B:Ljava/lang/CharSequence;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\\{(.+?)\\}"

    .line 9
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 10
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 11
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    .line 14
    invoke-virtual {v4, v2, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 15
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 16
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to fill label "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 18
    move-object p1, p0

    check-cast p1, Ld/s/s/b;

    .line 19
    iget-object p1, p1, Ld/s/s/b;->f:Ld/b/a/h;

    invoke-virtual {p1}, Ld/b/a/h;->k()Ld/b/a/a;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v2}, Ld/b/a/a;->a(Ljava/lang/CharSequence;)V

    .line 21
    :cond_5
    iget-object p1, p0, Ld/s/s/a;->b:Ljava/util/Set;

    .line 22
    :cond_6
    iget p3, p2, Ld/s/i;->z:I

    .line 23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    .line 24
    :cond_7
    iget-object p2, p2, Ld/s/i;->y:Ld/s/j;

    if-nez p2, :cond_6

    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 25
    invoke-virtual {p0, v1, v2}, Ld/s/s/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_7

    :cond_8
    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    .line 26
    :goto_3
    iget-object p2, p0, Ld/s/s/a;->d:Ld/b/c/a/d;

    if-nez p2, :cond_a

    .line 27
    new-instance p2, Ld/b/c/a/d;

    iget-object p3, p0, Ld/s/s/a;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Ld/b/c/a/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ld/s/s/a;->d:Ld/b/c/a/d;

    const/4 p2, 0x0

    goto :goto_4

    :cond_a
    const/4 p2, 0x1

    .line 28
    :goto_4
    iget-object p3, p0, Ld/s/s/a;->d:Ld/b/c/a/d;

    if-eqz p1, :cond_b

    sget v0, Landroidx/navigation/ui/R$string;->nav_app_bar_open_drawer_description:I

    goto :goto_5

    :cond_b
    sget v0, Landroidx/navigation/ui/R$string;->nav_app_bar_navigate_up_description:I

    :goto_5
    invoke-virtual {p0, p3, v0}, Ld/s/s/a;->a(Landroid/graphics/drawable/Drawable;I)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_6

    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_6
    if-eqz p2, :cond_e

    .line 29
    iget-object p2, p0, Ld/s/s/a;->d:Ld/b/c/a/d;

    .line 30
    iget p2, p2, Ld/b/c/a/d;->j:F

    .line 31
    iget-object p3, p0, Ld/s/s/a;->e:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_d

    .line 32
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33
    :cond_d
    iget-object p3, p0, Ld/s/s/a;->d:Ld/b/c/a/d;

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p2, v0, v2

    aput p1, v0, v3

    const-string p1, "progress"

    invoke-static {p3, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Ld/s/s/a;->e:Landroid/animation/ValueAnimator;

    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    .line 35
    :cond_e
    iget-object p2, p0, Ld/s/s/a;->d:Ld/b/c/a/d;

    invoke-virtual {p2, p1}, Ld/b/c/a/d;->setProgress(F)V

    :goto_7
    return-void
.end method
