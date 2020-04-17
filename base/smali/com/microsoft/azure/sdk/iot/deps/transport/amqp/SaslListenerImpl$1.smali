.class public synthetic Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lk/a/b/a/d/v$a;->values()[Lk/a/b/a/d/v$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;->$SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I

    const/4 v1, 0x1

    const/4 v2, 0x5

    :try_start_0
    sget-object v3, Lk/a/b/a/d/v$a;->PN_SASL_TEMP:Lk/a/b/a/d/v$a;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    const/4 v3, 0x4

    :try_start_1
    sget-object v4, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;->$SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I

    sget-object v5, Lk/a/b/a/d/v$a;->PN_SASL_PERM:Lk/a/b/a/d/v$a;

    aput v0, v4, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v4, 0x3

    :try_start_2
    sget-object v5, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;->$SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I

    sget-object v6, Lk/a/b/a/d/v$a;->PN_SASL_AUTH:Lk/a/b/a/d/v$a;

    aput v4, v5, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;->$SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I

    sget-object v5, Lk/a/b/a/d/v$a;->PN_SASL_OK:Lk/a/b/a/d/v$a;

    aput v3, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;->$SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I

    sget-object v1, Lk/a/b/a/d/v$a;->PN_SASL_NONE:Lk/a/b/a/d/v$a;

    const/4 v1, 0x0

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v0, 0x6

    :try_start_5
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;->$SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I

    sget-object v2, Lk/a/b/a/d/v$a;->PN_SASL_SYS:Lk/a/b/a/d/v$a;

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/microsoft/azure/sdk/iot/deps/transport/amqp/SaslListenerImpl$1;->$SwitchMap$org$apache$qpid$proton$engine$Sasl$SaslOutcome:[I

    sget-object v2, Lk/a/b/a/d/v$a;->PN_SASL_SKIPPED:Lk/a/b/a/d/v$a;

    const/4 v2, 0x7

    aput v2, v1, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
