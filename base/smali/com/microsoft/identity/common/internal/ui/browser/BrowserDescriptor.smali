.class public Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mPackageName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "browser_package_name"
    .end annotation
.end field

.field public mSignatureHashes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "browser_signature_hashes"
    .end annotation
.end field

.field public mVersionLowerBound:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "browser_version_lower_bound"
    .end annotation
.end field

.field public mVersionUpperBound:Ljava/lang/String;
    .annotation runtime Le/c/c/v/c;
        value = "browser_version_upper_bound"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mPackageName:Ljava/lang/String;

    .line 8
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mSignatureHashes:Ljava/util/Set;

    .line 9
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionLowerBound:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionUpperBound:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mPackageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mSignatureHashes:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionLowerBound:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionUpperBound:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Lcom/microsoft/identity/common/internal/ui/browser/Browser;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mSignatureHashes:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->getSignatureHashes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionLowerBound:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionLowerBound:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/internal/util/StringUtil;->compareSemanticVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionUpperBound:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/ui/browser/Browser;->getVersion()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/ui/browser/BrowserDescriptor;->mVersionUpperBound:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/internal/util/StringUtil;->compareSemanticVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    return v2
.end method
