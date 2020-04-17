.class public Ld/b/e/b0;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field public final x:Ld/b/e/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Ld/b/e/y;

    invoke-direct {p1, p0}, Ld/b/e/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Ld/b/e/b0;->x:Ld/b/e/y;

    .line 3
    invoke-virtual {p1, p2, v0}, Ld/b/e/y;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method
