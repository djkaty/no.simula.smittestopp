.class public Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "RequestTelemetry"


# instance fields
.field public mCommonTelemetry:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentRequest:Z

.field public mPlatformTelemetry:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSchemaVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mIsCurrentRequest:Z

    .line 4
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mSchemaVersion:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mCommonTelemetry:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mPlatformTelemetry:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "1"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private getCommonTelemetryHeaderString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mIsCurrentRequest:Z

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getCommonFields(Z)[Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mCommonTelemetry:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getTelemetryHeaderStringFromFields([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPlatformTelemetryHeaderString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mIsCurrentRequest:Z

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getPlatformFields(Z)[Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mPlatformTelemetry:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getTelemetryHeaderStringFromFields([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTelemetryHeaderStringFromFields([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 3
    aget-object v2, p1, v1

    .line 4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getSchemaCompliantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method private putInCommonTelemetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mCommonTelemetry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putInPlatformTelemetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mPlatformTelemetry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearTelemetry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mCommonTelemetry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mPlatformTelemetry:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public getCommonTelemetry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mCommonTelemetry:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getCompleteTelemetryHeaderString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mSchemaVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->TAG:Ljava/lang/String;

    const-string v2, ":getCompleteTelemetryHeaderString"

    const-string v3, "SCHEMA_VERSION is null or empty. Telemetry Header String cannot be formed."

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mSchemaVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getSchemaCompliantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getCommonTelemetryHeaderString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->getPlatformTelemetryHeaderString()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformTelemetry()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mPlatformTelemetry:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getSchemaVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mSchemaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public putTelemetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getSchemaCompliantString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mIsCurrentRequest:Z

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->isCommonField(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putInCommonTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->mIsCurrentRequest:Z

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->isPlatformField(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->putInPlatformTelemetry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/microsoft/identity/common/internal/eststelemetry/RequestTelemetry;->TAG:Ljava/lang/String;

    const-string v0, ":putTelemetry"

    const-string v1, "Supplied key not added to Server telemetry map as it is not part of either common or platform schema."

    invoke-static {p1, p2, v0, v1}, Le/a/a/a/a;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
