.class public Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDefaultConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

.field public mIsDebugging:Ljava/lang/Boolean;

.field public mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mDefaultConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/internal/telemetry/Telemetry;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->access$400(Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry;

    move-result-object v0

    return-object v0
.end method

.method public defaultConfiguration(Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mDefaultConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;->create(Landroid/content/Context;)Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mTelemetryContext:Lcom/microsoft/identity/common/internal/telemetry/TelemetryContext;

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/telemetry/Telemetry;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v1, "The application is not found from PackageManager."

    invoke-static {p1, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/Telemetry$Builder;->mIsDebugging:Ljava/lang/Boolean;

    :goto_1
    return-object p0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
