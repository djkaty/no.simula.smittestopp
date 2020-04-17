.class public Ld/x/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/x/b;->a(Landroid/view/ViewGroup;Ld/x/p;Ld/x/p;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Ld/x/b;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/x/b$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Ld/x/b$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Ld/x/b$a;->c:Landroid/view/View;

    iput p5, p0, Ld/x/b$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld/x/b$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Ld/x/v;->a(Landroid/view/View;)Ld/x/u;

    move-result-object p1

    iget-object v0, p0, Ld/x/b$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Ld/x/t;

    .line 2
    iget-object p1, p1, Ld/x/t;->a:Landroid/view/ViewOverlay;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Ld/x/b$a;->c:Landroid/view/View;

    iget v0, p0, Ld/x/b$a;->d:F

    .line 4
    sget-object v1, Ld/x/v;->a:Ld/x/z;

    invoke-virtual {v1, p1, v0}, Ld/x/z;->a(Landroid/view/View;F)V

    return-void
.end method
