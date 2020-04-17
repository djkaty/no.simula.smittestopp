.class public Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/BaseAccount;",
        "U:",
        "Lcom/microsoft/identity/common/internal/providers/oauth2/RefreshToken;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.internal.migration.TokenMigrationUtility"

.field public static final sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public _import(Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter<",
            "TT;TU;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState<",
            "TT;TU;>;",
            "Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;->sBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility$1;-><init>(Lcom/microsoft/identity/common/internal/migration/TokenMigrationUtility;Lcom/microsoft/identity/common/internal/migration/IMigrationAdapter;Ljava/util/Map;Lcom/microsoft/identity/common/internal/cache/IShareSingleSignOnState;Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
