.class public final Lj/b/a/d;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public final a:Lno/simula/corona/DataCollectorService;


# direct methods
.method public constructor <init>(Lno/simula/corona/DataCollectorService;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lj/b/a/d;->a:Lno/simula/corona/DataCollectorService;

    return-void

    :cond_0
    const-string p1, "collector"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
