.class public Le/c/a/b/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic x:Le/c/a/b/i/e;


# direct methods
.method public constructor <init>(Le/c/a/b/i/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/i/d;->x:Le/c/a/b/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/b/i/d;->x:Le/c/a/b/i/e;

    .line 2
    iget-object v1, v0, Le/c/a/b/i/e;->o:Le/c/a/b/j/f;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRotation()F

    move-result v1

    .line 3
    iget v2, v0, Le/c/a/b/i/e;->h:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 4
    iput v1, v0, Le/c/a/b/i/e;->h:F

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
