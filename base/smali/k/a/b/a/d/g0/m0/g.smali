.class public Lk/a/b/a/d/g0/m0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/z;
.implements Lk/a/b/a/d/g0/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/d/g0/m0/g$b;
    }
.end annotation


# instance fields
.field public b:Lk/a/b/a/d/g0/m0/h;

.field public final c:Lk/a/b/a/d/a0;

.field public final d:Lk/a/b/a/d/g0/m0/c;

.field public final e:Lk/a/b/a/d/b0;

.field public f:Lk/a/b/a/d/d0;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/a0;Lk/a/b/a/d/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/d/g0/m0/g;->c:Lk/a/b/a/d/a0;

    .line 3
    move-object v0, p1

    check-cast v0, Lk/a/b/a/d/g0/m0/c;

    iput-object v0, p0, Lk/a/b/a/d/g0/m0/g;->d:Lk/a/b/a/d/g0/m0/c;

    .line 4
    iput-object p2, p0, Lk/a/b/a/d/g0/m0/g;->e:Lk/a/b/a/d/b0;

    .line 5
    move-object v0, p1

    check-cast v0, Lk/a/b/a/d/g0/m0/e;

    .line 6
    iget-object v0, v0, Lk/a/b/a/d/g0/m0/e;->a:Lk/a/b/a/d/a0$a;

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 7
    check-cast p1, Lk/a/b/a/d/g0/m0/e;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/m0/e;->a()Lk/a/b/a/d/a0$b;

    move-result-object p1

    sget-object p2, Lk/a/b/a/d/a0$b;->VERIFY_PEER_NAME:Lk/a/b/a/d/a0$b;

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Peer hostname verification is enabled, but no peer details were provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client/server mode must be configured, SslDomain must have init called."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/m0/g;->b:Lk/a/b/a/d/g0/m0/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/m0/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lk/a/b/a/d/g0/m0/g$b;-><init>(Lk/a/b/a/d/g0/m0/g;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/m0/g$a;)V

    iput-object v0, p0, Lk/a/b/a/d/g0/m0/g;->b:Lk/a/b/a/d/g0/m0/h;

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Transport already wrapped"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
