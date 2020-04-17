.class public Lcom/microsoft/identity/common/internal/eststelemetry/Schema;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/eststelemetry/Schema$Value;,
        Lcom/microsoft/identity/common/internal/eststelemetry/Schema$Key;
    }
.end annotation


# static fields
.field public static final CURRENT_REQUEST_HEADER_NAME:Ljava/lang/String; = "x-client-current-telemetry"

.field public static final CURRENT_SCHEMA_VERSION:Ljava/lang/String; = "1"

.field public static final LAST_REQUEST_HEADER_NAME:Ljava/lang/String; = "x-client-last-telemetry"

.field public static final SCHEMA_VERSION_KEY:Ljava/lang/String; = "schema_version"

.field public static final currentRequestCommonFields:[Ljava/lang/String;

.field public static final currentRequestPlatformFields:[Ljava/lang/String;

.field public static final lastRequestCommonFields:[Ljava/lang/String;

.field public static final lastRequestPlatformFields:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "Microsoft.MSAL.api_id"

    const-string v1, "Microsoft.MSAL.force_refresh"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->currentRequestCommonFields:[Ljava/lang/String;

    const-string v2, "Microsoft.MSAL.account_status"

    const-string v3, "Microsoft.MSAL.id_token_status"

    const-string v4, "Microsoft.MSAL.at_status"

    const-string v5, "Microsoft.MSAL.rt_status"

    const-string v6, "Microsoft.MSAL.frt_status"

    const-string v7, "Microsoft.MSAL.mrrt_status"

    .line 2
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->currentRequestPlatformFields:[Ljava/lang/String;

    const-string v1, "Microsoft.MSAL.correlation_id"

    const-string v2, "Microsoft.MSAL.api_error_code"

    .line 3
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->lastRequestCommonFields:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->lastRequestPlatformFields:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonFields(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getCurrentRequestCommonFields()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getLastRequestCommonFields()[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getCurrentRequestCommonFields()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->currentRequestCommonFields:[Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentRequestPlatformFields()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->currentRequestPlatformFields:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLastRequestCommonFields()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->lastRequestCommonFields:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLastRequestPlatformFields()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->lastRequestPlatformFields:[Ljava/lang/String;

    return-object v0
.end method

.method public static getPlatformFields(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getCurrentRequestPlatformFields()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->getLastRequestPlatformFields()[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getSchemaCompliantString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "true"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1"

    return-object p0

    :cond_1
    const-string v0, "false"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "0"

    :cond_2
    return-object p0
.end method

.method public static getSchemaCompliantStringFromBoolean(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public static isCommonField(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->isCurrentCommonField(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->isLastCommonField(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isCurrentCommonField(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->currentRequestCommonFields:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isCurrentPlatformField(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->currentRequestPlatformFields:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLastCommonField(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->lastRequestCommonFields:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLastPlatformField(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->lastRequestPlatformFields:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPlatformField(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->isCurrentPlatformField(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/eststelemetry/Schema;->isLastPlatformField(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method
