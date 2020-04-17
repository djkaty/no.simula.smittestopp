.class public final enum Ld/g/a/h/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/g/a/h/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ld/g/a/h/c$c;

.field public static final enum BASELINE:Ld/g/a/h/c$c;

.field public static final enum BOTTOM:Ld/g/a/h/c$c;

.field public static final enum CENTER:Ld/g/a/h/c$c;

.field public static final enum CENTER_X:Ld/g/a/h/c$c;

.field public static final enum CENTER_Y:Ld/g/a/h/c$c;

.field public static final enum LEFT:Ld/g/a/h/c$c;

.field public static final enum NONE:Ld/g/a/h/c$c;

.field public static final enum RIGHT:Ld/g/a/h/c$c;

.field public static final enum TOP:Ld/g/a/h/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ld/g/a/h/c$c;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->NONE:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->LEFT:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/4 v3, 0x2

    const-string v4, "TOP"

    invoke-direct {v0, v4, v3}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->TOP:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/4 v4, 0x3

    const-string v5, "RIGHT"

    invoke-direct {v0, v5, v4}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->RIGHT:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/4 v5, 0x4

    const-string v6, "BOTTOM"

    invoke-direct {v0, v6, v5}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->BOTTOM:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/4 v6, 0x5

    const-string v7, "BASELINE"

    invoke-direct {v0, v7, v6}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->BASELINE:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/4 v7, 0x6

    const-string v8, "CENTER"

    invoke-direct {v0, v8, v7}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->CENTER:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/4 v8, 0x7

    const-string v9, "CENTER_X"

    invoke-direct {v0, v9, v8}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->CENTER_X:Ld/g/a/h/c$c;

    new-instance v0, Ld/g/a/h/c$c;

    const/16 v9, 0x8

    const-string v10, "CENTER_Y"

    invoke-direct {v0, v10, v9}, Ld/g/a/h/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/h/c$c;->CENTER_Y:Ld/g/a/h/c$c;

    const/16 v10, 0x9

    new-array v10, v10, [Ld/g/a/h/c$c;

    sget-object v11, Ld/g/a/h/c$c;->NONE:Ld/g/a/h/c$c;

    aput-object v11, v10, v1

    sget-object v1, Ld/g/a/h/c$c;->LEFT:Ld/g/a/h/c$c;

    aput-object v1, v10, v2

    sget-object v1, Ld/g/a/h/c$c;->TOP:Ld/g/a/h/c$c;

    aput-object v1, v10, v3

    sget-object v1, Ld/g/a/h/c$c;->RIGHT:Ld/g/a/h/c$c;

    aput-object v1, v10, v4

    sget-object v1, Ld/g/a/h/c$c;->BOTTOM:Ld/g/a/h/c$c;

    aput-object v1, v10, v5

    sget-object v1, Ld/g/a/h/c$c;->BASELINE:Ld/g/a/h/c$c;

    aput-object v1, v10, v6

    sget-object v1, Ld/g/a/h/c$c;->CENTER:Ld/g/a/h/c$c;

    aput-object v1, v10, v7

    sget-object v1, Ld/g/a/h/c$c;->CENTER_X:Ld/g/a/h/c$c;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Ld/g/a/h/c$c;->$VALUES:[Ld/g/a/h/c$c;

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

.method public static valueOf(Ljava/lang/String;)Ld/g/a/h/c$c;
    .locals 1

    .line 1
    const-class v0, Ld/g/a/h/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/g/a/h/c$c;

    return-object p0
.end method

.method public static values()[Ld/g/a/h/c$c;
    .locals 1

    .line 1
    sget-object v0, Ld/g/a/h/c$c;->$VALUES:[Ld/g/a/h/c$c;

    invoke-virtual {v0}, [Ld/g/a/h/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/g/a/h/c$c;

    return-object v0
.end method
