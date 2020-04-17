.class public Ld/a0/a/b$h;
.super Ld/i/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a0/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic d:Ld/a0/a/b;


# direct methods
.method public constructor <init>(Ld/a0/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    invoke-direct {p0}, Ld/i/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/i/i/a;->a:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p1, Ld/a0/a/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Ld/a0/a/b$h;->a()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    iget-object p1, p1, Ld/a0/a/b;->B:Ld/a0/a/a;

    if-eqz p1, :cond_1

    .line 5
    check-cast p1, Lno/simula/corona/ui/onboarding/OnboardingActivity$b;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 6
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    iget p1, p1, Ld/a0/a/b;->C:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    iget p1, p1, Ld/a0/a/b;->C:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Ld/i/i/x/d;)V
    .locals 2

    .line 9
    iget-object v0, p0, Ld/i/i/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 10
    iget-object v1, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 12
    const-class p1, Ld/a0/a/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v0, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Ld/a0/a/b$h;->a()Z

    move-result p1

    .line 15
    iget-object v0, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 16
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ld/a0/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 17
    iget-object v0, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 18
    :cond_0
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ld/a0/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    .line 19
    iget-object p2, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 25
    iget-object v0, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    iget-object v0, v0, Ld/a0/a/b;->B:Ld/a0/a/a;

    if-eqz v0, :cond_1

    check-cast v0, Lno/simula/corona/ui/onboarding/OnboardingActivity$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 20
    invoke-super {p0, p1, p2, p3}, Ld/i/i/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 21
    :cond_1
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Ld/a0/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    iget p2, p1, Ld/a0/a/b;->C:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ld/a0/a/b;->setCurrentItem(I)V

    return p3

    :cond_2
    return v0

    .line 23
    :cond_3
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    invoke-virtual {p1, p3}, Ld/a0/a/b;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, p0, Ld/a0/a/b$h;->d:Ld/a0/a/b;

    iget p2, p1, Ld/a0/a/b;->C:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ld/a0/a/b;->setCurrentItem(I)V

    return p3

    :cond_4
    return v0
.end method
