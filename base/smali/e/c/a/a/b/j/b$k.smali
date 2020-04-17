.class public final Le/c/a/a/b/j/b$k;
.super Le/c/a/a/b/j/b$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/j/b$f;"
    }
.end annotation


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Le/c/a/a/b/j/b;


# direct methods
.method public constructor <init>(Le/c/a/a/b/j/b;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    .line 2
    invoke-direct {p0, p1, p2, p4}, Le/c/a/a/b/j/b$f;-><init>(Le/c/a/a/b/j/b;ILandroid/os/Bundle;)V

    .line 3
    iput-object p3, p0, Le/c/a/a/b/j/b$k;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/b/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/j/b;->n:Le/c/a/a/b/j/b$b;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Le/c/a/a/b/j/w;

    .line 4
    iget-object v0, v0, Le/c/a/a/b/j/w;->a:Le/c/a/a/b/i/d$b;

    invoke-interface {v0, p1}, Le/c/a/a/b/i/d$b;->a(Le/c/a/a/b/a;)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    if-eqz v0, :cond_1

    .line 6
    iget p1, p1, Le/c/a/a/b/a;->y:I

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public final d()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/c/a/a/b/j/b$k;->g:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    invoke-virtual {v3}, Le/c/a/a/b/j/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    invoke-virtual {v3}, Le/c/a/a/b/j/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "service descriptor mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    iget-object v2, p0, Le/c/a/a/b/j/b$k;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Le/c/a/a/b/j/b;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v2, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    const/4 v3, 0x2

    const/4 v4, 0x4

    .line 6
    invoke-virtual {v2, v3, v4, v0}, Le/c/a/a/b/j/b;->a(IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    const/4 v3, 0x3

    .line 8
    invoke-virtual {v2, v3, v4, v0}, Le/c/a/a/b/j/b;->a(IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_1
    iget-object v0, p0, Le/c/a/a/b/j/b$k;->h:Le/c/a/a/b/j/b;

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Le/c/a/a/b/j/b;->q:Le/c/a/a/b/a;

    .line 11
    iget-object v0, v0, Le/c/a/a/b/j/b;->m:Le/c/a/a/b/j/b$a;

    if-eqz v0, :cond_2

    .line 12
    check-cast v0, Le/c/a/a/b/j/v;

    .line 13
    iget-object v0, v0, Le/c/a/a/b/j/v;->a:Le/c/a/a/b/i/d$a;

    invoke-interface {v0, v1}, Le/c/a/a/b/i/d$a;->a(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
