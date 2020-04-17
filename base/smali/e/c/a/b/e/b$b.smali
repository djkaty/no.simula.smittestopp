.class public Le/c/a/b/e/b$b;
.super Ld/i/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/b/e/b;->a(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/c/a/b/e/b;


# direct methods
.method public constructor <init>(Le/c/a/b/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/e/b$b;->d:Le/c/a/b/e/b;

    invoke-direct {p0}, Ld/i/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/i/i/x/d;)V
    .locals 2

    .line 4
    iget-object v0, p0, Ld/i/i/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 5
    iget-object v1, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 7
    iget-object p1, p0, Le/c/a/b/e/b$b;->d:Le/c/a/b/e/b;

    iget-boolean p1, p1, Le/c/a/b/e/b;->A:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    .line 8
    iget-object v0, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 p1, 0x1

    .line 9
    iget-object p2, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iget-object p2, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Le/c/a/b/e/b$b;->d:Le/c/a/b/e/b;

    iget-boolean v1, v0, Le/c/a/b/e/b;->A:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ld/i/i/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
