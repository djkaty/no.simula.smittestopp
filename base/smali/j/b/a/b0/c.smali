.class public final Lj/b/a/b0/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5b36f014

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    .line 5
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string v1, "Bluetooth is off"

    invoke-virtual {p2, v1, p1}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object p1

    new-instance p2, Lj/b/a/c0/a;

    invoke-direct {p2, v0}, Lj/b/a/c0/a;-><init>(Z)V

    invoke-virtual {p1, p2}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0xc

    if-ne p1, p2, :cond_3

    .line 7
    invoke-static {}, Lk/d/a/c;->b()Lk/d/a/c;

    move-result-object p1

    new-instance p2, Lj/b/a/c0/a;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lj/b/a/c0/a;-><init>(Z)V

    invoke-virtual {p1, p2}, Lk/d/a/c;->a(Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 8
    sget-object p2, Ll/a/a;->d:Ll/a/a$b;

    const-string v0, "Bluetooth is on"

    invoke-virtual {p2, v0, p1}, Ll/a/a$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    .line 9
    :cond_4
    invoke-static {}, Lh/k/b/g;->a()V

    const/4 p1, 0x0

    throw p1
.end method
