.class public Ld/t/a/v;
.super Ld/i/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/v$a;
    }
.end annotation


# instance fields
.field public final d:Ld/t/a/s;

.field public final e:Ld/i/i/a;


# direct methods
.method public constructor <init>(Ld/t/a/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/i/i/a;-><init>()V

    .line 2
    iput-object p1, p0, Ld/t/a/v;->d:Ld/t/a/s;

    .line 3
    new-instance p1, Ld/t/a/v$a;

    invoke-direct {p1, p0}, Ld/t/a/v$a;-><init>(Ld/t/a/v;)V

    iput-object p1, p0, Ld/t/a/v;->e:Ld/i/i/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 19
    iget-object v0, p0, Ld/i/i/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 20
    const-class v0, Ld/t/a/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 21
    instance-of v0, p1, Ld/t/a/s;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/t/a/v;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    check-cast p1, Ld/t/a/s;

    .line 23
    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld/t/a/s$k;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ld/i/i/x/d;)V
    .locals 5

    .line 25
    iget-object v0, p0, Ld/i/i/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 26
    iget-object v1, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 28
    const-class p1, Ld/t/a/s;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object v0, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Ld/t/a/v;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ld/t/a/v;->d:Ld/t/a/s;

    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 31
    iget-object p1, p0, Ld/t/a/v;->d:Ld/t/a/s;

    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object p1

    .line 32
    iget-object v0, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    iget-object v1, v0, Ld/t/a/s;->y:Ld/t/a/s$q;

    iget-object v2, v0, Ld/t/a/s;->C0:Ld/t/a/s$u;

    const/4 v3, -0x1

    .line 33
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 34
    iget-object v3, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 35
    iget-object v0, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 36
    :cond_1
    iget-object v0, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 37
    iget-object v3, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 38
    iget-object v0, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 39
    :cond_3
    invoke-virtual {p1, v1, v2}, Ld/t/a/s$k;->b(Ld/t/a/s$q;Ld/t/a/s$u;)I

    move-result v0

    .line 40
    invoke-virtual {p1, v1, v2}, Ld/t/a/s$k;->a(Ld/t/a/s$q;Ld/t/a/s$u;)I

    move-result p1

    const/4 v1, 0x0

    .line 41
    invoke-static {v0, p1, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    .line 42
    iget-object p2, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/t/a/v;->d:Ld/t/a/s;

    invoke-virtual {v0}, Ld/t/a/s;->i()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 2
    invoke-super {p0, p1, p2, p3}, Ld/i/i/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    .line 3
    :cond_0
    invoke-virtual {p0}, Ld/t/a/v;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_7

    iget-object p1, p0, Ld/t/a/v;->d:Ld/t/a/s;

    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4
    iget-object p1, p0, Ld/t/a/v;->d:Ld/t/a/s;

    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object p1

    .line 5
    iget-object v1, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    iget-object v2, v1, Ld/t/a/s;->y:Ld/t/a/s$q;

    const/16 v2, 0x1000

    if-eq p2, v2, :cond_3

    const/16 v2, 0x2000

    if-eq p2, v2, :cond_1

    const/4 p2, 0x0

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 p2, -0x1

    .line 6
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget v1, p1, Ld/t/a/s$k;->p:I

    .line 8
    invoke-virtual {p1}, Ld/t/a/s$k;->i()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ld/t/a/s$k;->f()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 10
    iget p2, p1, Ld/t/a/s$k;->o:I

    .line 11
    invoke-virtual {p1}, Ld/t/a/s$k;->g()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Ld/t/a/s$k;->h()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    iget p2, p1, Ld/t/a/s$k;->p:I

    .line 14
    invoke-virtual {p1}, Ld/t/a/s$k;->i()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Ld/t/a/s$k;->f()I

    move-result v1

    sub-int/2addr p2, v1

    move v1, p2

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object p2, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    iget p2, p1, Ld/t/a/s$k;->o:I

    .line 17
    invoke-virtual {p1}, Ld/t/a/s$k;->g()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Ld/t/a/s$k;->h()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    if-nez v1, :cond_6

    if-nez p2, :cond_6

    const/4 p3, 0x0

    goto :goto_3

    .line 18
    :cond_6
    iget-object p1, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    invoke-virtual {p1, p2, v1}, Ld/t/a/s;->c(II)V

    :goto_3
    return p3

    :cond_7
    return v0
.end method
