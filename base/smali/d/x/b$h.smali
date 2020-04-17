.class public Ld/x/b$h;
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
.field public final synthetic a:Ld/x/b$k;

.field public mViewBounds:Ld/x/b$k;


# direct methods
.method public constructor <init>(Ld/x/b;Ld/x/b$k;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/x/b$h;->a:Ld/x/b$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iget-object p1, p0, Ld/x/b$h;->a:Ld/x/b$k;

    iput-object p1, p0, Ld/x/b$h;->mViewBounds:Ld/x/b$k;

    return-void
.end method
