.class public final enum Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/controllers/CommandResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

.field public static final enum CANCEL:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

.field public static final enum COMPLETED:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

.field public static final enum ERROR:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    const/4 v1, 0x0

    const-string v2, "CANCEL"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    const/4 v2, 0x1

    const-string v3, "COMPLETED"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    new-instance v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->ERROR:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    sget-object v5, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->CANCEL:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->COMPLETED:Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->$VALUES:[Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->$VALUES:[Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/controllers/CommandResult$ResultStatus;

    return-object v0
.end method
