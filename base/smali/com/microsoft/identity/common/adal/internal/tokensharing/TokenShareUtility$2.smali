.class public Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->saveMsaFamilyRefreshToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/util/Pair<",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

.field public final synthetic val$refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->this$0:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    iput-object p2, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->val$refreshToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftAccount;",
            "Lcom/microsoft/identity/common/internal/providers/microsoft/MicrosoftRefreshToken;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->this$0:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->access$300(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->this$0:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->access$300(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/consumers"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->this$0:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-static {v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->access$300(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->this$0:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    iget-object v2, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->val$refreshToken:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->access$400(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/cache/ADALTokenCacheItem;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/microsoft/identity/common/internal/migration/AdalMigrationAdapter;->loadCloudDiscoveryMetadata()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-static {}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "saveMsaFamilyRefreshToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load cloud metadata, aborting."

    .line 10
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->this$0:Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;

    invoke-static {v1}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;->access$200(Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/identity/common/internal/migration/TokenCacheItemMigrationAdapter;->renewToken(Ljava/lang/String;Lcom/microsoft/identity/common/internal/cache/ITokenCacheItem;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/adal/internal/tokensharing/TokenShareUtility$2;->call()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
