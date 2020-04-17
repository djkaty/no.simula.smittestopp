.class public abstract Lcom/microsoft/azure/storage/SharedAccessPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public sharedAccessExpiryTime:Ljava/util/Date;

.field public sharedAccessStartTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedAccessExpiryTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessPolicy;->sharedAccessExpiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSharedAccessStartTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessPolicy;->sharedAccessStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public abstract permissionsToString()Ljava/lang/String;
.end method

.method public abstract setPermissionsFromString(Ljava/lang/String;)V
.end method

.method public setSharedAccessExpiryTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessPolicy;->sharedAccessExpiryTime:Ljava/util/Date;

    return-void
.end method

.method public setSharedAccessStartTime(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessPolicy;->sharedAccessStartTime:Ljava/util/Date;

    return-void
.end method
