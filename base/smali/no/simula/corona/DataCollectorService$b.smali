.class public final Lno/simula/corona/DataCollectorService$b;
.super Le/c/a/a/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/DataCollectorService;->onCreate()V
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
    iput-object p1, p0, Lno/simula/corona/DataCollectorService$b;->a:Lno/simula/corona/DataCollectorService;

    invoke-direct {p0}, Le/c/a/a/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    sget-object v0, Ll/a/a;->d:Ll/a/a$b;

    const-string v1, "Location result is null"

    invoke-virtual {v0, v1, p1}, Ll/a/a$b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/location/LocationResult;->x:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 4
    iget-object v1, p0, Lno/simula/corona/DataCollectorService$b;->a:Lno/simula/corona/DataCollectorService;

    const-string v2, "location"

    invoke-static {v0, v2}, Lh/k/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lno/simula/corona/DataCollectorService;->a(Lno/simula/corona/DataCollectorService;Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    return-void
.end method
