.class public final Lno/simula/corona/MainActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/MainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno/simula/corona/MainActivity;


# direct methods
.method public constructor <init>(Lno/simula/corona/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lno/simula/corona/MainActivity$c;->a:Lno/simula/corona/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    if-eqz p2, :cond_2

    .line 1
    check-cast p2, Lj/b/a/d;

    .line 2
    iget-object p1, p0, Lno/simula/corona/MainActivity$c;->a:Lno/simula/corona/MainActivity;

    .line 3
    iget-object p2, p2, Lj/b/a/d;->a:Lno/simula/corona/DataCollectorService;

    .line 4
    iput-object p2, p1, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    if-eqz p2, :cond_0

    .line 5
    iput-object p1, p2, Lno/simula/corona/DataCollectorService;->x:Lj/b/a/v;

    .line 6
    :cond_0
    iget-object p1, p0, Lno/simula/corona/MainActivity$c;->a:Lno/simula/corona/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lno/simula/corona/MainActivity$c;->a:Lno/simula/corona/MainActivity;

    .line 8
    invoke-virtual {p1}, Lno/simula/corona/MainActivity;->l()V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/simula/corona/MainActivity$c;->a:Lno/simula/corona/MainActivity;

    invoke-static {p1}, Lno/simula/corona/MainActivity;->c(Lno/simula/corona/MainActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lno/simula/corona/MainActivity$c;->a:Lno/simula/corona/MainActivity;

    .line 2
    iget-object p1, p1, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iput-object v0, p1, Lno/simula/corona/DataCollectorService;->x:Lj/b/a/v;

    .line 4
    :cond_0
    iget-object p1, p0, Lno/simula/corona/MainActivity$c;->a:Lno/simula/corona/MainActivity;

    .line 5
    iput-object v0, p1, Lno/simula/corona/MainActivity;->z:Lno/simula/corona/DataCollectorService;

    .line 6
    invoke-static {p1}, Lno/simula/corona/MainActivity;->c(Lno/simula/corona/MainActivity;)V

    return-void
.end method
