.class public final enum Lg/c/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/c/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lg/c/d$b;

.field public static final enum AARCH64:Lg/c/d$b;

.field public static final enum ARM:Lg/c/d$b;

.field public static final enum I386:Lg/c/d$b;

.field public static final enum MIPS32:Lg/c/d$b;

.field public static final enum PPC:Lg/c/d$b;

.field public static final enum PPC64:Lg/c/d$b;

.field public static final enum PPC64LE:Lg/c/d$b;

.field public static final enum S390X:Lg/c/d$b;

.field public static final enum SPARC:Lg/c/d$b;

.field public static final enum SPARCV9:Lg/c/d$b;

.field public static final enum UNKNOWN:Lg/c/d$b;

.field public static final enum X86_64:Lg/c/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lg/c/d$b;

    const/4 v1, 0x0

    const-string v2, "I386"

    invoke-direct {v0, v2, v1}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->I386:Lg/c/d$b;

    .line 2
    new-instance v0, Lg/c/d$b;

    const/4 v2, 0x1

    const-string v3, "X86_64"

    invoke-direct {v0, v3, v2}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->X86_64:Lg/c/d$b;

    .line 3
    new-instance v0, Lg/c/d$b;

    const/4 v3, 0x2

    const-string v4, "PPC"

    invoke-direct {v0, v4, v3}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->PPC:Lg/c/d$b;

    .line 4
    new-instance v0, Lg/c/d$b;

    const/4 v4, 0x3

    const-string v5, "PPC64"

    invoke-direct {v0, v5, v4}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->PPC64:Lg/c/d$b;

    .line 5
    new-instance v0, Lg/c/d$b;

    const/4 v5, 0x4

    const-string v6, "PPC64LE"

    invoke-direct {v0, v6, v5}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->PPC64LE:Lg/c/d$b;

    .line 6
    new-instance v0, Lg/c/d$b;

    const/4 v6, 0x5

    const-string v7, "SPARC"

    invoke-direct {v0, v7, v6}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->SPARC:Lg/c/d$b;

    .line 7
    new-instance v0, Lg/c/d$b;

    const/4 v7, 0x6

    const-string v8, "SPARCV9"

    invoke-direct {v0, v8, v7}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->SPARCV9:Lg/c/d$b;

    .line 8
    new-instance v0, Lg/c/d$b;

    const/4 v8, 0x7

    const-string v9, "S390X"

    invoke-direct {v0, v9, v8}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->S390X:Lg/c/d$b;

    .line 9
    new-instance v0, Lg/c/d$b;

    const/16 v9, 0x8

    const-string v10, "MIPS32"

    invoke-direct {v0, v10, v9}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->MIPS32:Lg/c/d$b;

    .line 10
    new-instance v0, Lg/c/d$b;

    const/16 v10, 0x9

    const-string v11, "ARM"

    invoke-direct {v0, v11, v10}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->ARM:Lg/c/d$b;

    .line 11
    new-instance v0, Lg/c/d$b;

    const/16 v11, 0xa

    const-string v12, "AARCH64"

    invoke-direct {v0, v12, v11}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->AARCH64:Lg/c/d$b;

    .line 12
    new-instance v0, Lg/c/d$b;

    const/16 v12, 0xb

    const-string v13, "UNKNOWN"

    invoke-direct {v0, v13, v12}, Lg/c/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/c/d$b;->UNKNOWN:Lg/c/d$b;

    const/16 v13, 0xc

    new-array v13, v13, [Lg/c/d$b;

    .line 13
    sget-object v14, Lg/c/d$b;->I386:Lg/c/d$b;

    aput-object v14, v13, v1

    sget-object v1, Lg/c/d$b;->X86_64:Lg/c/d$b;

    aput-object v1, v13, v2

    sget-object v1, Lg/c/d$b;->PPC:Lg/c/d$b;

    aput-object v1, v13, v3

    sget-object v1, Lg/c/d$b;->PPC64:Lg/c/d$b;

    aput-object v1, v13, v4

    sget-object v1, Lg/c/d$b;->PPC64LE:Lg/c/d$b;

    aput-object v1, v13, v5

    sget-object v1, Lg/c/d$b;->SPARC:Lg/c/d$b;

    aput-object v1, v13, v6

    sget-object v1, Lg/c/d$b;->SPARCV9:Lg/c/d$b;

    aput-object v1, v13, v7

    sget-object v1, Lg/c/d$b;->S390X:Lg/c/d$b;

    aput-object v1, v13, v8

    sget-object v1, Lg/c/d$b;->MIPS32:Lg/c/d$b;

    aput-object v1, v13, v9

    sget-object v1, Lg/c/d$b;->ARM:Lg/c/d$b;

    aput-object v1, v13, v10

    sget-object v1, Lg/c/d$b;->AARCH64:Lg/c/d$b;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lg/c/d$b;->$VALUES:[Lg/c/d$b;

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

.method public static valueOf(Ljava/lang/String;)Lg/c/d$b;
    .locals 1

    .line 1
    const-class v0, Lg/c/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/c/d$b;

    return-object p0
.end method

.method public static values()[Lg/c/d$b;
    .locals 1

    .line 1
    sget-object v0, Lg/c/d$b;->$VALUES:[Lg/c/d$b;

    invoke-virtual {v0}, [Lg/c/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/c/d$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lg/c/d;->d:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
