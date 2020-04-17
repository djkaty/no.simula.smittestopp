.class public final Lj/b/a/d0/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "location_mode"

    .line 2
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string p0, "context"

    .line 3
    invoke-static {p0}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object p2

    new-instance v0, Lj/b/a/c0/d;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lj/b/a/d0/a;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v0, p1}, Lj/b/a/c0/d;-><init>(Z)V

    invoke-virtual {p2, v0}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/k/b/g;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
