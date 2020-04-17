.class public Lk/a/b/a/g/c;
.super Lk/a/b/a/d/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/b/a/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk/a/b/a/d/f;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->CLOSED:Lk/a/b/a/d/g;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Lk/a/b/a/d/f;->close()V

    :cond_0
    return-void
.end method

.method public final b(Lk/a/b/a/d/f;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Lk/a/b/a/d/f;->open()V

    :cond_0
    return-void
.end method

.method public onConnectionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/b/a/g/c;->a(Lk/a/b/a/d/f;)V

    return-void
.end method

.method public onConnectionRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->U()Lk/a/b/a/d/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/b/a/g/c;->b(Lk/a/b/a/d/f;)V

    return-void
.end method

.method public onLinkRemoteClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/b/a/g/c;->a(Lk/a/b/a/d/f;)V

    return-void
.end method

.method public onLinkRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->G()Lk/a/b/a/d/n;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lk/a/b/a/d/f;->J()Lk/a/b/a/d/g;

    move-result-object v0

    sget-object v1, Lk/a/b/a/d/g;->UNINITIALIZED:Lk/a/b/a/d/g;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-interface {p1}, Lk/a/b/a/d/n;->z()Lk/a/b/a/b/n/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lk/a/b/a/d/n;->z()Lk/a/b/a/b/n/q;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/b/n/q;->a()Lk/a/b/a/b/n/q;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/q;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lk/a/b/a/d/n;->r()Lk/a/b/a/b/n/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lk/a/b/a/d/n;->r()Lk/a/b/a/b/n/r;

    move-result-object v0

    invoke-interface {v0}, Lk/a/b/a/b/n/r;->a()Lk/a/b/a/b/n/r;

    move-result-object v0

    invoke-interface {p1, v0}, Lk/a/b/a/d/n;->a(Lk/a/b/a/b/n/r;)V

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lk/a/b/a/g/c;->b(Lk/a/b/a/d/f;)V

    return-void
.end method

.method public onSessionRemoteClose(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/b/a/g/c;->a(Lk/a/b/a/d/f;)V

    return-void
.end method

.method public onSessionRemoteOpen(Lk/a/b/a/d/h;)V
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/g;

    invoke-virtual {p1}, Lk/a/b/a/d/g0/g;->T()Lk/a/b/a/d/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/a/b/a/g/c;->b(Lk/a/b/a/d/f;)V

    return-void
.end method
