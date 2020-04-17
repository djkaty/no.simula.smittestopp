.class public final Lno/simula/corona/MainActivity$b;
.super Lh/k/b/h;
.source "com.android.tools.r8.jetbrains.kotlin-style lambda group"

# interfaces
.implements Lh/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/MainActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/k/b/h;",
        "Lh/k/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic x:I

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lno/simula/corona/MainActivity$b;->x:I

    iput-object p2, p0, Lno/simula/corona/MainActivity$b;->y:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lh/k/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lno/simula/corona/MainActivity$b;->x:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lno/simula/corona/MainActivity$b;->y:Ljava/lang/Object;

    check-cast v1, Lno/simula/corona/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lno/simula/corona/MainActivity$b;->y:Ljava/lang/Object;

    check-cast v1, Lno/simula/corona/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0

    .line 5
    :cond_0
    throw v2

    .line 6
    :cond_1
    iget-object v0, p0, Lno/simula/corona/MainActivity$b;->y:Ljava/lang/Object;

    check-cast v0, Lno/simula/corona/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj/b/a/a0;->c(Landroid/content/Context;Z)V

    .line 7
    iget-object v0, p0, Lno/simula/corona/MainActivity$b;->y:Ljava/lang/Object;

    check-cast v0, Lno/simula/corona/MainActivity;

    invoke-static {v0}, Lno/simula/corona/MainActivity;->b(Lno/simula/corona/MainActivity;)V

    .line 8
    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method
