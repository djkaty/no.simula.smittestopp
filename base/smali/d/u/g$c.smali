.class public final enum Ld/u/g$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/u/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/u/g$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ld/u/g$c;

.field public static final enum AUTOMATIC:Ld/u/g$c;

.field public static final enum TRUNCATE:Ld/u/g$c;

.field public static final enum WRITE_AHEAD_LOGGING:Ld/u/g$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ld/u/g$c;

    const/4 v1, 0x0

    const-string v2, "AUTOMATIC"

    invoke-direct {v0, v2, v1}, Ld/u/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/u/g$c;->AUTOMATIC:Ld/u/g$c;

    .line 2
    new-instance v0, Ld/u/g$c;

    const/4 v2, 0x1

    const-string v3, "TRUNCATE"

    invoke-direct {v0, v3, v2}, Ld/u/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/u/g$c;->TRUNCATE:Ld/u/g$c;

    .line 3
    new-instance v0, Ld/u/g$c;

    const/4 v3, 0x2

    const-string v4, "WRITE_AHEAD_LOGGING"

    invoke-direct {v0, v4, v3}, Ld/u/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/u/g$c;->WRITE_AHEAD_LOGGING:Ld/u/g$c;

    const/4 v4, 0x3

    new-array v4, v4, [Ld/u/g$c;

    .line 4
    sget-object v5, Ld/u/g$c;->AUTOMATIC:Ld/u/g$c;

    aput-object v5, v4, v1

    sget-object v1, Ld/u/g$c;->TRUNCATE:Ld/u/g$c;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Ld/u/g$c;->$VALUES:[Ld/u/g$c;

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

.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Ld/u/g$c;
    .locals 1

    .line 1
    const-class v0, Ld/u/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/u/g$c;

    return-object p0
.end method

.method public static values()[Ld/u/g$c;
    .locals 1

    .line 1
    sget-object v0, Ld/u/g$c;->$VALUES:[Ld/u/g$c;

    invoke-virtual {v0}, [Ld/u/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/u/g$c;

    return-object v0
.end method


# virtual methods
.method public resolve(Landroid/content/Context;)Ld/u/g$c;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Ld/u/g$c;->AUTOMATIC:Ld/u/g$c;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "activity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Ld/u/g$c;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    sget-object p1, Ld/u/g$c;->WRITE_AHEAD_LOGGING:Ld/u/g$c;

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Ld/u/g$c;->TRUNCATE:Ld/u/g$c;

    return-object p1
.end method
