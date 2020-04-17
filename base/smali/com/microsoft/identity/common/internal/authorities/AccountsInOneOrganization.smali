.class public Lcom/microsoft/identity/common/internal/authorities/AccountsInOneOrganization;
.super Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setCloudUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    return-void
.end method
