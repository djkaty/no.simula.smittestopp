.class public Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SECONDS_MS:I = 0x3e8


# instance fields
.field public mExpiresIn:J

.field public mRawAccessToken:Ljava/lang/String;

.field public final mTokenExpiredBuffer:J

.field public mTokenReceivedTime:J

.field public mTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x927c0

    .line 2
    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenExpiredBuffer:J

    .line 3
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getExpiresIn()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mExpiresIn:J

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getResponseReceivedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenReceivedTime:J

    .line 5
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getTokenType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenType:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mRawAccessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mRawAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mExpiresIn:J

    return-wide v0
.end method

.method public getRawAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mRawAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpiredBuffer()J
    .locals 2

    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method public getTokenReceivedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenReceivedTime:J

    return-wide v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 2
    iget-wide v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenReceivedTime:J

    iget-wide v4, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mExpiresIn:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setExpiresIn(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mExpiresIn:J

    return-void
.end method

.method public setRawAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mRawAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setTokenReceivedTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenReceivedTime:J

    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AccessToken;->mTokenType:Ljava/lang/String;

    return-void
.end method
