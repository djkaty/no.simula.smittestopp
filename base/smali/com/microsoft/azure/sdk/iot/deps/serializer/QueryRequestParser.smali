.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/QueryRequestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QUERY_TAG:Ljava/lang/String; = "query"


# instance fields
.field public query:Ljava/lang/String;
    .annotation runtime Le/c/c/v/a;
        deserialize = false
        serialize = true
    .end annotation

    .annotation runtime Le/c/c/v/c;
        value = "query"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/QueryRequestParser;->query:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/QueryRequestParser;->query:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ParserUtility;->validateQuery(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/microsoft/azure/sdk/iot/deps/serializer/QueryRequestParser;->query:Ljava/lang/String;

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

    .line 3
    invoke-virtual {v0}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
