.class public Lk/c/a/a/a/s/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/c/a/a/a/t/b;

.field public final b:Ljava/util/Hashtable;

.field public c:Ljava/lang/String;

.field public d:Lk/c/a/a/a/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "k.c.a.a.a.s.f"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    .line 2
    invoke-static {v1, v0}, Lk/c/a/a/a/t/c;->a(Ljava/lang/String;Ljava/lang/String;)Lk/c/a/a/a/t/b;

    move-result-object v1

    iput-object v1, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Lk/c/a/a/a/s/f;->d:Lk/c/a/a/a/k;

    .line 4
    invoke-interface {v1, p1}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    .line 6
    iput-object p1, p0, Lk/c/a/a/a/s/f;->c:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v1, "<Init>"

    const-string v2, "308"

    invoke-interface {p1, v0, v1, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lk/c/a/a/a/s/s/o;)Lk/c/a/a/a/j;
    .locals 11

    .line 5
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p1, Lk/c/a/a/a/s/s/u;->b:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/c/a/a/a/j;

    .line 10
    iget-object v7, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v8, "k.c.a.a.a.s.f"

    const-string v9, "restoreToken"

    const-string v10, "302"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object p1, v6, v4

    aput-object v2, v6, v3

    invoke-interface {v7, v8, v9, v10, v6}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Lk/c/a/a/a/j;

    iget-object v7, p0, Lk/c/a/a/a/s/f;->c:Ljava/lang/String;

    invoke-direct {v2, v7}, Lk/c/a/a/a/j;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v7, v2, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 13
    iput-object v1, v7, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    .line 14
    iget-object v7, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v7, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v7, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v8, "k.c.a.a.a.s.f"

    const-string v9, "restoreToken"

    const-string v10, "303"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object p1, v6, v4

    aput-object v2, v6, v3

    invoke-interface {v7, v8, v9, v10, v6}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)Lk/c/a/a/a/q;
    .locals 5

    .line 3
    iget-object v0, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v1, "k.c.a.a.a.s.f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "removeToken"

    const-string v4, "306"

    invoke-interface {v0, v1, v3, v4, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/c/a/a/a/q;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lk/c/a/a/a/s/s/u;)Lk/c/a/a/a/q;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lk/c/a/a/a/s/s/u;->i()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/c/a/a/a/q;

    return-object p1
.end method

.method public a()V
    .locals 5

    .line 35
    iget-object v0, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v1, "k.c.a.a.a.s.f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "clear"

    const-string v4, "305"

    invoke-interface {v0, v1, v3, v4, v2}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 38
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lk/c/a/a/a/k;)V
    .locals 7

    .line 31
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.f"

    const-string v3, "quiesce"

    const-string v4, "309"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iput-object p1, p0, Lk/c/a/a/a/s/f;->d:Lk/c/a/a/a/k;

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lk/c/a/a/a/q;Ljava/lang/String;)V
    .locals 8

    .line 25
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.f"

    const-string v3, "saveToken"

    const-string v4, "307"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v1, p1, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 28
    iput-object p2, v1, Lk/c/a/a/a/s/p;->j:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lk/c/a/a/a/q;Lk/c/a/a/a/s/s/u;)V
    .locals 8

    .line 17
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->d:Lk/c/a/a/a/k;

    if-nez v1, :cond_0

    .line 19
    invoke-virtual {p2}, Lk/c/a/a/a/s/s/u;->i()Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v3, "k.c.a.a.a.s.f"

    const-string v4, "saveToken"

    const-string v5, "300"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0, p1, v1}, Lk/c/a/a/a/s/f;->a(Lk/c/a/a/a/q;Ljava/lang/String;)V

    .line 22
    monitor-exit v0

    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lk/c/a/a/a/s/f;->d:Lk/c/a/a/a/k;

    throw p1

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 2

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lk/c/a/a/a/s/s/u;)Lk/c/a/a/a/q;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lk/c/a/a/a/s/s/u;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/c/a/a/a/s/f;->a(Ljava/lang/String;)Lk/c/a/a/a/q;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()[Lk/c/a/a/a/j;
    .locals 5

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.f"

    const-string v3, "getOutstandingDelTokens"

    const-string v4, "311"

    invoke-interface {v1, v2, v3, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4
    iget-object v2, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lk/c/a/a/a/j;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lk/c/a/a/a/j;

    monitor-exit v0

    return-object v1

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c/a/a/a/q;

    if-eqz v3, :cond_0

    .line 9
    instance-of v4, v3, Lk/c/a/a/a/j;

    if-eqz v4, :cond_0

    .line 10
    iget-object v4, v3, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    .line 11
    iget-boolean v4, v4, Lk/c/a/a/a/s/p;->o:Z

    if-nez v4, :cond_0

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Ljava/util/Vector;
    .locals 5

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.f"

    const-string v3, "getOutstandingTokens"

    const-string v4, "312"

    invoke-interface {v1, v2, v3, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 4
    iget-object v2, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/c/a/a/a/q;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/f;->a:Lk/c/a/a/a/t/b;

    const-string v2, "k.c.a.a.a.s.f"

    const-string v3, "open"

    const-string v4, "310"

    invoke-interface {v1, v2, v3, v4}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lk/c/a/a/a/s/f;->d:Lk/c/a/a/a/k;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    iget-object v2, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lk/c/a/a/a/s/f;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 5
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 7
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/c/a/a/a/q;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
