.class public Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bestErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v1, Le/c/c/e;

    invoke-direct {v1}, Le/c/c/e;-><init>()V

    invoke-virtual {v1}, Le/c/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    invoke-static {v0}, Le/c/c/w/t;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;
    :try_end_0
    .catch Le/c/c/s; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;

    invoke-direct {v3}, Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;-><init>()V

    :goto_0
    if-eqz v3, :cond_2

    .line 7
    iget-object v4, v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;->message:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 8
    iget-object p0, v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;->exception:Ljava/lang/String;

    if-eqz p0, :cond_1

    move-object v2, p0

    :cond_1
    const/16 p0, 0x7b

    .line 9
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/microsoft/azure/sdk/iot/deps/serializer/ErrorMessageParser$ErrorMessage;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Le/c/c/s; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v4

    goto :goto_0

    :catch_1
    move-object p0, v4

    :cond_2
    if-eqz v2, :cond_3

    const-string v0, " "

    .line 10
    invoke-static {p0, v0, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method
