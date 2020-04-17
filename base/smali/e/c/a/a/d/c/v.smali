.class public Le/c/a/a/d/c/v;
.super Le/c/a/a/b/j/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/j/h<",
        "Le/c/a/a/d/c/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final x:Ljava/lang/String;

.field public final y:Le/c/a/a/d/c/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/d/c/w<",
            "Le/c/a/a/d/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;Ljava/lang/String;Le/c/a/a/b/j/d;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Le/c/a/a/b/j/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILe/c/a/a/b/j/d;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)V

    new-instance p1, Le/c/a/a/d/c/w;

    invoke-direct {p1, p0}, Le/c/a/a/d/c/w;-><init>(Le/c/a/a/d/c/v;)V

    iput-object p1, p0, Le/c/a/a/d/c/v;->y:Le/c/a/a/d/c/w;

    iput-object p5, p0, Le/c/a/a/d/c/v;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Le/c/a/a/d/c/g;

    if-eqz v1, :cond_1

    check-cast v0, Le/c/a/a/d/c/g;

    return-object v0

    :cond_1
    new-instance v0, Le/c/a/a/d/c/h;

    invoke-direct {v0, p1}, Le/c/a/a/d/c/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0xb5f608

    return v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Le/c/a/a/d/c/v;->x:Ljava/lang/String;

    const-string v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method
