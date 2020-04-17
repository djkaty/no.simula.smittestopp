.class public Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mRefreshTokenAge:Ljava/lang/String;

.field public mServerErrorCode:Ljava/lang/String;

.field public mServerSubErrorCode:Ljava/lang/String;

.field public mSpeRing:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static fromXMsCliTelemHeader(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/microsoft/identity/common/adal/internal/util/StringExtensions;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ","

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3
    array-length v3, v2

    if-nez v3, :cond_1

    .line 4
    sget-object p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    const-string v0, "SPE Ring header missing version field."

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v3, 0x0

    .line 5
    aget-object v2, v2, v3

    .line 6
    new-instance v3, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;

    invoke-direct {v3}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;-><init>()V

    .line 7
    invoke-virtual {v3, v2}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->setVersion(Ljava/lang/String;)V

    const-string v4, "1"

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "^[1-9]+\\.?[0-9|\\.]*,[0-9|\\.]*,[0-9|\\.]*,[^,]*[0-9\\.]*,[^,]*$"

    .line 9
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    sget-object p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    const-string v0, "Malformed x-ms-clitelem header"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const/4 v1, 0x5

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 14
    aget-object v0, p0, v0

    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->setServerErrorCode(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 15
    aget-object v0, p0, v0

    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->setServerSubErrorCode(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 16
    aget-object v0, p0, v0

    invoke-virtual {v3, v0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->setRefreshTokenAge(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 17
    aget-object p0, p0, v0

    invoke-virtual {v3, p0}, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->setSpeRing(Ljava/lang/String;)V

    return-object v3

    .line 18
    :cond_3
    sget-object p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->TAG:Ljava/lang/String;

    const-string v0, "Unrecognized x-ms-clitelem header version"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getRefreshTokenAge()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    return-object v0
.end method

.method public getServerErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSubErrorCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mRefreshTokenAge:Ljava/lang/String;

    return-void
.end method

.method public setServerErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setServerSubErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mServerSubErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setSpeRing(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mSpeRing:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/telemetry/CliTelemInfo;->mVersion:Ljava/lang/String;

    return-void
.end method
