.class public Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;
.super Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;-><init>()V

    const-string v0, "http_end_event"

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->names(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    const-string v0, "Microsoft.MSAL.http_event"

    .line 3
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;->types(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/events/BaseEvent;

    return-void
.end method


# virtual methods
.method public putStatusCode(I)Lcom/microsoft/identity/common/internal/telemetry/events/HttpEndEvent;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Microsoft.MSAL.response_code"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/identity/common/internal/telemetry/Properties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/Properties;

    return-object p0
.end method
