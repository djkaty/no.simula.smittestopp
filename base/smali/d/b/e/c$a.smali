.class public Ld/b/e/c$a;
.super Ld/b/d/i/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Ld/b/e/c;


# direct methods
.method public constructor <init>(Ld/b/e/c;Landroid/content/Context;Ld/b/d/i/r;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, Ld/b/e/c$a;->m:Ld/b/e/c;

    .line 2
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Ld/b/d/i/l;-><init>(Landroid/content/Context;Ld/b/d/i/g;Landroid/view/View;ZII)V

    .line 4
    iget-object p2, p3, Ld/b/d/i/r;->B:Ld/b/d/i/i;

    .line 5
    invoke-virtual {p2}, Ld/b/d/i/i;->d()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    iget-object p2, p1, Ld/b/e/c;->G:Ld/b/e/c$d;

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p1, Ld/b/d/i/b;->E:Ld/b/d/i/n;

    .line 8
    check-cast p2, Landroid/view/View;

    .line 9
    :cond_0
    iput-object p2, p0, Ld/b/d/i/l;->f:Landroid/view/View;

    .line 10
    :cond_1
    iget-object p1, p1, Ld/b/e/c;->V:Ld/b/e/c$f;

    invoke-virtual {p0, p1}, Ld/b/d/i/l;->a(Ld/b/d/i/m$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/c$a;->m:Ld/b/e/c;

    const/4 v1, 0x0

    iput-object v1, v0, Ld/b/e/c;->S:Ld/b/e/c$a;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Ld/b/e/c;->W:I

    .line 3
    invoke-super {p0}, Ld/b/d/i/l;->c()V

    return-void
.end method
