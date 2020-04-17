.class public final Lno/simula/corona/ui/main/SettingsFragment;
.super Lno/simula/corona/ui/main/ControlFragmentBase;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final C:I

.field public final D:I

.field public E:Lcom/android/volley/RequestQueue;

.field public F:I

.field public G:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;-><init>()V

    const/16 v0, 0x15

    .line 2
    iput v0, p0, Lno/simula/corona/ui/main/SettingsFragment;->C:I

    const/16 v0, 0x7b

    .line 3
    iput v0, p0, Lno/simula/corona/ui/main/SettingsFragment;->D:I

    return-void
.end method

.method public static final synthetic a(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "Start Delete Everything"

    .line 7
    invoke-static {v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 8
    sget v0, Lno/simula/corona/R$id;->delete_data_button:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "delete_data_button"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f12004b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/m/a/c;

    move-result-object v1

    const-class v2, Lno/simula/corona/ui/register/PhoneVerificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    iget v1, p0, Lno/simula/corona/ui/main/SettingsFragment;->D:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 11
    throw p0
.end method

.method public static final synthetic a(Lno/simula/corona/ui/main/SettingsFragment;Lcom/android/volley/VolleyError;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, p1}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "where"

    const-string v3, "deleteEverythingError"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, v1, v0}, Lcom/microsoft/appcenter/crashes/Crashes;->trackError(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12004a

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    sget p1, Lno/simula/corona/R$id;->delete_data_button:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "delete_data_button"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f12008b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_0
    throw v0
.end method

.method public static final synthetic a(Lno/simula/corona/ui/main/SettingsFragment;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const-string v1, "Status"

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Success"

    invoke-static {v1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1, v3}, Lj/b/a/e0/b/b;->b(Z)V

    .line 16
    :cond_1
    iget-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p1, v3}, Lj/b/a/e0/b/b;->a(Z)V

    .line 18
    :cond_2
    sget-object p1, Lno/simula/corona/MeasurementDatabase;->k:Lno/simula/corona/MeasurementDatabase$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "context!!"

    invoke-static {v1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lno/simula/corona/MeasurementDatabase$a;->a(Landroid/content/Context;)Lno/simula/corona/MeasurementDatabase;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lno/simula/corona/MeasurementDatabase;->i()Lj/b/a/s;

    move-result-object v1

    check-cast v1, Lj/b/a/t;

    invoke-virtual {v1}, Lj/b/a/t;->a()V

    .line 20
    invoke-virtual {p1}, Lno/simula/corona/MeasurementDatabase;->h()Lj/b/a/b;

    move-result-object p1

    check-cast p1, Lj/b/a/c;

    invoke-virtual {p1}, Lj/b/a/c;->a()V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lj/b/a/a0;->b(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->d()V

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    .line 24
    :cond_4
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    .line 25
    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 26
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, p1, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12004a

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 28
    sget p1, Lno/simula/corona/R$id;->delete_data_button:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "delete_data_button"

    invoke-static {p1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f12008b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 29
    :cond_6
    throw v0
.end method

.method public static final synthetic b(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 2

    if-eqz p0, :cond_0

    const v0, 0x7f12001f

    const v1, 0x7f120022

    .line 1
    invoke-static {v0, v1}, Lno/simula/corona/ui/dialogs/CoronaDialog;->a(II)Lno/simula/corona/ui/dialogs/CoronaDialog;

    move-result-object v0

    .line 2
    new-instance v1, Lj/b/a/e0/b/d;

    invoke-direct {v1, p0}, Lj/b/a/e0/b/d;-><init>(Lno/simula/corona/ui/main/SettingsFragment;)V

    .line 3
    iput-object v1, v0, Lno/simula/corona/ui/dialogs/CoronaDialog;->K:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/m/a/p;

    move-result-object p0

    const-string v1, "dlg_delete"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->a(Ld/m/a/p;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static final synthetic c(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lj/b/a/e0/b/b;->b(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, v1}, Lj/b/a/e0/b/b;->a(Z)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "context!!"

    invoke-static {v0, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "settings"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "connection-data"

    .line 8
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "device-id-string"

    .line 9
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "phone-number"

    .line 10
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "token"

    .line 11
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "timestamp"

    .line 12
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "firstland"

    .line 13
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "host-name"

    .line 14
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "access-key"

    .line 15
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->d()V

    return-void

    .line 18
    :cond_2
    invoke-static {}, Lh/k/b/g;->a()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic d(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lno/simula/corona/ui/main/SettingsFragment;->C:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic e(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f120090

    const v1, 0x7f120021

    .line 5
    invoke-static {v0, v1}, Lno/simula/corona/ui/dialogs/CoronaDialog;->a(II)Lno/simula/corona/ui/dialogs/CoronaDialog;

    move-result-object v0

    .line 6
    new-instance v1, Lj/b/a/e0/b/e;

    invoke-direct {v1, p0}, Lj/b/a/e0/b/e;-><init>(Lno/simula/corona/ui/main/SettingsFragment;)V

    .line 7
    iput-object v1, v0, Lno/simula/corona/ui/dialogs/CoronaDialog;->K:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/m/a/p;

    move-result-object p0

    const-string v1, "dialog_signout"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->a(Ld/m/a/p;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final synthetic f(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f12009f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lh/k/b/g;->a()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lno/simula/corona/ui/main/SettingsFragment;->G:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/simula/corona/ui/main/SettingsFragment;->G:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lno/simula/corona/ui/main/SettingsFragment;->G:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lno/simula/corona/ui/main/SettingsFragment;->G:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lno/simula/corona/ui/main/SettingsFragment;->G:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/m/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 7
    :cond_0
    sget v0, Lno/simula/corona/R$id;->bluetoothSwith:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    sget v0, Lno/simula/corona/R$id;->gpsSwitch:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    sget v0, Lno/simula/corona/R$id;->bluetoothSwith:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string v1, "bluetoothSwith"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 12
    sget v0, Lno/simula/corona/R$id;->gpsSwitch:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string v1, "gpsSwitch"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 15
    sget v0, Lno/simula/corona/R$id;->bluetoothSwith:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    sget v0, Lno/simula/corona/R$id;->gpsSwitch:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 19
    iget-boolean v0, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->y:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz v0, :cond_1

    .line 21
    iget-boolean v1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    xor-int/lit8 v1, v1, 0x1

    .line 22
    invoke-interface {v0, v1}, Lj/b/a/e0/b/b;->a(Z)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 23
    iget-boolean v0, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    if-nez v0, :cond_1

    .line 24
    sget v0, Lno/simula/corona/R$id;->bluetoothSwith:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    const-string v1, "bluetoothSwith"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const v0, 0x7f12001f

    const v1, 0x7f120024

    .line 25
    invoke-static {v0, v1}, Lno/simula/corona/ui/dialogs/CoronaDialog;->a(II)Lno/simula/corona/ui/dialogs/CoronaDialog;

    move-result-object v0

    .line 26
    new-instance v1, Lj/b/a/e0/b/c;

    invoke-direct {v1, p0}, Lj/b/a/e0/b/c;-><init>(Lno/simula/corona/ui/main/SettingsFragment;)V

    .line 27
    iput-object v1, v0, Lno/simula/corona/ui/dialogs/CoronaDialog;->K:Landroid/content/DialogInterface$OnClickListener;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Ld/m/a/p;

    move-result-object v1

    const-string v2, "dialog_bt_on"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->a(Ld/m/a/p;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/m/a/c;

    move-result-object v1

    const-class v2, Lno/simula/corona/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deleted"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/m/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    const-string v2, "Verification not OK -> No Delete"

    invoke-virtual {v1, v2, v0}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200a1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    sget v0, Lno/simula/corona/R$id;->delete_data_button:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "delete_data_button"

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f12008b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget v0, p0, Lno/simula/corona/ui/main/SettingsFragment;->D:I

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p2, "token"

    .line 3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_2

    .line 4
    new-instance p2, Lj/b/a/e0/b/f;

    .line 5
    new-instance v6, Lj/b/a/e0/b/g;

    invoke-direct {v6, p0}, Lj/b/a/e0/b/g;-><init>(Lno/simula/corona/ui/main/SettingsFragment;)V

    .line 6
    new-instance v7, Lj/b/a/e0/b/h;

    invoke-direct {v7, p0}, Lj/b/a/e0/b/h;-><init>(Lno/simula/corona/ui/main/SettingsFragment;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v4, "https://api-smittestopp-prod.azure-api.net/permissions/revoke-consent"

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lj/b/a/e0/b/f;-><init>(Lno/simula/corona/ui/main/SettingsFragment;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 7
    new-instance p3, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v0, 0x0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {p3, v1, v0, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 8
    invoke-virtual {p2, p3}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 9
    iget-object p3, p0, Lno/simula/corona/ui/main/SettingsFragment;->E:Lcom/android/volley/RequestQueue;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    new-array p1, v0, [Ljava/lang/Object;

    .line 10
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string p3, "Verification OK -> Delete"

    invoke-virtual {p2, p3, p1}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p2, "mQueue"

    .line 11
    invoke-static {p2}, Lh/k/b/g;->b(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "Got null token"

    .line 12
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->e()V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 14
    sget p1, Lno/simula/corona/R$id;->delete_data_button:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string p2, "delete_data_button"

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f12008b

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const-string p1, "Get token error"

    .line 15
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->e()V

    :goto_1
    return-void

    .line 17
    :cond_5
    iget p2, p0, Lno/simula/corona/ui/main/SettingsFragment;->C:I

    if-ne p1, p2, :cond_6

    .line 18
    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->c()V

    :cond_6
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const v0, 0x7f0a0096

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 3
    iget-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->z:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_6

    .line 5
    iget-boolean p2, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    xor-int/2addr p2, v0

    .line 6
    invoke-interface {p1, p2}, Lj/b/a/e0/b/b;->b(Z)V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_6

    .line 7
    iget-boolean p1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    if-nez p1, :cond_6

    .line 8
    sget p1, Lno/simula/corona/R$id;->gpsSwitch:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    const-string v1, "gpsSwitch"

    invoke-static {p1, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    const p2, 0x7f1200a0

    .line 10
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    .line 12
    invoke-virtual {p1, p2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 13
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {}, Lh/k/b/g;->a()V

    throw p2

    :cond_4
    :goto_1
    const p2, 0x7f0a004e

    if-nez p1, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_6

    .line 16
    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->c()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p3

    const-string v0, "Volley.newRequestQueue(context)"

    invoke-static {p3, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lno/simula/corona/ui/main/SettingsFragment;->E:Lcom/android/volley/RequestQueue;

    const p3, 0x7f0d003a

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "inflater"

    .line 3
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;->onDestroyView()V

    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->a()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-super {p0, p1, p2}, Lno/simula/corona/ui/main/ControlFragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lno/simula/corona/R$id;->support_email:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "support_email"

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f120072

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "getString(R.string.not_registered)"

    invoke-static {p2, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "context!!"

    invoke-static {p2, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    .line 6
    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, ""

    const-string v1, "phone-number"

    .line 7
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lh/k/b/g;->a()V

    throw v0

    .line 9
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v3, "phone_number"

    if-eqz v0, :cond_4

    .line 10
    sget p2, Lno/simula/corona/R$id;->phone_number:I

    invoke-virtual {p0, p2}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_4
    sget p1, Lno/simula/corona/R$id;->phone_number:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_2
    sget p1, Lno/simula/corona/R$id;->app_version:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "app_version"

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "v1.0.2"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget p1, Lno/simula/corona/R$id;->delete_data_button:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lno/simula/corona/ui/main/SettingsFragment$a;

    invoke-direct {p2, v2, p0}, Lno/simula/corona/ui/main/SettingsFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget p1, Lno/simula/corona/R$id;->logout_button:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lno/simula/corona/ui/main/SettingsFragment$a;

    invoke-direct {p2, v1, p0}, Lno/simula/corona/ui/main/SettingsFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput v2, p0, Lno/simula/corona/ui/main/SettingsFragment;->F:I

    .line 16
    sget p1, Lno/simula/corona/R$id;->account:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lno/simula/corona/ui/main/SettingsFragment$a;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lno/simula/corona/ui/main/SettingsFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Lno/simula/corona/ui/main/SettingsFragment;->b()V

    return-void

    :cond_5
    const-string p1, "view"

    .line 18
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
