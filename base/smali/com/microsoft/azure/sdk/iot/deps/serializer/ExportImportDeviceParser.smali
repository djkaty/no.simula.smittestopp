.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHENTICATION_NAME:Ljava/lang/String; = "authentication"

.field public static final E_TAG_NAME:Ljava/lang/String; = "eTag"

.field public static final ID_NAME:Ljava/lang/String; = "id"

.field public static final IMPORT_MODE_NAME:Ljava/lang/String; = "importMode"

.field public static final STATUS_NAME:Ljava/lang/String; = "status"

.field public static final STATUS_REASON_NAME:Ljava/lang/String; = "statusReason"

.field public static final TAGS_NAME:Ljava/lang/String; = "tags"

.field public static transient gson:Lcom/google/gson/Gson;


# instance fields
.field public authentication:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "authentication"
    .end annotation
.end field

.field public eTag:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "eTag"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "id"
    .end annotation
.end field

.field public importMode:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "importMode"
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "status"
    .end annotation
.end field

.field public statusReason:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "statusReason"
    .end annotation
.end field

.field public tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "tags"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :try_start_0
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v1}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->getIdFinal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->getAuthenticationFinal()Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->authentication:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->authentication:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    .line 11
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->id:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->importMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->importMode:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->eTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->eTag:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->statusReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->statusReason:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->status:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The authentication field must be present in the provided json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The id field must be present in the provided json"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json could not be parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided json cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthentication()Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->authentication:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    return-object v0
.end method

.method public final getAuthenticationFinal()Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->authentication:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdFinal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImportMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->importMode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->statusReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    return-object v0
.end method

.method public setAuthentication(Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->authentication:Lcom/microsoft/azure/sdk/iot/deps/serializer/AuthenticationParser;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Authentication cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->id:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument \'id\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImportMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->importMode:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->status:Ljava/lang/String;

    return-void
.end method

.method public setStatusReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->statusReason:Ljava/lang/String;

    return-void
.end method

.method public setTags(Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->tags:Lcom/microsoft/azure/sdk/iot/deps/twin/TwinCollection;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ExportImportDeviceParser;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
