.class public Lj/a/a/a/a/a/f;
.super Lj/a/a/a/a/a/g;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/PendingIntent;

.field public b:Landroid/content/Context;

.field public c:Landroid/content/Context;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Lj/a/a/a/a/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/a/a/a/a/a/g;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a/a/a/a/a/f;->a:Landroid/app/PendingIntent;

    .line 3
    iget-wide p1, p2, Lj/a/a/a/a/a/k;->B:J

    .line 4
    iput-wide p1, p0, Lj/a/a/a/a/a/f;->e:J

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Lj/a/a/a/a/a/k;Landroid/app/Service;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lj/a/a/a/a/a/g;-><init>()V

    .line 6
    iput-object p1, p0, Lj/a/a/a/a/a/f;->a:Landroid/app/PendingIntent;

    .line 7
    iget-wide p1, p2, Lj/a/a/a/a/a/k;->B:J

    .line 8
    iput-wide p1, p0, Lj/a/a/a/a/a/f;->e:J

    .line 9
    iput-object p3, p0, Lj/a/a/a/a/a/f;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 17
    iget-object v0, p0, Lj/a/a/a/a/a/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/a/a/a/a/a/f;->c:Landroid/content/Context;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 18
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.bluetooth.le.extra.ERROR_CODE"

    .line 19
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget-object p1, p0, Lj/a/a/a/a/a/f;->a:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(ILj/a/a/a/a/a/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/a/a/a/a/a/f;->c:Landroid/content/Context;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.bluetooth.le.extra.CALLBACK_TYPE"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.bluetooth.le.extra.LIST_SCAN_RESULT"

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lj/a/a/a/a/a/f;->a:Landroid/app/PendingIntent;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/a/a/a/a/a/j;",
            ">;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lj/a/a/a/a/a/f;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/a/a/a/a/a/f;->c:Landroid/content/Context;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 10
    iget-wide v3, p0, Lj/a/a/a/a/a/f;->d:J

    iget-wide v5, p0, Lj/a/a/a/a/a/f;->e:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    return-void

    .line 11
    :cond_2
    iput-wide v1, p0, Lj/a/a/a/a/a/f;->d:J

    .line 12
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.bluetooth.le.extra.CALLBACK_TYPE"

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.bluetooth.le.extra.LIST_SCAN_RESULT"

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 15
    const-class p1, Lj/a/a/a/a/a/j;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 16
    iget-object p1, p0, Lj/a/a/a/a/a/f;->a:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
