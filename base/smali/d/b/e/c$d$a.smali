.class public Ld/b/e/c$d$a;
.super Ld/b/e/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/e/c$d;-><init>(Ld/b/e/c;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic G:Ld/b/e/c$d;


# direct methods
.method public constructor <init>(Ld/b/e/c$d;Landroid/view/View;Ld/b/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/e/c$d$a;->G:Ld/b/e/c$d;

    invoke-direct {p0, p2}, Ld/b/e/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Ld/b/d/i/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/c$d$a;->G:Ld/b/e/c$d;

    iget-object v0, v0, Ld/b/e/c$d;->z:Ld/b/e/c;

    iget-object v0, v0, Ld/b/e/c;->R:Ld/b/e/c$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/b/d/i/l;->a()Ld/b/d/i/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/c$d$a;->G:Ld/b/e/c$d;

    iget-object v0, v0, Ld/b/e/c$d;->z:Ld/b/e/c;

    invoke-virtual {v0}, Ld/b/e/c;->g()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld/b/e/c$d$a;->G:Ld/b/e/c$d;

    iget-object v0, v0, Ld/b/e/c$d;->z:Ld/b/e/c;

    iget-object v1, v0, Ld/b/e/c;->T:Ld/b/e/c$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/b/e/c;->c()Z

    const/4 v0, 0x1

    return v0
.end method
