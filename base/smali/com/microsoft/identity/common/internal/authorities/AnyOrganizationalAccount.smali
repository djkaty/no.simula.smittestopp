.class public Lcom/microsoft/identity/common/internal/authorities/AnyOrganizationalAccount;
.super Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;-><init>()V

    const-string v0, "organizations"

    .line 2
    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setCloudUrl(Ljava/lang/String;)V

    const-string p1, "organizations"

    .line 5
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/authorities/AzureActiveDirectoryAudience;->setTenantId(Ljava/lang/String;)V

    return-void
.end method
