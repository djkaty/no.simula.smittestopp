.class public final Lno/simula/corona/ui/main/MainFragment$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/ui/main/MainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic x:I

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lno/simula/corona/ui/main/MainFragment$a;->x:I

    iput-object p2, p0, Lno/simula/corona/ui/main/MainFragment$a;->y:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lno/simula/corona/ui/main/MainFragment$a;->x:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lno/simula/corona/ui/main/MainFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/MainFragment;

    .line 2
    iget-object p1, p1, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lj/b/a/e0/b/b;->h()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Lno/simula/corona/ui/main/MainFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/MainFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ld/m/a/c;

    move-result-object p1

    iget-object v0, p0, Lno/simula/corona/ui/main/MainFragment$a;->y:Ljava/lang/Object;

    check-cast v0, Lno/simula/corona/ui/main/MainFragment;

    const v1, 0x7f12001f

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/apps/details?id=no.simula.smittestopp"

    const-string v3, "android.intent.extra.TEXT"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void

    .line 11
    :cond_5
    iget-object p1, p0, Lno/simula/corona/ui/main/MainFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/MainFragment;

    .line 12
    iget-boolean v0, p1, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    if-nez v0, :cond_6

    .line 13
    iget-object p1, p1, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_6

    .line 14
    invoke-interface {p1}, Lj/b/a/e0/b/b;->h()V

    :cond_6
    return-void

    .line 15
    :cond_7
    iget-object p1, p0, Lno/simula/corona/ui/main/MainFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/MainFragment;

    .line 16
    iget-boolean v0, p1, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    if-nez v0, :cond_8

    .line 17
    iget-object p1, p1, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_8

    .line 18
    invoke-interface {p1}, Lj/b/a/e0/b/b;->h()V

    :cond_8
    return-void

    .line 19
    :cond_9
    iget-object p1, p0, Lno/simula/corona/ui/main/MainFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/MainFragment;

    .line 20
    iget-boolean v0, p1, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    if-nez v0, :cond_a

    .line 21
    iget-boolean v0, p1, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    if-nez v0, :cond_a

    .line 22
    iget-object p1, p1, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_a

    .line 23
    invoke-interface {p1}, Lj/b/a/e0/b/b;->h()V

    :cond_a
    return-void
.end method
