.class public Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VALIDITY_DURATION:I = 0x1e


# instance fields
.field public mExpiresOn:Ljava/util/Date;

.field public mValue:Lcom/microsoft/identity/common/internal/controllers/CommandResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/controllers/CommandResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;->mValue:Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    .line 3
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;->getExpiresOn()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;->mExpiresOn:Ljava/util/Date;

    return-void
.end method

.method private getExpiresOn()Ljava/util/Date;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    const/16 v2, 0x1e

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getValue()Lcom/microsoft/identity/common/internal/controllers/CommandResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;->mValue:Lcom/microsoft/identity/common/internal/controllers/CommandResult;

    return-object v0
.end method

.method public isExpired()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/controllers/CommandResultCacheItem;->mExpiresOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method
