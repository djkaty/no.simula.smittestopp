.class public final Lno/simula/corona/DataCollectorService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/DataCollectorService;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lno/simula/corona/DataCollectorService;


# direct methods
.method public constructor <init>(Lno/simula/corona/DataCollectorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lno/simula/corona/DataCollectorService$c;->a:Lno/simula/corona/DataCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/b/a/p;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lno/simula/corona/DataCollectorService$c;->a:Lno/simula/corona/DataCollectorService;

    .line 2
    iget-object v1, p1, Lj/b/a/p;->a:Lj/b/a/o;

    const-string v2, "gps"

    .line 3
    invoke-static {v0, v2, v1}, Lno/simula/corona/DataCollectorService;->a(Lno/simula/corona/DataCollectorService;Ljava/lang/String;Lj/b/a/o;)V

    .line 4
    iget-object v0, p0, Lno/simula/corona/DataCollectorService$c;->a:Lno/simula/corona/DataCollectorService;

    .line 5
    iget-object p1, p1, Lj/b/a/p;->b:Lj/b/a/o;

    const-string v1, "bluetooth"

    .line 6
    invoke-static {v0, v1, p1}, Lno/simula/corona/DataCollectorService;->a(Lno/simula/corona/DataCollectorService;Ljava/lang/String;Lj/b/a/o;)V

    return-void
.end method
