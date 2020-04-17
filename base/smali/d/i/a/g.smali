.class public Ld/i/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Landroid/os/Bundle;

.field public C:I

.field public D:I

.field public E:Landroid/app/Notification;

.field public F:Landroid/widget/RemoteViews;

.field public G:Landroid/widget/RemoteViews;

.field public H:Landroid/widget/RemoteViews;

.field public I:Ljava/lang/String;

.field public J:I

.field public K:Ljava/lang/String;

.field public L:J

.field public M:I

.field public N:Z

.field public O:Landroid/app/Notification;

.field public P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/i/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/i/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/app/PendingIntent;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroid/widget/RemoteViews;

.field public i:Landroid/graphics/Bitmap;

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Ld/i/a/h;

.field public p:Ljava/lang/CharSequence;

.field public q:[Ljava/lang/CharSequence;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/i/a/g;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/i/a/g;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld/i/a/g;->m:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Ld/i/a/g;->x:Z

    .line 6
    iput v1, p0, Ld/i/a/g;->C:I

    .line 7
    iput v1, p0, Ld/i/a/g;->D:I

    .line 8
    iput v1, p0, Ld/i/a/g;->J:I

    .line 9
    iput v1, p0, Ld/i/a/g;->M:I

    .line 10
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Ld/i/a/g;->O:Landroid/app/Notification;

    .line 11
    iput-object p1, p0, Ld/i/a/g;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Ld/i/a/g;->I:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 14
    iget-object p1, p0, Ld/i/a/g;->O:Landroid/app/Notification;

    const/4 v2, -0x1

    iput v2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 15
    iput v1, p0, Ld/i/a/g;->l:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/i/a/g;->P:Ljava/util/ArrayList;

    .line 17
    iput-boolean v0, p0, Ld/i/a/g;->N:Z

    return-void
.end method

.method public static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 4
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v0, Ld/i/a/g;->a:Landroid/content/Context;

    iget-object v5, v0, Ld/i/a/g;->I:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, v0, Ld/i/a/g;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    :goto_0
    iget-object v4, v0, Ld/i/a/g;->O:Landroid/app/Notification;

    .line 7
    iget-wide v5, v4, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->icon:I

    iget v7, v4, Landroid/app/Notification;->iconLevel:I

    .line 8
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 9
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v7, v0, Ld/i/a/g;->h:Landroid/widget/RemoteViews;

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->vibrate:[J

    .line 11
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->ledARGB:I

    iget v7, v4, Landroid/app/Notification;->ledOnMS:I

    iget v8, v4, Landroid/app/Notification;->ledOffMS:I

    .line 12
    invoke-virtual {v5, v6, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 13
    :goto_1
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 14
    :goto_2
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 15
    :goto_3
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v4, Landroid/app/Notification;->defaults:I

    .line 16
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v0, Ld/i/a/g;->d:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v0, Ld/i/a/g;->e:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v0, Ld/i/a/g;->j:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v0, Ld/i/a/g;->f:Landroid/app/PendingIntent;

    .line 20
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 21
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v0, Ld/i/a/g;->g:Landroid/app/PendingIntent;

    iget v10, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 22
    :goto_4
    invoke-virtual {v5, v6, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, v0, Ld/i/a/g;->i:Landroid/graphics/Bitmap;

    .line 23
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v0, Ld/i/a/g;->k:I

    .line 24
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v0, Ld/i/a/g;->r:I

    iget v10, v0, Ld/i/a/g;->s:I

    iget-boolean v11, v0, Ld/i/a/g;->t:Z

    .line 25
    invoke-virtual {v5, v6, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 26
    iget-object v5, v0, Ld/i/a/g;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-boolean v6, v0, Ld/i/a/g;->n:Z

    .line 27
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget v6, v0, Ld/i/a/g;->l:I

    .line 28
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 29
    iget-object v5, v0, Ld/i/a/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v10, 0x1d

    const/16 v11, 0x18

    const/4 v12, 0x0

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/i/a/e;

    .line 30
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_7

    .line 31
    iget-object v13, v6, Ld/i/a/e;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v13, :cond_5

    iget v13, v6, Ld/i/a/e;->i:I

    if-eqz v13, :cond_5

    const-string v14, ""

    .line 32
    invoke-static {v12, v14, v13}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v13

    iput-object v13, v6, Ld/i/a/e;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 33
    :cond_5
    iget-object v13, v6, Ld/i/a/e;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 34
    new-instance v14, Landroid/app/Notification$Action$Builder;

    if-nez v13, :cond_6

    move-object v13, v12

    goto :goto_6

    .line 35
    :cond_6
    invoke-virtual {v13}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 36
    :goto_6
    iget-object v15, v6, Ld/i/a/e;->j:Ljava/lang/CharSequence;

    .line 37
    iget-object v9, v6, Ld/i/a/e;->k:Landroid/app/PendingIntent;

    .line 38
    invoke-direct {v14, v13, v15, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_7

    .line 39
    :cond_7
    new-instance v14, Landroid/app/Notification$Action$Builder;

    .line 40
    iget v9, v6, Ld/i/a/e;->i:I

    .line 41
    iget-object v13, v6, Ld/i/a/e;->j:Ljava/lang/CharSequence;

    .line 42
    iget-object v15, v6, Ld/i/a/e;->k:Landroid/app/PendingIntent;

    .line 43
    invoke-direct {v14, v9, v13, v15}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 44
    :goto_7
    iget-object v9, v6, Ld/i/a/e;->c:[Ld/i/a/j;

    if-eqz v9, :cond_9

    .line 45
    array-length v13, v9

    new-array v13, v13, [Landroid/app/RemoteInput;

    .line 46
    array-length v15, v9

    if-gtz v15, :cond_8

    .line 47
    array-length v9, v13

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v9, :cond_9

    aget-object v15, v13, v12

    .line 48
    invoke-virtual {v14, v15}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 49
    :cond_8
    aget-object v1, v9, v8

    .line 50
    new-instance v1, Landroid/app/RemoteInput$Builder;

    .line 51
    throw v12

    .line 52
    :cond_9
    iget-object v9, v6, Ld/i/a/e;->a:Landroid/os/Bundle;

    if-eqz v9, :cond_a

    .line 53
    new-instance v9, Landroid/os/Bundle;

    .line 54
    iget-object v12, v6, Ld/i/a/e;->a:Landroid/os/Bundle;

    .line 55
    invoke-direct {v9, v12}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    .line 56
    :cond_a
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 57
    :goto_9
    iget-boolean v12, v6, Ld/i/a/e;->e:Z

    const-string v13, "android.support.allowGeneratedReplies"

    .line 58
    invoke-virtual {v9, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v11, :cond_b

    .line 60
    iget-boolean v11, v6, Ld/i/a/e;->e:Z

    .line 61
    invoke-virtual {v14, v11}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 62
    :cond_b
    iget v11, v6, Ld/i/a/e;->g:I

    const-string v12, "android.support.action.semanticAction"

    .line 63
    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_c

    .line 65
    iget v11, v6, Ld/i/a/e;->g:I

    .line 66
    invoke-virtual {v14, v11}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 67
    :cond_c
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v10, :cond_d

    .line 68
    iget-boolean v10, v6, Ld/i/a/e;->h:Z

    .line 69
    invoke-virtual {v14, v10}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 70
    :cond_d
    iget-boolean v6, v6, Ld/i/a/e;->f:Z

    const-string v10, "android.support.action.showsUserInterface"

    .line 71
    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v14, v9}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 73
    invoke-virtual {v14}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 74
    :cond_e
    iget-object v5, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    if-eqz v5, :cond_f

    .line 75
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 76
    :cond_f
    iget-object v5, v0, Ld/i/a/g;->F:Landroid/widget/RemoteViews;

    .line 77
    iget-object v6, v0, Ld/i/a/g;->G:Landroid/widget/RemoteViews;

    .line 78
    iget-boolean v9, v0, Ld/i/a/g;->m:Z

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 79
    iget-boolean v9, v0, Ld/i/a/g;->x:Z

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v13, v0, Ld/i/a/g;->u:Ljava/lang/String;

    .line 80
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-boolean v13, v0, Ld/i/a/g;->v:Z

    .line 81
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v13, v0, Ld/i/a/g;->w:Ljava/lang/String;

    .line 82
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 83
    iget v9, v0, Ld/i/a/g;->M:I

    .line 84
    iget-object v13, v0, Ld/i/a/g;->A:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget v14, v0, Ld/i/a/g;->C:I

    .line 85
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v13

    iget v14, v0, Ld/i/a/g;->D:I

    .line 86
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v0, Ld/i/a/g;->E:Landroid/app/Notification;

    .line 87
    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v4, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 88
    invoke-virtual {v13, v14, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 89
    iget-object v4, v0, Ld/i/a/g;->P:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 90
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_a

    .line 91
    :cond_10
    iget-object v4, v0, Ld/i/a/g;->H:Landroid/widget/RemoteViews;

    .line 92
    iget-object v13, v0, Ld/i/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_15

    .line 93
    iget-object v13, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    if-nez v13, :cond_11

    .line 94
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    iput-object v13, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    .line 95
    :cond_11
    iget-object v13, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    const-string v14, "android.car.EXTENSIONS"

    .line 96
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    if-nez v13, :cond_12

    .line 97
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 98
    :cond_12
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x0

    .line 99
    :goto_b
    iget-object v10, v0, Ld/i/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_13

    .line 100
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v8, v0, Ld/i/a/g;->c:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/i/a/e;

    .line 102
    invoke-static {v8}, Ld/i/a/i;->a(Ld/i/a/e;)Landroid/os/Bundle;

    move-result-object v8

    .line 103
    invoke-virtual {v15, v10, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_b

    :cond_13
    const-string v7, "invisible_actions"

    .line 104
    invoke-virtual {v13, v7, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 105
    iget-object v7, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    if-nez v7, :cond_14

    .line 106
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    .line 107
    :cond_14
    iget-object v7, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    .line 108
    invoke-virtual {v7, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    :cond_15
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v11, :cond_18

    .line 111
    iget-object v7, v0, Ld/i/a/g;->B:Landroid/os/Bundle;

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v0, Ld/i/a/g;->q:[Ljava/lang/CharSequence;

    .line 112
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 113
    iget-object v7, v0, Ld/i/a/g;->F:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_16

    .line 114
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 115
    :cond_16
    iget-object v7, v0, Ld/i/a/g;->G:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_17

    .line 116
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 117
    :cond_17
    iget-object v7, v0, Ld/i/a/g;->H:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_18

    .line 118
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 119
    :cond_18
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_1a

    .line 120
    iget v7, v0, Ld/i/a/g;->J:I

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, v0, Ld/i/a/g;->K:Ljava/lang/String;

    .line 121
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-wide v13, v0, Ld/i/a/g;->L:J

    .line 122
    invoke-virtual {v7, v13, v14}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v7

    iget v8, v0, Ld/i/a/g;->M:I

    .line 123
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 124
    iget-boolean v7, v0, Ld/i/a/g;->z:Z

    if-eqz v7, :cond_19

    .line 125
    iget-boolean v7, v0, Ld/i/a/g;->y:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 126
    :cond_19
    iget-object v7, v0, Ld/i/a/g;->I:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 127
    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, 0x0

    .line 128
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 129
    invoke-virtual {v7, v8, v8, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 130
    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 131
    :cond_1a
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_1b

    .line 132
    iget-boolean v7, v0, Ld/i/a/g;->N:Z

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 133
    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 134
    :cond_1b
    iget-object v7, v0, Ld/i/a/g;->o:Ld/i/a/h;

    if-eqz v7, :cond_1c

    .line 135
    move-object v8, v7

    check-cast v8, Ld/i/a/f;

    .line 136
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    .line 137
    invoke-direct {v10, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 138
    invoke-virtual {v10, v12}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    iget-object v13, v8, Ld/i/a/f;->c:Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {v10, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    .line 140
    iget-boolean v8, v8, Ld/i/a/h;->b:Z

    if-eqz v8, :cond_1c

    .line 141
    invoke-virtual {v10, v12}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 142
    :cond_1c
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_1d

    .line 143
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto/16 :goto_c

    :cond_1d
    if-lt v8, v11, :cond_1f

    .line 144
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v9, :cond_24

    .line 145
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1e

    const/4 v2, 0x2

    if-ne v9, v2, :cond_1e

    .line 146
    iput-object v12, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 147
    iput-object v12, v1, Landroid/app/Notification;->vibrate:[J

    .line 148
    iget v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x3

    .line 149
    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 150
    :cond_1e
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_24

    const/4 v2, 0x1

    if-ne v9, v2, :cond_24

    .line 151
    iput-object v12, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 152
    iput-object v12, v1, Landroid/app/Notification;->vibrate:[J

    .line 153
    iget v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x3

    .line 154
    iput v2, v1, Landroid/app/Notification;->defaults:I

    goto :goto_c

    .line 155
    :cond_1f
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 156
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v5, :cond_20

    .line 157
    iput-object v5, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_20
    if-eqz v6, :cond_21

    .line 158
    iput-object v6, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_21
    if-eqz v4, :cond_22

    .line 159
    iput-object v4, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_22
    if-eqz v9, :cond_24

    .line 160
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_23

    const/4 v2, 0x2

    if-ne v9, v2, :cond_23

    .line 161
    iput-object v12, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 162
    iput-object v12, v1, Landroid/app/Notification;->vibrate:[J

    .line 163
    iget v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x3

    .line 164
    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 165
    :cond_23
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_24

    const/4 v2, 0x1

    if-ne v9, v2, :cond_24

    .line 166
    iput-object v12, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 167
    iput-object v12, v1, Landroid/app/Notification;->vibrate:[J

    .line 168
    iget v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x3

    .line 169
    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 170
    :cond_24
    :goto_c
    iget-object v2, v0, Ld/i/a/g;->F:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_25

    .line 171
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_25
    if-eqz v7, :cond_27

    .line 172
    iget-object v2, v0, Ld/i/a/g;->o:Ld/i/a/h;

    if-eqz v2, :cond_26

    goto :goto_d

    .line 173
    :cond_26
    throw v12

    :cond_27
    :goto_d
    if-eqz v7, :cond_28

    .line 174
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_28
    return-object v1
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ld/i/a/g;
    .locals 2

    .line 178
    iget-object v0, p0, Ld/i/a/g;->b:Ljava/util/ArrayList;

    new-instance v1, Ld/i/a/e;

    invoke-direct {v1, p1, p2, p3}, Ld/i/a/e;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ld/i/a/h;)Ld/i/a/g;
    .locals 1

    .line 179
    iget-object v0, p0, Ld/i/a/g;->o:Ld/i/a/h;

    if-eq v0, p1, :cond_0

    .line 180
    iput-object p1, p0, Ld/i/a/g;->o:Ld/i/a/h;

    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p1, Ld/i/a/h;->a:Ld/i/a/g;

    if-eq v0, p0, :cond_0

    .line 182
    iput-object p0, p1, Ld/i/a/h;->a:Ld/i/a/g;

    .line 183
    invoke-virtual {p0, p1}, Ld/i/a/g;->a(Ld/i/a/h;)Ld/i/a/g;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Ld/i/a/g;
    .locals 0

    .line 175
    invoke-static {p1}, Ld/i/a/g;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ld/i/a/g;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Ld/i/a/g;
    .locals 2

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Ld/i/a/g;->O:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    const/16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Ld/i/a/g;->O:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    const/16 v1, -0x11

    and-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->flags:I

    :goto_0
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Ld/i/a/g;
    .locals 0

    .line 1
    invoke-static {p1}, Ld/i/a/g;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ld/i/a/g;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
