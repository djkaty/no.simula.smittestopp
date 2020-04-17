.class public final enum Lk/f/d/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/f/d/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/f/d/b;

.field public static final enum DEBUG:Lk/f/d/b;

.field public static final enum ERROR:Lk/f/d/b;

.field public static final enum INFO:Lk/f/d/b;

.field public static final enum TRACE:Lk/f/d/b;

.field public static final enum WARN:Lk/f/d/b;


# instance fields
.field public levelInt:I

.field public levelStr:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lk/f/d/b;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3, v1}, Lk/f/d/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lk/f/d/b;->ERROR:Lk/f/d/b;

    new-instance v0, Lk/f/d/b;

    const/4 v1, 0x1

    const-string v3, "WARN"

    const/16 v4, 0x1e

    invoke-direct {v0, v3, v1, v4, v3}, Lk/f/d/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lk/f/d/b;->WARN:Lk/f/d/b;

    new-instance v0, Lk/f/d/b;

    const/4 v3, 0x2

    const-string v4, "INFO"

    const/16 v5, 0x14

    invoke-direct {v0, v4, v3, v5, v4}, Lk/f/d/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lk/f/d/b;->INFO:Lk/f/d/b;

    new-instance v0, Lk/f/d/b;

    const/4 v4, 0x3

    const-string v5, "DEBUG"

    const/16 v6, 0xa

    invoke-direct {v0, v5, v4, v6, v5}, Lk/f/d/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lk/f/d/b;->DEBUG:Lk/f/d/b;

    new-instance v0, Lk/f/d/b;

    const/4 v5, 0x4

    const-string v6, "TRACE"

    invoke-direct {v0, v6, v5, v2, v6}, Lk/f/d/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lk/f/d/b;->TRACE:Lk/f/d/b;

    const/4 v6, 0x5

    new-array v6, v6, [Lk/f/d/b;

    .line 2
    sget-object v7, Lk/f/d/b;->ERROR:Lk/f/d/b;

    aput-object v7, v6, v2

    sget-object v2, Lk/f/d/b;->WARN:Lk/f/d/b;

    aput-object v2, v6, v1

    sget-object v1, Lk/f/d/b;->INFO:Lk/f/d/b;

    aput-object v1, v6, v3

    sget-object v1, Lk/f/d/b;->DEBUG:Lk/f/d/b;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lk/f/d/b;->$VALUES:[Lk/f/d/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lk/f/d/b;->levelInt:I

    .line 3
    iput-object p4, p0, Lk/f/d/b;->levelStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk/f/d/b;
    .locals 1

    .line 1
    const-class v0, Lk/f/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/f/d/b;

    return-object p0
.end method

.method public static values()[Lk/f/d/b;
    .locals 1

    .line 1
    sget-object v0, Lk/f/d/b;->$VALUES:[Lk/f/d/b;

    invoke-virtual {v0}, [Lk/f/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/f/d/b;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lk/f/d/b;->levelInt:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/f/d/b;->levelStr:Ljava/lang/String;

    return-object v0
.end method
