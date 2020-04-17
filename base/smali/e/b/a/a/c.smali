.class public final enum Le/b/a/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/b/a/a/c;

.field public static final enum UTF16_BE:Le/b/a/a/c;

.field public static final enum UTF16_LE:Le/b/a/a/c;

.field public static final enum UTF32_BE:Le/b/a/a/c;

.field public static final enum UTF32_LE:Le/b/a/a/c;

.field public static final enum UTF8:Le/b/a/a/c;


# instance fields
.field public final _bigEndian:Z

.field public final _bits:I

.field public final _javaName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Le/b/a/a/c;

    const-string v1, "UTF8"

    const/4 v2, 0x0

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/b/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v6, Le/b/a/a/c;->UTF8:Le/b/a/a/c;

    .line 2
    new-instance v0, Le/b/a/a/c;

    const-string v8, "UTF16_BE"

    const/4 v9, 0x1

    const-string v10, "UTF-16BE"

    const/4 v11, 0x1

    const/16 v12, 0x10

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Le/b/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v0, Le/b/a/a/c;->UTF16_BE:Le/b/a/a/c;

    .line 3
    new-instance v0, Le/b/a/a/c;

    const-string v2, "UTF16_LE"

    const/4 v3, 0x2

    const-string v4, "UTF-16LE"

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/b/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v0, Le/b/a/a/c;->UTF16_LE:Le/b/a/a/c;

    .line 4
    new-instance v0, Le/b/a/a/c;

    const-string v8, "UTF32_BE"

    const/4 v9, 0x3

    const-string v10, "UTF-32BE"

    const/16 v12, 0x20

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Le/b/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v0, Le/b/a/a/c;->UTF32_BE:Le/b/a/a/c;

    .line 5
    new-instance v0, Le/b/a/a/c;

    const-string v2, "UTF32_LE"

    const/4 v3, 0x4

    const-string v4, "UTF-32LE"

    const/16 v6, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le/b/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v0, Le/b/a/a/c;->UTF32_LE:Le/b/a/a/c;

    const/4 v1, 0x5

    new-array v1, v1, [Le/b/a/a/c;

    .line 6
    sget-object v2, Le/b/a/a/c;->UTF8:Le/b/a/a/c;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Le/b/a/a/c;->UTF16_BE:Le/b/a/a/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Le/b/a/a/c;->UTF16_LE:Le/b/a/a/c;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Le/b/a/a/c;->UTF32_BE:Le/b/a/a/c;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Le/b/a/a/c;->$VALUES:[Le/b/a/a/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Le/b/a/a/c;->_javaName:Ljava/lang/String;

    .line 3
    iput-boolean p4, p0, Le/b/a/a/c;->_bigEndian:Z

    .line 4
    iput p5, p0, Le/b/a/a/c;->_bits:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/a/c;
    .locals 1

    .line 1
    const-class v0, Le/b/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/a/c;

    return-object p0
.end method

.method public static values()[Le/b/a/a/c;
    .locals 1

    .line 1
    sget-object v0, Le/b/a/a/c;->$VALUES:[Le/b/a/a/c;

    invoke-virtual {v0}, [Le/b/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/a/c;

    return-object v0
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 1
    iget v0, p0, Le/b/a/a/c;->_bits:I

    return v0
.end method

.method public getJavaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/a/c;->_javaName:Ljava/lang/String;

    return-object v0
.end method

.method public isBigEndian()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/b/a/a/c;->_bigEndian:Z

    return v0
.end method
