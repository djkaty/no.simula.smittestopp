.class public synthetic Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->values()[Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter$1;->$SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus:[I

    const/4 v1, 0x1

    const/4 v2, 0x3

    :try_start_0
    sget-object v3, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->FAIL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter$1;->$SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus:[I

    sget-object v3, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->SDK_CANCEL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    const/4 v3, 0x2

    aput v3, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/ExceptionAdapter$1;->$SwitchMap$com$microsoft$identity$common$internal$providers$oauth2$AuthorizationStatus:[I

    sget-object v3, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;->USER_CANCEL:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationStatus;

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
