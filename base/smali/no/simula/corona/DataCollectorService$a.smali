.class public final Lno/simula/corona/DataCollectorService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/azure/sdk/iot/device/IotHubEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/simula/corona/DataCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lno/simula/corona/DataCollectorService;


# direct methods
.method public constructor <init>(Lno/simula/corona/DataCollectorService;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    iput-object p1, p0, Lno/simula/corona/DataCollectorService$a;->c:Lno/simula/corona/DataCollectorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lno/simula/corona/DataCollectorService$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lno/simula/corona/DataCollectorService$a;->b:Ljava/util/List;

    return-void

    :cond_0
    const-string p1, "tobeUpdated"

    .line 2
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "mode"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public execute(Lcom/microsoft/azure/sdk/iot/device/IotHubStatusCode;Ljava/lang/Object;)V
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    :goto_0
    const-string v0, "Uploaded failed because "

    .line 2
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "N/A"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    new-array p2, p2, [Ljava/lang/Object;

    .line 4
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v0, p1, p2}, Ll/a/a$b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lno/simula/corona/DataCollectorService$a;->c:Lno/simula/corona/DataCollectorService;

    invoke-static {p1}, Lno/simula/corona/DataCollectorService;->a(Lno/simula/corona/DataCollectorService;)V

    goto :goto_2

    :cond_3
    const-string p1, "Uploaded "

    .line 6
    invoke-static {p1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lno/simula/corona/DataCollectorService$a;->a:Ljava/lang/String;

    const-string v1, " data, OK, OK_EMPTY"

    invoke-static {p1, v0, v1}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    .line 7
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    invoke-virtual {v0, p1, p2}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lno/simula/corona/DataCollectorService$a;->c:Lno/simula/corona/DataCollectorService;

    iget-object p2, p0, Lno/simula/corona/DataCollectorService$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lno/simula/corona/DataCollectorService$a;->b:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lno/simula/corona/DataCollectorService;->a(Lno/simula/corona/DataCollectorService;Ljava/lang/String;Ljava/util/List;)V

    .line 9
    :goto_2
    iget-object p1, p0, Lno/simula/corona/DataCollectorService$a;->c:Lno/simula/corona/DataCollectorService;

    const/4 p2, 0x0

    .line 10
    iput-object p2, p1, Lno/simula/corona/DataCollectorService;->L:Lj/b/a/f;

    return-void
.end method
