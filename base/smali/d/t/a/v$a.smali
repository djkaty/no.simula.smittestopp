.class public Ld/t/a/v$a;
.super Ld/i/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/t/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:Ld/t/a/v;


# direct methods
.method public constructor <init>(Ld/t/a/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/i/i/a;-><init>()V

    .line 2
    iput-object p1, p0, Ld/t/a/v$a;->d:Ld/t/a/v;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/i/i/x/d;)V
    .locals 2

    .line 6
    iget-object v0, p0, Ld/i/i/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 7
    iget-object v1, p2, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9
    iget-object v0, p0, Ld/t/a/v$a;->d:Ld/t/a/v;

    invoke-virtual {v0}, Ld/t/a/v;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/t/a/v$a;->d:Ld/t/a/v;

    iget-object v0, v0, Ld/t/a/v;->d:Ld/t/a/s;

    .line 10
    invoke-virtual {v0}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Ld/t/a/v$a;->d:Ld/t/a/v;

    iget-object v0, v0, Ld/t/a/v;->d:Ld/t/a/s;

    invoke-virtual {v0}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Ld/t/a/s$k;->a(Landroid/view/View;Ld/i/i/x/d;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ld/i/i/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Ld/t/a/v$a;->d:Ld/t/a/v;

    invoke-virtual {p1}, Ld/t/a/v;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Ld/t/a/v$a;->d:Ld/t/a/v;

    iget-object p1, p1, Ld/t/a/v;->d:Ld/t/a/s;

    .line 3
    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Ld/t/a/v$a;->d:Ld/t/a/v;

    iget-object p1, p1, Ld/t/a/v;->d:Ld/t/a/s;

    invoke-virtual {p1}, Ld/t/a/s;->getLayoutManager()Ld/t/a/s$k;

    move-result-object p1

    .line 5
    iget-object p1, p1, Ld/t/a/s$k;->b:Ld/t/a/s;

    iget-object p1, p1, Ld/t/a/s;->y:Ld/t/a/s$q;

    :cond_1
    return p2
.end method
