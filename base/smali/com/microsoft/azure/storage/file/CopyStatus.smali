.class public final enum Lcom/microsoft/azure/storage/file/CopyStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/azure/storage/file/CopyStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/azure/storage/file/CopyStatus;

.field public static final enum ABORTED:Lcom/microsoft/azure/storage/file/CopyStatus;

.field public static final enum FAILED:Lcom/microsoft/azure/storage/file/CopyStatus;

.field public static final enum INVALID:Lcom/microsoft/azure/storage/file/CopyStatus;

.field public static final enum PENDING:Lcom/microsoft/azure/storage/file/CopyStatus;

.field public static final enum SUCCESS:Lcom/microsoft/azure/storage/file/CopyStatus;

.field public static final enum UNSPECIFIED:Lcom/microsoft/azure/storage/file/CopyStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/microsoft/azure/storage/file/CopyStatus;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1}, Lcom/microsoft/azure/storage/file/CopyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/CopyStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/file/CopyStatus;

    .line 2
    new-instance v0, Lcom/microsoft/azure/storage/file/CopyStatus;

    const/4 v2, 0x1

    const-string v3, "INVALID"

    invoke-direct {v0, v3, v2}, Lcom/microsoft/azure/storage/file/CopyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/CopyStatus;->INVALID:Lcom/microsoft/azure/storage/file/CopyStatus;

    .line 3
    new-instance v0, Lcom/microsoft/azure/storage/file/CopyStatus;

    const/4 v3, 0x2

    const-string v4, "PENDING"

    invoke-direct {v0, v4, v3}, Lcom/microsoft/azure/storage/file/CopyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/CopyStatus;->PENDING:Lcom/microsoft/azure/storage/file/CopyStatus;

    .line 4
    new-instance v0, Lcom/microsoft/azure/storage/file/CopyStatus;

    const/4 v4, 0x3

    const-string v5, "SUCCESS"

    invoke-direct {v0, v5, v4}, Lcom/microsoft/azure/storage/file/CopyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/CopyStatus;->SUCCESS:Lcom/microsoft/azure/storage/file/CopyStatus;

    .line 5
    new-instance v0, Lcom/microsoft/azure/storage/file/CopyStatus;

    const/4 v5, 0x4

    const-string v6, "ABORTED"

    invoke-direct {v0, v6, v5}, Lcom/microsoft/azure/storage/file/CopyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/CopyStatus;->ABORTED:Lcom/microsoft/azure/storage/file/CopyStatus;

    .line 6
    new-instance v0, Lcom/microsoft/azure/storage/file/CopyStatus;

    const/4 v6, 0x5

    const-string v7, "FAILED"

    invoke-direct {v0, v7, v6}, Lcom/microsoft/azure/storage/file/CopyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/azure/storage/file/CopyStatus;->FAILED:Lcom/microsoft/azure/storage/file/CopyStatus;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/microsoft/azure/storage/file/CopyStatus;

    .line 7
    sget-object v8, Lcom/microsoft/azure/storage/file/CopyStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/file/CopyStatus;

    aput-object v8, v7, v1

    sget-object v1, Lcom/microsoft/azure/storage/file/CopyStatus;->INVALID:Lcom/microsoft/azure/storage/file/CopyStatus;

    aput-object v1, v7, v2

    sget-object v1, Lcom/microsoft/azure/storage/file/CopyStatus;->PENDING:Lcom/microsoft/azure/storage/file/CopyStatus;

    aput-object v1, v7, v3

    sget-object v1, Lcom/microsoft/azure/storage/file/CopyStatus;->SUCCESS:Lcom/microsoft/azure/storage/file/CopyStatus;

    aput-object v1, v7, v4

    sget-object v1, Lcom/microsoft/azure/storage/file/CopyStatus;->ABORTED:Lcom/microsoft/azure/storage/file/CopyStatus;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/microsoft/azure/storage/file/CopyStatus;->$VALUES:[Lcom/microsoft/azure/storage/file/CopyStatus;

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

.method public static parse(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CopyStatus;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/microsoft/azure/storage/core/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/microsoft/azure/storage/file/CopyStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "invalid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/microsoft/azure/storage/file/CopyStatus;->INVALID:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/microsoft/azure/storage/file/CopyStatus;->PENDING:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p0, Lcom/microsoft/azure/storage/file/CopyStatus;->SUCCESS:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0

    .line 9
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aborted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object p0, Lcom/microsoft/azure/storage/file/CopyStatus;->ABORTED:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0

    .line 11
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 12
    sget-object p0, Lcom/microsoft/azure/storage/file/CopyStatus;->FAILED:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0

    .line 13
    :cond_5
    sget-object p0, Lcom/microsoft/azure/storage/file/CopyStatus;->UNSPECIFIED:Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/azure/storage/file/CopyStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/microsoft/azure/storage/file/CopyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/azure/storage/file/CopyStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/microsoft/azure/storage/file/CopyStatus;->$VALUES:[Lcom/microsoft/azure/storage/file/CopyStatus;

    invoke-virtual {v0}, [Lcom/microsoft/azure/storage/file/CopyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/azure/storage/file/CopyStatus;

    return-object v0
.end method
