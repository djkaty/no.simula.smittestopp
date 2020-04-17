.class public final enum Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

.field public static final enum WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 2
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 3
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 4
    new-instance v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v4, 0x3

    const-string v5, "VERBOSE"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    .line 5
    sget-object v6, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    aput-object v6, v5, v1

    sget-object v1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->WARN:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    aput-object v1, v5, v2

    sget-object v1, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->INFO:Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->$VALUES:[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->$VALUES:[Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;

    return-object v0
.end method
