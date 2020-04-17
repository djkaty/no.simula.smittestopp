.class public final enum Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaslOutcome"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

.field public static final enum AUTH:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

.field public static final enum OK:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

.field public static final enum SYS:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

.field public static final enum SYS_PERM:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

.field public static final enum SYS_TEMP:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->OK:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    .line 2
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    const/4 v2, 0x1

    const-string v3, "AUTH"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->AUTH:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    .line 3
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    const/4 v3, 0x2

    const-string v4, "SYS"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    .line 4
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    const/4 v4, 0x3

    const-string v5, "SYS_PERM"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS_PERM:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    .line 5
    new-instance v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    const/4 v5, 0x4

    const-string v6, "SYS_TEMP"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS_TEMP:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    .line 6
    sget-object v7, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->OK:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    aput-object v7, v6, v1

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->AUTH:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    aput-object v1, v6, v2

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    aput-object v1, v6, v3

    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->SYS_PERM:Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->$VALUES:[Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    invoke-virtual {v0}, [Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslHandler$SaslOutcome;

    return-object v0
.end method
