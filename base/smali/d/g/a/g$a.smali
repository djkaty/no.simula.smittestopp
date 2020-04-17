.class public final enum Ld/g/a/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/g/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Ld/g/a/g$a;

.field public static final enum CONSTANT:Ld/g/a/g$a;

.field public static final enum ERROR:Ld/g/a/g$a;

.field public static final enum SLACK:Ld/g/a/g$a;

.field public static final enum UNKNOWN:Ld/g/a/g$a;

.field public static final enum UNRESTRICTED:Ld/g/a/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ld/g/a/g$a;

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED"

    invoke-direct {v0, v2, v1}, Ld/g/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/g$a;->UNRESTRICTED:Ld/g/a/g$a;

    .line 2
    new-instance v0, Ld/g/a/g$a;

    const/4 v2, 0x1

    const-string v3, "CONSTANT"

    invoke-direct {v0, v3, v2}, Ld/g/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/g$a;->CONSTANT:Ld/g/a/g$a;

    .line 3
    new-instance v0, Ld/g/a/g$a;

    const/4 v3, 0x2

    const-string v4, "SLACK"

    invoke-direct {v0, v4, v3}, Ld/g/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/g$a;->SLACK:Ld/g/a/g$a;

    .line 4
    new-instance v0, Ld/g/a/g$a;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Ld/g/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/g$a;->ERROR:Ld/g/a/g$a;

    .line 5
    new-instance v0, Ld/g/a/g$a;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Ld/g/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/g/a/g$a;->UNKNOWN:Ld/g/a/g$a;

    const/4 v6, 0x5

    new-array v6, v6, [Ld/g/a/g$a;

    .line 6
    sget-object v7, Ld/g/a/g$a;->UNRESTRICTED:Ld/g/a/g$a;

    aput-object v7, v6, v1

    sget-object v1, Ld/g/a/g$a;->CONSTANT:Ld/g/a/g$a;

    aput-object v1, v6, v2

    sget-object v1, Ld/g/a/g$a;->SLACK:Ld/g/a/g$a;

    aput-object v1, v6, v3

    sget-object v1, Ld/g/a/g$a;->ERROR:Ld/g/a/g$a;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Ld/g/a/g$a;->$VALUES:[Ld/g/a/g$a;

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

.method public static valueOf(Ljava/lang/String;)Ld/g/a/g$a;
    .locals 1

    .line 1
    const-class v0, Ld/g/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/g/a/g$a;

    return-object p0
.end method

.method public static values()[Ld/g/a/g$a;
    .locals 1

    .line 1
    sget-object v0, Ld/g/a/g$a;->$VALUES:[Ld/g/a/g$a;

    invoke-virtual {v0}, [Ld/g/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/g/a/g$a;

    return-object v0
.end method
