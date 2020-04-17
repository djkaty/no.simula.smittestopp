.class public Ld/x/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld/f/a;

.field public final synthetic b:Ld/x/h;


# direct methods
.method public constructor <init>(Ld/x/h;Ld/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/x/i;->b:Ld/x/h;

    iput-object p2, p0, Ld/x/i;->a:Ld/f/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/x/i;->a:Ld/f/a;

    invoke-virtual {v0, p1}, Ld/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ld/x/i;->b:Ld/x/h;

    iget-object v0, v0, Ld/x/h;->T:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/x/i;->b:Ld/x/h;

    iget-object v0, v0, Ld/x/h;->T:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
