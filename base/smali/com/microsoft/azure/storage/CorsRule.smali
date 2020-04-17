.class public Lcom/microsoft/azure/storage/CorsRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allowedMethods:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/CorsHttpMethods;",
            ">;"
        }
    .end annotation
.end field

.field public allowedOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public exposedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxAgeInSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedOrigins:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->exposedHeaders:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedHeaders:Ljava/util/List;

    .line 5
    const-class v0, Lcom/microsoft/azure/storage/CorsHttpMethods;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedMethods:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/microsoft/azure/storage/CorsRule;->maxAgeInSeconds:I

    return-void
.end method


# virtual methods
.method public getAllowedHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getAllowedMethods()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/CorsHttpMethods;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedMethods:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getAllowedOrigins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedOrigins:Ljava/util/List;

    return-object v0
.end method

.method public getExposedHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/storage/CorsRule;->exposedHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getMaxAgeInSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/microsoft/azure/storage/CorsRule;->maxAgeInSeconds:I

    return v0
.end method

.method public setAllowedHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedHeaders:Ljava/util/List;

    return-void
.end method

.method public setAllowedMethods(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/azure/storage/CorsHttpMethods;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedMethods:Ljava/util/EnumSet;

    return-void
.end method

.method public setAllowedOrigins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/CorsRule;->allowedOrigins:Ljava/util/List;

    return-void
.end method

.method public setExposedHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/storage/CorsRule;->exposedHeaders:Ljava/util/List;

    return-void
.end method

.method public setMaxAgeInSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/microsoft/azure/storage/CorsRule;->maxAgeInSeconds:I

    return-void
.end method
