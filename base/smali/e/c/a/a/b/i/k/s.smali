.class public final Le/c/a/a/b/i/k/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Le/c/a/a/b/a;

.field public final synthetic y:Le/c/a/a/b/i/k/c$c;


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/c$c;Le/c/a/a/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/i/k/s;->y:Le/c/a/a/b/i/k/c$c;

    iput-object p2, p0, Le/c/a/a/b/i/k/s;->x:Le/c/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/s;->x:Le/c/a/a/b/a;

    invoke-virtual {v0}, Le/c/a/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/c/a/a/b/i/k/s;->y:Le/c/a/a/b/i/k/c$c;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/c/a/a/b/i/k/c$c;->e:Z

    .line 4
    iget-object v0, v0, Le/c/a/a/b/i/k/c$c;->a:Le/c/a/a/b/i/a$f;

    .line 5
    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/c/a/a/b/i/k/s;->y:Le/c/a/a/b/i/k/c$c;

    .line 7
    iget-boolean v1, v0, Le/c/a/a/b/i/k/c$c;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Le/c/a/a/b/i/k/c$c;->c:Le/c/a/a/b/j/k;

    if-eqz v1, :cond_0

    .line 8
    iget-object v2, v0, Le/c/a/a/b/i/k/c$c;->a:Le/c/a/a/b/i/a$f;

    iget-object v0, v0, Le/c/a/a/b/i/k/c$c;->d:Ljava/util/Set;

    invoke-interface {v2, v1, v0}, Le/c/a/a/b/i/a$f;->a(Le/c/a/a/b/j/k;Ljava/util/Set;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    :try_start_0
    iget-object v0, p0, Le/c/a/a/b/i/k/s;->y:Le/c/a/a/b/i/k/c$c;

    .line 10
    iget-object v0, v0, Le/c/a/a/b/i/k/c$c;->a:Le/c/a/a/b/i/a$f;

    const/4 v1, 0x0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Le/c/a/a/b/i/a$f;->a(Le/c/a/a/b/j/k;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GoogleApiManager"

    const-string v2, "Failed to get service from broker. "

    .line 13
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    iget-object v0, p0, Le/c/a/a/b/i/k/s;->y:Le/c/a/a/b/i/k/c$c;

    iget-object v1, v0, Le/c/a/a/b/i/k/c$c;->f:Le/c/a/a/b/i/k/c;

    .line 15
    iget-object v1, v1, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 16
    iget-object v0, v0, Le/c/a/a/b/i/k/c$c;->b:Le/c/a/a/b/i/k/h0;

    .line 17
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    new-instance v1, Le/c/a/a/b/a;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Le/c/a/a/b/a;-><init>(I)V

    .line 18
    invoke-virtual {v0, v1}, Le/c/a/a/b/i/k/c$a;->a(Le/c/a/a/b/a;)V

    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Le/c/a/a/b/i/k/s;->y:Le/c/a/a/b/i/k/c$c;

    iget-object v1, v0, Le/c/a/a/b/i/k/c$c;->f:Le/c/a/a/b/i/k/c;

    .line 20
    iget-object v1, v1, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 21
    iget-object v0, v0, Le/c/a/a/b/i/k/c$c;->b:Le/c/a/a/b/i/k/h0;

    .line 22
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    iget-object v1, p0, Le/c/a/a/b/i/k/s;->x:Le/c/a/a/b/a;

    invoke-virtual {v0, v1}, Le/c/a/a/b/i/k/c$a;->a(Le/c/a/a/b/a;)V

    return-void
.end method
