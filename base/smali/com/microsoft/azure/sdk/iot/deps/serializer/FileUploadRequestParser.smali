.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadRequestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLOB_NAME_TAG:Ljava/lang/String; = "blobName"


# instance fields
.field public blobName:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = true
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "blobName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateBlobName(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/FileUploadRequestParser;->blobName:Ljava/lang/String;

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
