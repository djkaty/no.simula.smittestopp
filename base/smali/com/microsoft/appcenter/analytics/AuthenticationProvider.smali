.class public Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;,
        Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;,
        Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    }
.end annotation


# static fields
.field public static final REFRESH_THRESHOLD:J = 0x927c0L


# instance fields
.field public mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

.field public mExpiryDate:Ljava/util/Date;

.field public final mTicketKey:Ljava/lang/String;

.field public final mTicketKeyHash:Ljava/lang/String;

.field public final mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

.field public final mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;


# direct methods
.method public constructor <init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    .line 3
    iput-object p2, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/microsoft/appcenter/utils/HashUtils;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKeyHash:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->handleTokenUpdate(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V

    return-void
.end method

.method private declared-synchronized handleTokenUpdate(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

    if-eq v0, p3, :cond_0

    const-string p1, "AppCenterAnalytics"

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignore duplicate authentication callback calls, provider="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 4
    :try_start_1
    iput-object p3, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

    const-string p3, "AppCenterAnalytics"

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got result back from token provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "AppCenterAnalytics"

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Authentication failed for ticketKey="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :cond_1
    if-nez p2, :cond_2

    :try_start_2
    const-string p1, "AppCenterAnalytics"

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No expiry date provided for ticketKey="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_2
    :try_start_3
    iget-object p3, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKeyHash:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-static {v1}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;->access$100(Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/microsoft/appcenter/utils/TicketCache;->putTicket(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput-object p2, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mExpiryDate:Ljava/util/Date;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized acquireTokenAsync()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "AppCenterAnalytics"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling token provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;

    invoke-direct {v0, p0}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$1;-><init>(Lcom/microsoft/appcenter/analytics/AuthenticationProvider;)V

    iput-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mCallback:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;

    .line 5
    iget-object v1, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

    iget-object v2, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;->acquireToken(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkTokenExpiry()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mExpiryDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mExpiryDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->acquireTokenAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTicketKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketKeyHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTicketKeyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenProvider()Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mTokenProvider:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;

    return-object v0
.end method

.method public getType()Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/appcenter/analytics/AuthenticationProvider;->mType:Lcom/microsoft/appcenter/analytics/AuthenticationProvider$Type;

    return-object v0
.end method
