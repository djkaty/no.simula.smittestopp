.class public Le/c/a/a/f/b/a;
.super Le/c/a/a/b/j/h;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/j/h<",
        "Le/c/a/a/f/b/g;",
        ">;",
        "Le/c/a/a/f/f;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Integer;

.field public final x:Z

.field public final y:Le/c/a/a/b/j/d;

.field public final z:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/d;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)V
    .locals 11

    move-object v7, p0

    move-object v8, p3

    .line 1
    iget-object v0, v8, Le/c/a/a/b/j/d;->g:Le/c/a/a/f/a;

    .line 2
    iget-object v1, v8, Le/c/a/a/b/j/d;->h:Ljava/lang/Integer;

    .line 3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v8, Le/c/a/a/b/j/d;->a:Landroid/accounts/Account;

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 5
    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 v10, 0x1

    if-eqz v0, :cond_2

    .line 7
    iget-boolean v1, v0, Le/c/a/a/f/a;->a:Z

    const-string v2, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 8
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-boolean v1, v0, Le/c/a/a/f/a;->b:Z

    const-string v2, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 10
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget-object v1, v0, Le/c/a/a/f/a;->c:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.serverClientId"

    .line 12
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 13
    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-boolean v1, v0, Le/c/a/a/f/a;->d:Z

    const-string v2, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 15
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object v1, v0, Le/c/a/a/f/a;->e:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.hostedDomain"

    .line 17
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-boolean v1, v0, Le/c/a/a/f/a;->f:Z

    const-string v2, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 19
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v1, v0, Le/c/a/a/f/a;->g:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    .line 22
    invoke-virtual {v9, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    :cond_1
    iget-object v0, v0, Le/c/a/a/f/a;->h:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    .line 25
    invoke-virtual {v9, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    .line 26
    invoke-direct/range {v0 .. v6}, Le/c/a/a/b/j/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILe/c/a/a/b/j/d;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)V

    .line 27
    iput-boolean v10, v7, Le/c/a/a/f/b/a;->x:Z

    .line 28
    iput-object v8, v7, Le/c/a/a/f/b/a;->y:Le/c/a/a/b/j/d;

    .line 29
    iput-object v9, v7, Le/c/a/a/f/b/a;->z:Landroid/os/Bundle;

    .line 30
    iget-object v0, v8, Le/c/a/a/b/j/d;->h:Ljava/lang/Integer;

    .line 31
    iput-object v0, v7, Le/c/a/a/f/b/a;->A:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    .line 14
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 15
    instance-of v1, v0, Le/c/a/a/f/b/g;

    if-eqz v1, :cond_1

    .line 16
    check-cast v0, Le/c/a/a/f/b/g;

    return-object v0

    .line 17
    :cond_1
    new-instance v0, Le/c/a/a/f/b/h;

    invoke-direct {v0, p1}, Le/c/a/a/f/b/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final a(Le/c/a/a/f/b/e;)V
    .locals 4

    const-string v0, "Expecting a valid ISignInCallbacks"

    .line 1
    invoke-static {p1, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v0, p0, Le/c/a/a/f/b/a;->y:Le/c/a/a/b/j/d;

    .line 3
    iget-object v0, v0, Le/c/a/a/b/j/d;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "<<default account>>"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    .line 5
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Le/c/a/a/b/j/b;->b:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Le/c/a/a/a/a/a/a/a;->a(Landroid/content/Context;)Le/c/a/a/a/a/a/a/a;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Le/c/a/a/a/a/a/a/a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    .line 9
    :cond_1
    new-instance v1, Le/c/a/a/b/j/p;

    iget-object v3, p0, Le/c/a/a/f/b/a;->A:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Le/c/a/a/b/j/p;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 10
    invoke-virtual {p0}, Le/c/a/a/b/j/b;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Le/c/a/a/f/b/g;

    new-instance v2, Le/c/a/a/f/b/i;

    invoke-direct {v2, v1}, Le/c/a/a/f/b/i;-><init>(Le/c/a/a/b/j/p;)V

    invoke-interface {v0, v2, p1}, Le/c/a/a/f/b/g;->a(Le/c/a/a/f/b/i;Le/c/a/a/f/b/e;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_2
    new-instance v2, Le/c/a/a/f/b/k;

    invoke-direct {v2}, Le/c/a/a/f/b/k;-><init>()V

    invoke-interface {p1, v2}, Le/c/a/a/f/b/e;->a(Le/c/a/a/f/b/k;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 13
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    new-instance v0, Le/c/a/a/b/j/b$d;

    invoke-direct {v0, p0}, Le/c/a/a/b/j/b$d;-><init>(Le/c/a/a/b/j/b;)V

    const-string v1, "Connection progress callbacks cannot be null."

    .line 2
    invoke-static {v0, v1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Le/c/a/a/b/j/b;->h:Le/c/a/a/b/j/b$c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Le/c/a/a/b/j/b;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/c/a/a/f/b/a;->x:Z

    return v0
.end method

.method public i()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/a/f/b/a;->y:Le/c/a/a/b/j/d;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/j/d;->e:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Le/c/a/a/b/j/b;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Le/c/a/a/f/b/a;->z:Landroid/os/Bundle;

    iget-object v1, p0, Le/c/a/a/f/b/a;->y:Le/c/a/a/b/j/d;

    .line 6
    iget-object v1, v1, Le/c/a/a/b/j/d;->e:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Le/c/a/a/f/b/a;->z:Landroid/os/Bundle;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method
