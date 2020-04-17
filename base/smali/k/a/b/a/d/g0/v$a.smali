.class public Lk/a/b/a/d/g0/v$a;
.super Lk/a/b/a/d/g0/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/a/b/a/d/g0/v;->wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk/a/b/a/d/g0/v;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/d/g0/v$a;->a:Lk/a/b/a/d/g0/v;

    invoke-direct {p0, p2, p3}, Lk/a/b/a/d/g0/w;-><init>(Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    return-void
.end method


# virtual methods
.method public isDeterminationMade()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/v$a;->a:Lk/a/b/a/d/g0/v;

    .line 2
    iget-object v1, v0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    .line 3
    sget-object v2, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    if-ne v1, v2, :cond_0

    .line 4
    iget-boolean v0, v0, Lk/a/b/a/d/g0/v;->w:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0}, Lk/a/b/a/d/g0/l;->isDeterminationMade()Z

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lk/a/b/a/d/g0/l;->_wrapper1:Lk/a/b/a/d/g0/l0;

    iput-object v0, p0, Lk/a/b/a/d/g0/l;->_selectedTransportWrapper:Lk/a/b/a/d/g0/l0;

    const/4 v0, 0x1

    return v0
.end method
