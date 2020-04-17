.class public Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->_import(Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;

.field public final synthetic val$adapter:Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;

.field public final synthetic val$callback:Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;

.field public final synthetic val$credentials:Ljava/util/Map;

.field public final synthetic val$destination:Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->this$0:Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$adapter:Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$credentials:Ljava/util/Map;

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$destination:Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;

    iput-object p5, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$callback:Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$adapter:Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$credentials:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;->adapt(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$destination:Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/microsoft/identity/common/BaseAccount;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;

    invoke-interface {v3, v4, v2}, Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;->setSingleSignOnState(Lcom/microsoft/identity/common/BaseAccount;Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;)V
    :try_end_0
    .catch Lcom/microsoft/identity/common/exception/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to save account/refresh token . Skipping "

    .line 4
    invoke-static {v2, v3}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;->val$callback:Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;->onMigrationFinished(I)V

    return-void
.end method
