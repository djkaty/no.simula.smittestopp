.class public Le/c/a/a/b/d;
.super Le/c/a/a/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/b/d$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;

.field public static final c:Le/c/a/a/b/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/c/a/a/b/d;->b:Ljava/lang/Object;

    .line 2
    new-instance v0, Le/c/a/a/b/d;

    invoke-direct {v0}, Le/c/a/a/b/d;-><init>()V

    sput-object v0, Le/c/a/a/b/d;->c:Le/c/a/a/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)I
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Le/c/a/a/b/e;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2, p3}, Le/c/a/a/b/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Le/c/a/a/b/d;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 43
    new-instance p2, Le/c/a/a/b/d$a;

    invoke-direct {p2, p0, p1}, Le/c/a/a/b/d$a;-><init>(Le/c/a/a/b/d;Landroid/content/Context;)V

    const-wide/32 v1, 0x1d4c0

    .line 44
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v1, 0x6

    if-nez p3, :cond_2

    if-ne p2, v1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    const-string v2, "common_google_play_services_resolution_required_title"

    .line 46
    invoke-static {p1, v2}, Le/c/a/a/b/j/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1, p2}, Le/c/a/a/b/j/e;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_4

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-ne p2, v1, :cond_5

    .line 50
    invoke-static {p1}, Le/c/a/a/b/j/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "common_google_play_services_resolution_required_text"

    .line 51
    invoke-static {p1, v3, v1}, Le/c/a/a/b/j/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 52
    :cond_5
    invoke-static {p1, p2}, Le/c/a/a/b/j/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification"

    .line 54
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 55
    new-instance v5, Ld/i/a/g;

    invoke-direct {v5, p1}, Ld/i/a/g;-><init>(Landroid/content/Context;)V

    .line 56
    iput-boolean v0, v5, Ld/i/a/g;->x:Z

    .line 57
    invoke-virtual {v5, v0}, Ld/i/a/g;->a(Z)Ld/i/a/g;

    .line 58
    invoke-virtual {v5, v2}, Ld/i/a/g;->b(Ljava/lang/CharSequence;)Ld/i/a/g;

    new-instance v2, Ld/i/a/f;

    invoke-direct {v2}, Ld/i/a/f;-><init>()V

    .line 59
    invoke-static {v1}, Ld/i/a/g;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Ld/i/a/f;->c:Ljava/lang/CharSequence;

    .line 60
    iget-object v6, v5, Ld/i/a/g;->o:Ld/i/a/h;

    if-eq v6, v2, :cond_6

    .line 61
    iput-object v2, v5, Ld/i/a/g;->o:Ld/i/a/h;

    .line 62
    iget-object v6, v2, Ld/i/a/h;->a:Ld/i/a/g;

    if-eq v6, v5, :cond_6

    .line 63
    iput-object v5, v2, Ld/i/a/h;->a:Ld/i/a/g;

    .line 64
    invoke-virtual {v5, v2}, Ld/i/a/g;->a(Ld/i/a/h;)Ld/i/a/g;

    .line 65
    :cond_6
    invoke-static {p1}, Le/c/a/a/b/l/c;->a(Landroid/content/Context;)Z

    move-result v2

    const/4 v6, 0x2

    if-eqz v2, :cond_8

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 67
    iget-object v2, v5, Ld/i/a/g;->O:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    .line 68
    iput v6, v5, Ld/i/a/g;->l:I

    .line 69
    invoke-static {p1}, Le/c/a/a/b/l/c;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    sget v1, Lcom/google/android/gms/base/R$drawable;->common_full_open_on_phone:I

    sget v2, Lcom/google/android/gms/base/R$string;->common_open_on_phone:I

    .line 71
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v5, v1, v2, p3}, Ld/i/a/g;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ld/i/a/g;

    goto :goto_2

    .line 73
    :cond_7
    iput-object p3, v5, Ld/i/a/g;->f:Landroid/app/PendingIntent;

    goto :goto_2

    :cond_8
    const v2, 0x108008a

    .line 74
    iget-object v7, v5, Ld/i/a/g;->O:Landroid/app/Notification;

    iput v2, v7, Landroid/app/Notification;->icon:I

    .line 75
    sget v2, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 76
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object v3, v5, Ld/i/a/g;->O:Landroid/app/Notification;

    invoke-static {v2}, Ld/i/a/g;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 79
    iget-object v7, v5, Ld/i/a/g;->O:Landroid/app/Notification;

    iput-wide v2, v7, Landroid/app/Notification;->when:J

    .line 80
    iput-object p3, v5, Ld/i/a/g;->f:Landroid/app/PendingIntent;

    .line 81
    invoke-virtual {v5, v1}, Ld/i/a/g;->a(Ljava/lang/CharSequence;)Ld/i/a/g;

    .line 82
    :goto_2
    invoke-static {}, Le/c/a/a/b/l/c;->c()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 83
    invoke-static {}, Le/c/a/a/b/l/c;->c()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 84
    invoke-virtual {p0}, Le/c/a/a/b/d;->a()Ljava/lang/String;

    const-string p3, "com.google.android.gms.availability"

    .line 85
    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 86
    invoke-static {p1}, Le/c/a/a/b/j/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_9

    .line 87
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x4

    invoke-direct {v1, p3, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_3

    .line 88
    :cond_9
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 89
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 91
    :cond_a
    :goto_3
    iput-object p3, v5, Ld/i/a/g;->I:Ljava/lang/String;

    goto :goto_4

    .line 92
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 93
    :cond_c
    :goto_4
    invoke-virtual {v5}, Ld/i/a/g;->a()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v0, :cond_d

    if-eq p2, v6, :cond_d

    const/4 p3, 0x3

    if-eq p2, p3, :cond_d

    const p2, 0x9b6d

    goto :goto_5

    :cond_d
    const/16 p2, 0x28c4

    .line 94
    sget-object p3, Le/c/a/a/b/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    :goto_5
    invoke-virtual {v4, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 5

    const-string v0, "d"

    .line 6
    invoke-super {p0, p1, p2, v0}, Le/c/a/a/b/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    new-instance v1, Le/c/a/a/b/j/u;

    invoke-direct {v1, v0, p1, p3}, Le/c/a/a/b/j/u;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto/16 :goto_2

    .line 8
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010309

    invoke-virtual {v3, v4, v2, p3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Theme.Dialog.Alert"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    .line 13
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    :cond_2
    invoke-static {p1, p2}, Le/c/a/a/b/j/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_3

    .line 15
    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eq p2, p3, :cond_6

    const/4 v4, 0x2

    if-eq p2, v4, :cond_5

    const/4 v4, 0x3

    if-eq p2, v4, :cond_4

    const v4, 0x104000a

    .line 17
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 18
    :cond_4
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 19
    :cond_5
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 20
    :cond_6
    sget v4, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_7

    .line 21
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 22
    :cond_7
    invoke-static {p1, p2}, Le/c/a/a/b/j/e;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 23
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 24
    :cond_8
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    :goto_2
    if-nez p2, :cond_9

    const/4 p1, 0x0

    return p1

    :cond_9
    const-string v1, "GooglePlayServicesErrorDialog"

    .line 25
    instance-of v2, p1, Ld/m/a/c;

    const-string v3, "Cannot display null dialog"

    if-eqz v2, :cond_b

    .line 26
    check-cast p1, Ld/m/a/c;

    .line 27
    invoke-virtual {p1}, Ld/m/a/c;->getSupportFragmentManager()Ld/m/a/p;

    move-result-object p1

    .line 28
    new-instance v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;

    invoke-direct {v2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;-><init>()V

    .line 29
    invoke-static {p2, v3}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 31
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    iput-object p2, v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;->K:Landroid/app/Dialog;

    if-eqz p4, :cond_a

    .line 33
    iput-object p4, v2, Lcom/google/android/gms/common/SupportErrorDialogFragment;->L:Landroid/content/DialogInterface$OnCancelListener;

    .line 34
    :cond_a
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->a(Ld/m/a/p;Ljava/lang/String;)V

    goto :goto_3

    .line 35
    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 36
    new-instance v2, Le/c/a/a/b/b;

    invoke-direct {v2}, Le/c/a/a/b/b;-><init>()V

    .line 37
    invoke-static {p2, v3}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 40
    iput-object p2, v2, Le/c/a/a/b/b;->x:Landroid/app/Dialog;

    if-eqz p4, :cond_c

    .line 41
    iput-object p4, v2, Le/c/a/a/b/b;->y:Landroid/content/DialogInterface$OnCancelListener;

    .line 42
    :cond_c
    invoke-virtual {v2, p1, v1}, Le/c/a/a/b/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_3
    return p3
.end method
