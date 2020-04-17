.class public Lcom/microsoft/identity/client/internal/configuration/LogLevelDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/c/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/c/i<",
        "Lcom/microsoft/identity/client/Logger$LogLevel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/client/Logger$LogLevel;
    .locals 0

    .line 2
    invoke-virtual {p1}, Le/c/c/j;->f()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/identity/client/Logger$LogLevel;->valueOf(Ljava/lang/String;)Lcom/microsoft/identity/client/Logger$LogLevel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/client/internal/configuration/LogLevelDeserializer;->deserialize(Le/c/c/j;Ljava/lang/reflect/Type;Le/c/c/h;)Lcom/microsoft/identity/client/Logger$LogLevel;

    move-result-object p1

    return-object p1
.end method
