.class public Ld/b/a/o$a;
.super Ld/i/i/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/a/o;


# direct methods
.method public constructor <init>(Ld/b/a/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/o$a;->a:Ld/b/a/o;

    invoke-direct {p0}, Ld/i/i/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/b/a/o$a;->a:Ld/b/a/o;

    iget-object p1, p1, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Ld/b/a/o$a;->a:Ld/b/a/o;

    iget-object p1, p1, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->O:Ld/i/i/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/i/i/s;->a(Ld/i/i/t;)Ld/i/i/s;

    .line 3
    iget-object p1, p0, Ld/b/a/o$a;->a:Ld/b/a/o;

    iget-object p1, p1, Ld/b/a/o;->x:Ld/b/a/k;

    iput-object v0, p1, Ld/b/a/k;->O:Ld/i/i/s;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/b/a/o$a;->a:Ld/b/a/o;

    iget-object p1, p1, Ld/b/a/o;->x:Ld/b/a/k;

    iget-object p1, p1, Ld/b/a/k;->L:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
