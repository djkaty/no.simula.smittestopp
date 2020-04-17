.class public Ld/b/e/v;
.super Ld/b/e/h0;
.source "SourceFile"


# instance fields
.field public final synthetic G:Ld/b/e/w$d;

.field public final synthetic H:Ld/b/e/w;


# direct methods
.method public constructor <init>(Ld/b/e/w;Landroid/view/View;Ld/b/e/w$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/e/v;->H:Ld/b/e/w;

    iput-object p3, p0, Ld/b/e/v;->G:Ld/b/e/w$d;

    invoke-direct {p0, p2}, Ld/b/e/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Ld/b/d/i/p;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/e/v;->G:Ld/b/e/w$d;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/b/e/v;->H:Ld/b/e/w;

    invoke-virtual {v0}, Ld/b/e/w;->getInternalPopup()Ld/b/e/w$f;

    move-result-object v0

    invoke-interface {v0}, Ld/b/e/w$f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/b/e/v;->H:Ld/b/e/w;

    invoke-virtual {v0}, Ld/b/e/w;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
