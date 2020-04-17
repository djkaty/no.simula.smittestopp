.class public synthetic Lcom/microsoft/identity/client/Prompt$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/Prompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$identity$client$Prompt:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/identity/client/Prompt;->values()[Lcom/microsoft/identity/client/Prompt;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/identity/client/Prompt$1;->$SwitchMap$com$microsoft$identity$client$Prompt:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/identity/client/Prompt;->SELECT_ACCOUNT:Lcom/microsoft/identity/client/Prompt;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/identity/client/Prompt$1;->$SwitchMap$com$microsoft$identity$client$Prompt:[I

    sget-object v3, Lcom/microsoft/identity/client/Prompt;->LOGIN:Lcom/microsoft/identity/client/Prompt;

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x3

    :try_start_2
    sget-object v2, Lcom/microsoft/identity/client/Prompt$1;->$SwitchMap$com$microsoft$identity$client$Prompt:[I

    sget-object v3, Lcom/microsoft/identity/client/Prompt;->CONSENT:Lcom/microsoft/identity/client/Prompt;

    aput v1, v2, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/microsoft/identity/client/Prompt$1;->$SwitchMap$com$microsoft$identity$client$Prompt:[I

    sget-object v2, Lcom/microsoft/identity/client/Prompt;->WHEN_REQUIRED:Lcom/microsoft/identity/client/Prompt;

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
