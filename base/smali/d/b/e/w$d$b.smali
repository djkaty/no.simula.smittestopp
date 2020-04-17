.class public Ld/b/e/w$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/e/w$d;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/b/e/w$d;


# direct methods
.method public constructor <init>(Ld/b/e/w$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/e/w$d$b;->x:Ld/b/e/w$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/b/e/w$d$b;->x:Ld/b/e/w$d;

    iget-object v1, v0, Ld/b/e/w$d;->g0:Ld/b/e/w;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v1}, Ld/i/i/n;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Ld/b/e/w$d;->e0:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ld/b/e/w$d$b;->x:Ld/b/e/w$d;

    invoke-virtual {v0}, Ld/b/e/k0;->dismiss()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Ld/b/e/w$d$b;->x:Ld/b/e/w$d;

    invoke-virtual {v0}, Ld/b/e/w$d;->h()V

    .line 5
    iget-object v0, p0, Ld/b/e/w$d$b;->x:Ld/b/e/w$d;

    invoke-static {v0}, Ld/b/e/w$d;->a(Ld/b/e/w$d;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
