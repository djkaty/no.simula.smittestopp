.class public Ld/b/a/v$b;
.super Ld/i/i/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/a/v;


# direct methods
.method public constructor <init>(Ld/b/a/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/v$b;->a:Ld/b/a/v;

    invoke-direct {p0}, Ld/i/i/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/b/a/v$b;->a:Ld/b/a/v;

    const/4 v0, 0x0

    iput-object v0, p1, Ld/b/a/v;->u:Ld/b/d/g;

    .line 2
    iget-object p1, p1, Ld/b/a/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
