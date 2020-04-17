.class public final Lno/simula/corona/MainActivity;
.super Ld/b/a/h;
.source "SourceFile"

# interfaces
.implements Lj/b/a/e0/b/b;
.implements Lj/b/a/v;


# instance fields
.field public final A:Lno/simula/corona/MainActivity$c;

.field public B:Ljava/util/HashMap;

.field public z:Lno/simula/corona/DataCollectorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/b/a/h;-><init>()V

    .line 2
    new-instance v0, Lno/simula/corona/MainActivity$c;

    invoke-direct {v0, p0}, Lno/simula/corona/MainActivity$c;-><init>(Lno/simula/corona/MainActivity;)V

    iput-object v0, p0, Lno/simula/corona/MainActivity;->A:Lno/simula/corona/MainActivity$c;

    return-void
.end method

.method public static final synthetic a(Lno/simula/corona/MainActivity;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/SplashActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lno/simula/corona/MainActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lno/simula/corona/MainActivity;->n()V

    return-void
.end method

.method public static final synthetic c(Lno/simula/corona/MainActivity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    new-instance v1, Lj/b/a/c0/c;

    iget-object v2, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    iget-boolean v2, v2, Lno/simula/corona/DataCollectorService;->y:Z

    .line 4
    invoke-direct {v1, v2}, Lj/b/a/c0/c;-><init>(Z)V

    invoke-virtual {v0, v1}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object v0

    new-instance v1, Lj/b/a/c0/b;

    iget-object p0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz p0, :cond_0

    .line 6
    iget-boolean p0, p0, Lno/simula/corona/DataCollectorService;->O:Z

    .line 7
    invoke-direct {v1, p0}, Lj/b/a/c0/b;-><init>(Z)V

    invoke-virtual {v0, v1}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/k/b/g;->a()V

    throw v3

    .line 8
    :cond_1
    invoke-static {}, Lh/k/b/g;->a()V

    throw v3

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lj/b/a/e0/b/a;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 9
    invoke-static {p0, p1}, Lj/b/a/a0;->a(Landroid/content/Context;Z)V

    .line 10
    invoke-virtual {p0}, Lno/simula/corona/MainActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p0}, Lno/simula/corona/DataCollectorService;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lno/simula/corona/DataCollectorService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    const-string v1, "service-command"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ZLh/k/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lh/k/a/a<",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "Show rationale"

    invoke-virtual {v2, v3, v1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const v1, 0x7f120023

    goto :goto_0

    :cond_0
    const v1, 0x7f120079

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f12006c

    goto :goto_1

    :cond_1
    const p1, 0x7f12006d

    .line 2
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12006e

    .line 3
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 5
    new-instance v2, Lno/simula/corona/MainActivity$a;

    invoke-direct {v2, v0, p2}, Lno/simula/corona/MainActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f12004e

    .line 6
    new-instance v0, Lno/simula/corona/MainActivity$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lno/simula/corona/MainActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .line 8
    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz v0, :cond_0

    .line 9
    iget-boolean v0, v0, Lno/simula/corona/DataCollectorService;->O:Z

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 2
    invoke-static {p0, p1}, Lj/b/a/a0;->b(Landroid/content/Context;Z)V

    .line 3
    invoke-virtual {p0}, Lno/simula/corona/MainActivity;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0}, Lno/simula/corona/DataCollectorService;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lno/simula/corona/DataCollectorService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const-string v1, "service-command"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    new-instance v0, Lno/simula/corona/MainActivity$e;

    invoke-direct {v0, p0}, Lno/simula/corona/MainActivity$e;-><init>(Lno/simula/corona/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    const v0, 0x7f0a00c1

    .line 1
    invoke-static {p0, v0}, Ld/b/a/r;->a(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a00c7

    .line 2
    invoke-virtual {v0, v2, v1, v1}, Landroidx/navigation/NavController;->a(ILandroid/os/Bundle;Ld/s/n;)V

    return-void
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lno/simula/corona/DataCollectorService;->y:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-static {p0}, Lj/b/a/a0;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "settings"

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firstland"

    .line 4
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    invoke-virtual {p0}, Lno/simula/corona/MainActivity;->n()V

    return-void

    .line 7
    :cond_0
    invoke-static {p0}, Lj/b/a/a0;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lno/simula/corona/DataCollectorService;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 8
    invoke-static {p0, v0}, Lj/b/a/a0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p0}, Lj/b/a/a0;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {p0}, Lno/simula/corona/DataCollectorService;->a(Landroid/content/Context;)V

    .line 11
    :cond_1
    invoke-static {p0}, Lj/b/a/a0;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {p0}, Lno/simula/corona/DataCollectorService;->b(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public final m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    sget-object v2, Ll/a/a;->d:Ll/a/a$b;

    const-string v3, "Service is null, cannot toggle state"

    invoke-virtual {v2, v3, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    invoke-static {p0}, Lj/b/a/a0;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lno/simula/corona/DataCollectorService;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cannot start location monitoring before consenting"

    .line 4
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    .line 6
    :cond_1
    invoke-static {p0}, Lj/b/a/a0;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lno/simula/corona/ui/register/RegisterActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 9
    :cond_2
    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lno/simula/corona/DataCollectorService;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    invoke-static {p0, v0}, Lj/b/a/a0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lno/simula/corona/MainActivity;->n()V

    return v1

    :cond_3
    return v2
.end method

.method public final n()V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "settings"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dont-ask-again"

    .line 2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v1, :cond_1

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v1, v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lno/simula/corona/MainActivity$b;

    invoke-direct {v1, v0, p0}, Lno/simula/corona/MainActivity$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v4, v1}, Lno/simula/corona/MainActivity;->a(ZLh/k/a/a;)V

    return-void

    .line 6
    :cond_0
    new-instance v1, Lno/simula/corona/MainActivity$b;

    invoke-direct {v1, v4, p0}, Lno/simula/corona/MainActivity$b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lno/simula/corona/MainActivity;->a(ZLh/k/a/a;)V

    return-void

    .line 7
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 8
    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 9
    sget v1, Lj/b/a/a0;->c:I

    .line 10
    invoke-static {p0, v0, v1}, Ld/i/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 11
    :cond_2
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    .line 12
    sget v1, Lj/b/a/a0;->c:I

    .line 13
    invoke-static {p0, v0, v1}, Ld/i/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Ld/b/a/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 2
    invoke-virtual {p0, p1}, Ld/b/a/h;->setContentView(I)V

    .line 3
    sget p1, Lno/simula/corona/R$id;->toolbar:I

    .line 4
    iget-object v0, p0, Lno/simula/corona/MainActivity;->B:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/simula/corona/MainActivity;->B:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lno/simula/corona/MainActivity;->B:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ld/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lno/simula/corona/MainActivity;->B:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 6
    invoke-virtual {p0}, Ld/b/a/h;->j()Ld/b/a/j;

    move-result-object p1

    check-cast p1, Ld/b/a/k;

    .line 7
    iget-object v1, p1, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Ld/b/a/k;->k()V

    .line 9
    iget-object v1, p1, Ld/b/a/k;->E:Ld/b/a/a;

    .line 10
    instance-of v3, v1, Ld/b/a/v;

    if-nez v3, :cond_9

    .line 11
    iput-object v2, p1, Ld/b/a/k;->F:Landroid/view/MenuInflater;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1}, Ld/b/a/a;->f()V

    :cond_3
    if-eqz v0, :cond_5

    .line 13
    new-instance v1, Ld/b/a/s;

    .line 14
    iget-object v3, p1, Ld/b/a/k;->z:Ljava/lang/Object;

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_4

    .line 15
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 16
    :cond_4
    iget-object v3, p1, Ld/b/a/k;->G:Ljava/lang/CharSequence;

    .line 17
    :goto_0
    iget-object v4, p1, Ld/b/a/k;->C:Ld/b/a/k$e;

    invoke-direct {v1, v0, v3, v4}, Ld/b/a/s;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 18
    iput-object v1, p1, Ld/b/a/k;->E:Ld/b/a/a;

    .line 19
    iget-object v0, p1, Ld/b/a/k;->B:Landroid/view/Window;

    .line 20
    iget-object v1, v1, Ld/b/a/s;->c:Landroid/view/Window$Callback;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1

    .line 22
    :cond_5
    iput-object v2, p1, Ld/b/a/k;->E:Ld/b/a/a;

    .line 23
    iget-object v0, p1, Ld/b/a/k;->B:Landroid/view/Window;

    iget-object v1, p1, Ld/b/a/k;->C:Ld/b/a/k$e;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 24
    :goto_1
    invoke-virtual {p1}, Ld/b/a/k;->b()V

    :goto_2
    const p1, 0x7f0a00c3

    .line 25
    invoke-virtual {p0, p1}, Ld/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.nav_view)"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v0, 0x7f0a00c1

    .line 26
    invoke-static {p0, v0}, Ld/b/a/r;->a(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Integer;

    const v4, 0x7f0a00c7

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0a00c5

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v6, 0x2

    const v8, 0x7f0a00c6

    .line 29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    .line 30
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-static {v1}, Le/c/a/a/b/l/c;->b(I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_6

    .line 31
    aget-object v9, v3, v8

    .line 32
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 33
    :cond_6
    sget-object v1, Lno/simula/corona/MainActivity$d;->x:Lno/simula/corona/MainActivity$d;

    .line 34
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 35
    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 36
    new-instance v6, Lj/b/a/q;

    invoke-direct {v6, v1}, Lj/b/a/q;-><init>(Lh/k/a/a;)V

    .line 37
    new-instance v1, Ld/s/s/c;

    invoke-direct {v1, v3, v2, v6, v2}, Ld/s/s/c;-><init>(Ljava/util/Set;Ld/l/a/a;Ld/s/s/c$b;Ld/s/s/c$a;)V

    const-string v3, "AppBarConfiguration.Buil\u2026eUpListener)\n    .build()"

    .line 38
    invoke-static {v1, v3}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    .line 39
    new-instance v3, Ld/s/s/b;

    invoke-direct {v3, p0, v1}, Ld/s/s/b;-><init>(Ld/b/a/h;Ld/s/s/c;)V

    invoke-virtual {v0, v3}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$b;)V

    .line 40
    new-instance v1, Ld/s/s/d;

    invoke-direct {v1, v0}, Ld/s/s/d;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;)V

    .line 41
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    new-instance p1, Ld/s/s/e;

    invoke-direct {p1, v1, v0}, Ld/s/s/e;-><init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;)V

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController;->a(Landroidx/navigation/NavController$b;)V

    .line 43
    iget-object p1, v0, Landroidx/navigation/NavController;->c:Ld/s/m;

    if-nez p1, :cond_7

    .line 44
    new-instance p1, Ld/s/m;

    iget-object v1, v0, Landroidx/navigation/NavController;->a:Landroid/content/Context;

    iget-object v3, v0, Landroidx/navigation/NavController;->k:Ld/s/q;

    invoke-direct {p1, v1, v3}, Ld/s/m;-><init>(Landroid/content/Context;Ld/s/q;)V

    iput-object p1, v0, Landroidx/navigation/NavController;->c:Ld/s/m;

    .line 45
    :cond_7
    iget-object p1, v0, Landroidx/navigation/NavController;->c:Ld/s/m;

    const/high16 v0, 0x7f100000

    .line 46
    invoke-virtual {p1, v0}, Ld/s/m;->a(I)Ld/s/j;

    move-result-object p1

    const-string v0, "navController.navInflate\u2026te(R.navigation.main_nav)"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput v4, p1, Ld/s/j;->G:I

    .line 48
    iput-object v2, p1, Ld/s/j;->H:Ljava/lang/String;

    new-array p1, v7, [Ljava/lang/Object;

    .line 49
    invoke-static {p0}, Lj/b/a/a0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    .line 50
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    const-string v1, "My device id is: %s"

    invoke-virtual {v0, v1, p1}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    const-string p1, "navController"

    .line 51
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "permissions"

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    .line 1
    sget v0, Lj/b/a/a0;->c:I

    if-ne p1, v0, :cond_4

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    array-length v0, p2

    const-string v2, "granted"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    const-string v0, "none"

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p2, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p3, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    aget-object v0, p2, v3

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p3, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_2

    const-string v0, "Permission Response"

    .line 10
    invoke-static {v0, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    invoke-static {p2, p1}, Le/c/a/a/b/l/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 12
    aget p1, p3, p1

    if-nez p1, :cond_3

    .line 13
    invoke-virtual {p0}, Lno/simula/corona/MainActivity;->l()V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p0, v4}, Lj/b/a/a0;->c(Landroid/content/Context;Z)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "grantResults"

    .line 15
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Ld/b/a/h;->onStart()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lno/simula/corona/DataCollectorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lno/simula/corona/MainActivity;->A:Lno/simula/corona/MainActivity$c;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lno/simula/corona/MainActivity;->A:Lno/simula/corona/MainActivity$c;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    :cond_0
    invoke-super {p0}, Ld/b/a/h;->onStop()V

    return-void
.end method
