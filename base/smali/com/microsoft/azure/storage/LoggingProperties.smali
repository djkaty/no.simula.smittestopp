.class public final Lcom/microsoft/azure/storage/LoggingProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public logOperationTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;"
        }
    .end annotation
.end field

.field public retentionIntervalInDays:Ljava/lang/Integer;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/storage/LoggingProperties;->version:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/microsoft/azure/storage/LoggingOperations;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/LoggingProperties;->logOperationTypes:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public getLogOperationTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/LoggingProperties;->logOperationTypes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getRetentionIntervalInDays()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/LoggingProperties;->retentionIntervalInDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/LoggingProperties;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setLogOperationTypes(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/LoggingOperations;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/LoggingProperties;->logOperationTypes:Ljava/util/EnumSet;

    return-void
.end method

.method public setRetentionIntervalInDays(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/LoggingProperties;->retentionIntervalInDays:Ljava/lang/Integer;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/LoggingProperties;->version:Ljava/lang/String;

    return-void
.end method
