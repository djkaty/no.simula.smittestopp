.class public final Lno/simula/corona/ui/main/MainFragment;
.super Lno/simula/corona/ui/main/ControlFragmentBase;
.source "SourceFile"

# interfaces
.implements Lj/b/a/e0/b/a;


# instance fields
.field public C:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lno/simula/corona/ui/main/MainFragment;->C:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lno/simula/corona/ui/main/MainFragment;->C:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lno/simula/corona/ui/main/MainFragment;->C:Ljava/util/HashMap;

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

    iget-object v1, p0, Lno/simula/corona/ui/main/MainFragment;->C:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lno/simula/corona/ui/main/MainFragment;->C:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ld/m/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p2

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_1
    sget p2, Lno/simula/corona/R$id;->imageBluetooth:I

    invoke-virtual {p0, p2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-nez v1, :cond_2

    const v0, 0x7f08008d

    goto :goto_2

    :cond_2
    const v0, 0x7f08008b

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 4
    :cond_3
    new-instance p2, Lh/e;

    const-string v0, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-direct {p2, v0}, Lh/e;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 5
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v0, p2}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    .line 6
    :goto_3
    :try_start_1
    sget p2, Lno/simula/corona/R$id;->imageGps:I

    invoke-virtual {p0, p2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-nez p1, :cond_4

    const p1, 0x7f080096

    goto :goto_4

    :cond_4
    const p1, 0x7f080095

    :goto_4
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 7
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {p2, p1}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    .line 2
    iget-boolean v0, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    .line 3
    iget-boolean v1, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    .line 4
    invoke-virtual {p0, v0, v1}, Lno/simula/corona/ui/main/MainFragment;->a(ZZ)V

    .line 5
    invoke-virtual {p0}, Lno/simula/corona/ui/main/MainFragment;->c()V

    return-void
.end method

.method public final c()V
    .locals 10

    const-string v0, "buttonShare"

    const-string v1, "buttonSettings"

    .line 1
    :try_start_0
    sget v2, Lno/simula/corona/R$id;->buttonSettings:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    sget v2, Lno/simula/corona/R$id;->buttonShare:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    sget v2, Lno/simula/corona/R$id;->enableTracking:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4
    iget-boolean v2, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    const v3, 0x7f120097

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 5
    iget-boolean v2, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    if-eqz v2, :cond_1

    .line 6
    sget v1, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120053

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget v1, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const v4, 0x7f060057

    invoke-static {v2, v4}, Ld/i/b/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    sget v1, Lno/simula/corona/R$id;->textViewTitle:I

    invoke-virtual {p0, v1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v1, Lno/simula/corona/R$id;->textViewStatus:I

    invoke-virtual {p0, v1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120067

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget v1, Lno/simula/corona/R$id;->buttonShare:I

    invoke-virtual {p0, v1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-static {}, Lh/k/b/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v4

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 12
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    const v6, 0x7f120044

    const v7, 0x7f120043

    const v8, 0x7f12007a

    const v9, 0x7f06008b

    if-eqz v2, :cond_3

    .line 13
    iget-boolean v2, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    if-nez v2, :cond_3

    .line 14
    sget v0, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget v0, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, v9}, Ld/i/b/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    sget v0, Lno/simula/corona/R$id;->textViewTitle:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f120059

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    sget v0, Lno/simula/corona/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    sget v0, Lno/simula/corona/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget v0, Lno/simula/corona/R$id;->buttonSettings:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 20
    :cond_2
    invoke-static {}, Lh/k/b/g;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    throw v4

    .line 21
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->A:Z

    if-nez v2, :cond_5

    .line 22
    iget-boolean v2, p0, Lno/simula/corona/ui/main/ControlFragmentBase;->B:Z

    if-eqz v2, :cond_5

    .line 23
    sget v0, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    sget v0, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2, v9}, Ld/i/b/a;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    sget v0, Lno/simula/corona/R$id;->textViewTitle:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    sget v0, Lno/simula/corona/R$id;->textViewStatus:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    sget v0, Lno/simula/corona/R$id;->textViewTitle:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f12002b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    sget v0, Lno/simula/corona/R$id;->buttonSettings:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 29
    :cond_4
    invoke-static {}, Lh/k/b/g;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    throw v4

    .line 30
    :cond_5
    :try_start_3
    sget v2, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f120049

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    sget v2, Lno/simula/corona/R$id;->textViewMainStatus:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v6, v9}, Ld/i/b/a;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    sget v2, Lno/simula/corona/R$id;->textViewTitle:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget v2, Lno/simula/corona/R$id;->textViewStatus:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget v2, Lno/simula/corona/R$id;->textViewTitle:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120058

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    sget v2, Lno/simula/corona/R$id;->buttonShare:I

    invoke-virtual {p0, v2}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    sget v0, Lno/simula/corona/R$id;->enableTracking:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v2, 0x7f08009b

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 37
    sget v0, Lno/simula/corona/R$id;->buttonSettings:I

    invoke-virtual {p0, v0}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 38
    :cond_6
    invoke-static {}, Lh/k/b/g;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    throw v4

    .line 39
    :goto_0
    sget-object v1, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v1, v0}, Ll/a/a$b;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-super {p0, p1}, Lno/simula/corona/ui/main/MainBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lj/b/a/e0/b/b;->a(Lj/b/a/e0/b/a;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "context"

    .line 4
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    const p3, 0x7f0d0037

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "inflater"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lno/simula/corona/ui/main/ControlFragmentBase;->onDestroyView()V

    invoke-virtual {p0}, Lno/simula/corona/ui/main/MainFragment;->a()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    iget-object v0, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lj/b/a/e0/b/b;->a(Lj/b/a/e0/b/a;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-super {p0, p1, p2}, Lno/simula/corona/ui/main/ControlFragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lno/simula/corona/R$id;->enableTracking:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance p2, Lno/simula/corona/ui/main/MainFragment$a;

    const/4 v1, 0x0

    invoke-direct {p2, v1, p0}, Lno/simula/corona/ui/main/MainFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget p1, Lno/simula/corona/R$id;->imageGps:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lno/simula/corona/ui/main/MainFragment$a;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p0}, Lno/simula/corona/ui/main/MainFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p1, Lno/simula/corona/R$id;->imageBluetooth:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Lno/simula/corona/ui/main/MainFragment$a;

    const/4 v2, 0x2

    invoke-direct {p2, v2, p0}, Lno/simula/corona/ui/main/MainFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget p1, Lno/simula/corona/R$id;->buttonShare:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lno/simula/corona/ui/main/MainFragment$a;

    const/4 v2, 0x3

    invoke-direct {p2, v2, p0}, Lno/simula/corona/ui/main/MainFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p1, Lno/simula/corona/R$id;->buttonSettings:I

    invoke-virtual {p0, p1}, Lno/simula/corona/ui/main/MainFragment;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lno/simula/corona/ui/main/MainFragment$a;

    const/4 v2, 0x4

    invoke-direct {p2, v2, p0}, Lno/simula/corona/ui/main/MainFragment$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Lj/b/a/e0/b/b;->i()Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 9
    iget-object p2, p0, Lno/simula/corona/ui/main/MainBaseFragment;->x:Lj/b/a/e0/b/b;

    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p2}, Lj/b/a/e0/b/b;->b()Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lno/simula/corona/ui/main/MainFragment;->a(ZZ)V

    .line 11
    invoke-virtual {p0}, Lno/simula/corona/ui/main/MainFragment;->c()V

    return-void

    :cond_2
    const-string p1, "view"

    .line 12
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
