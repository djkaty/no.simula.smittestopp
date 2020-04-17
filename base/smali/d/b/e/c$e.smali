.class public Ld/b/e/c$e;
.super Ld/b/d/i/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Ld/b/e/c;


# direct methods
.method public constructor <init>(Ld/b/e/c;Landroid/content/Context;Ld/b/d/i/g;Landroid/view/View;Z)V
    .locals 7

    .line 1
    iput-object p1, p0, Ld/b/e/c$e;->m:Ld/b/e/c;

    .line 2
    sget v5, Landroidx/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Ld/b/d/i/l;-><init>(Landroid/content/Context;Ld/b/d/i/g;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 4
    iput p2, p0, Ld/b/d/i/l;->g:I

    .line 5
    iget-object p1, p1, Ld/b/e/c;->V:Ld/b/e/c$f;

    invoke-virtual {p0, p1}, Ld/b/d/i/l;->a(Ld/b/d/i/m$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/c$e;->m:Ld/b/e/c;

    .line 2
    iget-object v0, v0, Ld/b/d/i/b;->z:Ld/b/d/i/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ld/b/d/i/g;->a(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Ld/b/e/c$e;->m:Ld/b/e/c;

    const/4 v1, 0x0

    iput-object v1, v0, Ld/b/e/c;->R:Ld/b/e/c$e;

    .line 5
    invoke-super {p0}, Ld/b/d/i/l;->c()V

    return-void
.end method
