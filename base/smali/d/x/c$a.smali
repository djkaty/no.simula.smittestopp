.class public Ld/x/c$a;
.super Ld/x/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/x/c;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Ld/x/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld/x/c$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ld/x/k;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/x/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/x/c$a;->a:Landroid/view/View;

    .line 2
    sget-object v1, Ld/x/v;->a:Ld/x/z;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Ld/x/z;->a(Landroid/view/View;F)V

    .line 3
    iget-object v0, p0, Ld/x/c$a;->a:Landroid/view/View;

    .line 4
    sget-object v1, Ld/x/v;->a:Ld/x/z;

    invoke-virtual {v1, v0}, Ld/x/z;->a(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1, p0}, Ld/x/h;->b(Ld/x/h$d;)Ld/x/h;

    return-void
.end method
