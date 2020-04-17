.class public final Ld/i/i/x/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final x:I

.field public final y:Ld/i/i/x/d;

.field public final z:I


# direct methods
.method public constructor <init>(ILd/i/i/x/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput p1, p0, Ld/i/i/x/a;->x:I

    .line 3
    iput-object p2, p0, Ld/i/i/x/a;->y:Ld/i/i/x/d;

    .line 4
    iput p3, p0, Ld/i/i/x/a;->z:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v0, p0, Ld/i/i/x/a;->x:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Ld/i/i/x/a;->y:Ld/i/i/x/d;

    iget v1, p0, Ld/i/i/x/a;->z:I

    .line 4
    iget-object v0, v0, Ld/i/i/x/d;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
