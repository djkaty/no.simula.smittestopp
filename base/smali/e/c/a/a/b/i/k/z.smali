.class public final Le/c/a/a/b/i/k/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Le/c/a/a/f/b/k;

.field public final synthetic y:Le/c/a/a/b/i/k/x;


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/x;Le/c/a/a/f/b/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/i/k/z;->y:Le/c/a/a/b/i/k/x;

    iput-object p2, p0, Le/c/a/a/b/i/k/z;->x:Le/c/a/a/f/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/z;->y:Le/c/a/a/b/i/k/x;

    iget-object v1, p0, Le/c/a/a/b/i/k/z;->x:Le/c/a/a/f/b/k;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v3, v1, Le/c/a/a/f/b/k;->y:Le/c/a/a/b/a;

    .line 3
    invoke-virtual {v3}, Le/c/a/a/b/a;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4
    iget-object v1, v1, Le/c/a/a/f/b/k;->z:Le/c/a/a/b/j/q;

    .line 5
    iget-object v3, v1, Le/c/a/a/b/j/q;->z:Le/c/a/a/b/a;

    .line 6
    invoke-virtual {v3}, Le/c/a/a/b/a;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "SignInCoordinator"

    invoke-static {v4, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    iget-object v1, v0, Le/c/a/a/b/i/k/x;->g:Le/c/a/a/b/i/k/a0;

    check-cast v1, Le/c/a/a/b/i/k/c$c;

    invoke-virtual {v1, v3}, Le/c/a/a/b/i/k/c$c;->b(Le/c/a/a/b/a;)V

    .line 9
    iget-object v0, v0, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->e()V

    goto :goto_2

    .line 10
    :cond_0
    iget-object v3, v0, Le/c/a/a/b/i/k/x;->g:Le/c/a/a/b/i/k/a0;

    invoke-virtual {v1}, Le/c/a/a/b/j/q;->b()Le/c/a/a/b/j/k;

    move-result-object v1

    iget-object v4, v0, Le/c/a/a/b/i/k/x;->d:Ljava/util/Set;

    check-cast v3, Le/c/a/a/b/i/k/c$c;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    if-nez v4, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iput-object v1, v3, Le/c/a/a/b/i/k/c$c;->c:Le/c/a/a/b/j/k;

    .line 12
    iput-object v4, v3, Le/c/a/a/b/i/k/c$c;->d:Ljava/util/Set;

    .line 13
    iget-boolean v2, v3, Le/c/a/a/b/i/k/c$c;->e:Z

    if-eqz v2, :cond_5

    .line 14
    iget-object v2, v3, Le/c/a/a/b/i/k/c$c;->a:Le/c/a/a/b/i/a$f;

    invoke-interface {v2, v1, v4}, Le/c/a/a/b/i/a$f;->a(Le/c/a/a/b/j/k;Ljava/util/Set;)V

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    new-instance v1, Le/c/a/a/b/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Le/c/a/a/b/a;-><init>(I)V

    invoke-virtual {v3, v1}, Le/c/a/a/b/i/k/c$c;->b(Le/c/a/a/b/a;)V

    goto :goto_1

    .line 17
    :cond_3
    throw v2

    .line 18
    :cond_4
    iget-object v1, v0, Le/c/a/a/b/i/k/x;->g:Le/c/a/a/b/i/k/a0;

    check-cast v1, Le/c/a/a/b/i/k/c$c;

    invoke-virtual {v1, v3}, Le/c/a/a/b/i/k/c$c;->b(Le/c/a/a/b/a;)V

    .line 19
    :cond_5
    :goto_1
    iget-object v0, v0, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    invoke-interface {v0}, Le/c/a/a/b/i/a$f;->e()V

    :goto_2
    return-void

    .line 20
    :cond_6
    throw v2
.end method
