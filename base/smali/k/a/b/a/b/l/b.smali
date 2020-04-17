.class public final enum Lk/a/b/a/b/l/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/b/a/b/l/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lk/a/b/a/b/l/b;

.field public static final enum AUTH:Lk/a/b/a/b/l/b;

.field public static final enum OK:Lk/a/b/a/b/l/b;

.field public static final enum SYS:Lk/a/b/a/b/l/b;

.field public static final enum SYS_PERM:Lk/a/b/a/b/l/b;

.field public static final enum SYS_TEMP:Lk/a/b/a/b/l/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lk/a/b/a/b/l/b;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lk/a/b/a/b/l/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/l/b;->OK:Lk/a/b/a/b/l/b;

    new-instance v0, Lk/a/b/a/b/l/b;

    const/4 v2, 0x1

    const-string v3, "AUTH"

    invoke-direct {v0, v3, v2}, Lk/a/b/a/b/l/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/l/b;->AUTH:Lk/a/b/a/b/l/b;

    new-instance v0, Lk/a/b/a/b/l/b;

    const/4 v3, 0x2

    const-string v4, "SYS"

    invoke-direct {v0, v4, v3}, Lk/a/b/a/b/l/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/l/b;->SYS:Lk/a/b/a/b/l/b;

    new-instance v0, Lk/a/b/a/b/l/b;

    const/4 v4, 0x3

    const-string v5, "SYS_PERM"

    invoke-direct {v0, v5, v4}, Lk/a/b/a/b/l/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/l/b;->SYS_PERM:Lk/a/b/a/b/l/b;

    new-instance v0, Lk/a/b/a/b/l/b;

    const/4 v5, 0x4

    const-string v6, "SYS_TEMP"

    invoke-direct {v0, v6, v5}, Lk/a/b/a/b/l/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/b/a/b/l/b;->SYS_TEMP:Lk/a/b/a/b/l/b;

    const/4 v6, 0x5

    new-array v6, v6, [Lk/a/b/a/b/l/b;

    .line 2
    sget-object v7, Lk/a/b/a/b/l/b;->OK:Lk/a/b/a/b/l/b;

    aput-object v7, v6, v1

    sget-object v1, Lk/a/b/a/b/l/b;->AUTH:Lk/a/b/a/b/l/b;

    aput-object v1, v6, v2

    sget-object v1, Lk/a/b/a/b/l/b;->SYS:Lk/a/b/a/b/l/b;

    aput-object v1, v6, v3

    sget-object v1, Lk/a/b/a/b/l/b;->SYS_PERM:Lk/a/b/a/b/l/b;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lk/a/b/a/b/l/b;->$VALUES:[Lk/a/b/a/b/l/b;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/b/a/b/l/b;
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/b/l/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/b/a/b/l/b;

    return-object p0
.end method

.method public static valueOf(Lk/a/b/a/b/g;)Lk/a/b/a/b/l/b;
    .locals 1

    .line 2
    invoke-static {}, Lk/a/b/a/b/l/b;->values()[Lk/a/b/a/b/l/b;

    move-result-object v0

    .line 3
    iget-byte p0, p0, Lk/a/b/a/b/g;->x:B

    .line 4
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static values()[Lk/a/b/a/b/l/b;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/b/l/b;->$VALUES:[Lk/a/b/a/b/l/b;

    invoke-virtual {v0}, [Lk/a/b/a/b/l/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/b/a/b/l/b;

    return-object v0
.end method


# virtual methods
.method public getValue()Lk/a/b/a/b/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Lk/a/b/a/b/g;->a(B)Lk/a/b/a/b/g;

    move-result-object v0

    return-object v0
.end method
