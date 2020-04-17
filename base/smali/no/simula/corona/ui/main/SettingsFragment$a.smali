.class public final Lno/simula/corona/ui/main/SettingsFragment$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/ui/main/SettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->x:I

    iput-object p2, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->x:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_6

    .line 1
    iget-object p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/SettingsFragment;

    .line 2
    iget v1, p1, Lno/simula/corona/ui/main/SettingsFragment;->F:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/content/ClipboardManager;

    .line 4
    iget-object v0, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast v0, Lno/simula/corona/ui/main/SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "context!!"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v3, "settings"

    .line 5
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, ""

    const-string v4, "device-id-string"

    .line 6
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v3, v0

    .line 7
    :cond_0
    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 9
    iget-object p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "Copied device id"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 10
    iget-object p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/SettingsFragment;

    .line 11
    iput v1, p1, Lno/simula/corona/ui/main/SettingsFragment;->F:I

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lh/k/b/g;->a()V

    throw v2

    .line 13
    :cond_2
    invoke-static {}, Lh/k/b/g;->a()V

    throw v2

    .line 14
    :cond_3
    new-instance p1, Lh/e;

    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-direct {p1, v0}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {}, Lh/k/b/g;->a()V

    throw v2

    .line 15
    :cond_5
    iget-object p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/SettingsFragment;

    .line 16
    iget v1, p1, Lno/simula/corona/ui/main/SettingsFragment;->F:I

    add-int/2addr v1, v0

    .line 17
    iput v1, p1, Lno/simula/corona/ui/main/SettingsFragment;->F:I

    :goto_0
    return-void

    .line 18
    :cond_6
    throw v2

    .line 19
    :cond_7
    iget-object p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/SettingsFragment;

    invoke-static {p1}, Lno/simula/corona/ui/main/SettingsFragment;->e(Lno/simula/corona/ui/main/SettingsFragment;)V

    return-void

    .line 20
    :cond_8
    iget-object p1, p0, Lno/simula/corona/ui/main/SettingsFragment$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/ui/main/SettingsFragment;

    invoke-static {p1}, Lno/simula/corona/ui/main/SettingsFragment;->b(Lno/simula/corona/ui/main/SettingsFragment;)V

    return-void
.end method
