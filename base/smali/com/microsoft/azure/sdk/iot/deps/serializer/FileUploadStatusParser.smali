.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORRELATION_ID_TAG:Ljava/lang/String; = "correlationId"

.field public static final IS_SUCCESS_TAG:Ljava/lang/String; = "isSuccess"

.field public static final STATUS_CODE_TAG:Ljava/lang/String; = "statusCode"

.field public static final STATUS_DESCRIPTION_TAG:Ljava/lang/String; = "statusDescription"


# instance fields
.field public correlationId:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "correlationId"
    .end annotation
.end field

.field public isSuccess:Ljava/lang/Boolean;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "isSuccess"
    .end annotation
.end field

.field public statusCode:Ljava/lang/Integer;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "statusCode"
    .end annotation
.end field

.field public statusDescription:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "statusDescription"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->correlationId:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->isSuccess:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->statusCode:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->statusDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->correlationId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->isSuccess:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->statusCode:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->statusDescription:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->setCorrelationId(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p2, p3, p4}, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->updateStatus(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private setCorrelationId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->correlationId:Ljava/lang/String;

    return-void
.end method

.method private updateStatus(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateObject(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateObject(Ljava/lang/Object;)V

    .line 3
    invoke-static {p3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateStringUTF8(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->isSuccess:Ljava/lang/Boolean;

    .line 5
    iput-object p2, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->statusCode:Ljava/lang/Integer;

    .line 6
    iput-object p3, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadStatusParser;->statusDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Le/c/c/e;

    invoke-direct {v0}, Le/c/c/e;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/c/c/e;->l:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/c/c/e;->g:Z

    .line 4
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
