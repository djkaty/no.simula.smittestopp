.class public Ld/i/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld/i/a/i;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ld/i/a/e;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Ld/i/a/e;->i:I

    const-string v2, "icon"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Ld/i/a/e;->j:Ljava/lang/CharSequence;

    const-string v2, "title"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Ld/i/a/e;->k:Landroid/app/PendingIntent;

    const-string v2, "actionIntent"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    iget-object v1, p0, Ld/i/a/e;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    iget-object v2, p0, Ld/i/a/e;->a:Landroid/os/Bundle;

    .line 11
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    :goto_0
    iget-boolean v2, p0, Ld/i/a/e;->e:Z

    const-string v3, "android.support.allowGeneratedReplies"

    .line 14
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extras"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    iget-object v1, p0, Ld/i/a/e;->c:[Ld/i/a/j;

    .line 17
    invoke-static {v1}, Ld/i/a/i;->a([Ld/i/a/j;)[Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "remoteInputs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 18
    iget-boolean v1, p0, Ld/i/a/e;->f:Z

    const-string v2, "showsUserInterface"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget p0, p0, Ld/i/a/e;->g:I

    const-string v1, "semanticAction"

    .line 21
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a([Ld/i/a/j;)[Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 22
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 23
    array-length v3, p0

    if-gtz v3, :cond_1

    return-object v1

    .line 24
    :cond_1
    aget-object p0, p0, v2

    .line 25
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 26
    throw v0
.end method
