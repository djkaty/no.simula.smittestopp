.class public final Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;
.super Lcom/microsoft/azure/storage/SharedAccessPolicy;
.source "SourceFile"


# instance fields
.field public permissions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountPermissions;",
            ">;"
        }
    .end annotation
.end field

.field public protocols:Lcom/microsoft/azure/storage/SharedAccessProtocols;

.field public range:Lcom/microsoft/azure/storage/IPRange;

.field public resourceTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountResourceType;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/azure/storage/SharedAccessPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountPermissions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->permissions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProtocols()Lcom/microsoft/azure/storage/SharedAccessProtocols;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->protocols:Lcom/microsoft/azure/storage/SharedAccessProtocols;

    return-object v0
.end method

.method public getRange()Lcom/microsoft/azure/storage/IPRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->range:Lcom/microsoft/azure/storage/IPRange;

    return-object v0
.end method

.method public getResourceTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountResourceType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->resourceTypes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getServices()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->services:Ljava/util/EnumSet;

    return-object v0
.end method

.method public permissionsToString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->getPermissions()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/SharedAccessAccountPermissions;->permissionsToString(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resourceTypesToString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->getResourceTypes()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/SharedAccessAccountResourceType;->resourceTypesToString(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public servicesToString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->getServices()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/azure/storage/SharedAccessAccountService;->servicesToString(Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPermissions(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountPermissions;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->permissions:Ljava/util/EnumSet;

    return-void
.end method

.method public setPermissionsFromString(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPermissions;->permissionsFromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->setPermissions(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setProtocols(Lcom/microsoft/azure/storage/SharedAccessProtocols;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->protocols:Lcom/microsoft/azure/storage/SharedAccessProtocols;

    return-void
.end method

.method public setRange(Lcom/microsoft/azure/storage/IPRange;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->range:Lcom/microsoft/azure/storage/IPRange;

    return-void
.end method

.method public setResourceTypeFromString(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountResourceType;->resourceTypesFromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->setResourceTypes(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setResourceTypes(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountResourceType;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->resourceTypes:Ljava/util/EnumSet;

    return-void
.end method

.method public setServiceFromString(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/storage/SharedAccessAccountService;->servicesFromString(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->setServices(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setServices(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/SharedAccessAccountService;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/SharedAccessAccountPolicy;->services:Ljava/util/EnumSet;

    return-void
.end method
