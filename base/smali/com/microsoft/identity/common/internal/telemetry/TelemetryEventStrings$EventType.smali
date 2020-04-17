.class public final Lcom/microsoft/identity/common/internal/telemetry/TelemetryEventStrings$EventType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/telemetry/TelemetryEventStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventType"
.end annotation


# static fields
.field public static final API_EVENT:Ljava/lang/String; = "Microsoft.MSAL.api_event"

.field public static final BROKER_EVENT:Ljava/lang/String; = "Microsoft.MSAL.broker_event"

.field public static final CACHE_EVENT:Ljava/lang/String; = "Microsoft.MSAL.cache_event"

.field public static final HTTP_EVENT:Ljava/lang/String; = "Microsoft.MSAL.http_event"

.field public static final UI_EVENT:Ljava/lang/String; = "Microsoft.MSAL.ui_event"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
