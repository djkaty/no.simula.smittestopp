.class public final enum Le/e/a/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/e/a/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/e/a/p$a;

.field public static final enum BASE64URL:Le/e/a/p$a;

.field public static final enum BYTE_ARRAY:Le/e/a/p$a;

.field public static final enum JSON:Le/e/a/p$a;

.field public static final enum JWS_OBJECT:Le/e/a/p$a;

.field public static final enum SIGNED_JWT:Le/e/a/p$a;

.field public static final enum STRING:Le/e/a/p$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/e/a/p$a;

    const/4 v1, 0x0

    const-string v2, "JSON"

    invoke-direct {v0, v2, v1}, Le/e/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/p$a;->JSON:Le/e/a/p$a;

    .line 2
    new-instance v0, Le/e/a/p$a;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Le/e/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/p$a;->STRING:Le/e/a/p$a;

    .line 3
    new-instance v0, Le/e/a/p$a;

    const/4 v3, 0x2

    const-string v4, "BYTE_ARRAY"

    invoke-direct {v0, v4, v3}, Le/e/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/p$a;->BYTE_ARRAY:Le/e/a/p$a;

    .line 4
    new-instance v0, Le/e/a/p$a;

    const/4 v4, 0x3

    const-string v5, "BASE64URL"

    invoke-direct {v0, v5, v4}, Le/e/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/p$a;->BASE64URL:Le/e/a/p$a;

    .line 5
    new-instance v0, Le/e/a/p$a;

    const/4 v5, 0x4

    const-string v6, "JWS_OBJECT"

    invoke-direct {v0, v6, v5}, Le/e/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/p$a;->JWS_OBJECT:Le/e/a/p$a;

    .line 6
    new-instance v0, Le/e/a/p$a;

    const/4 v6, 0x5

    const-string v7, "SIGNED_JWT"

    invoke-direct {v0, v7, v6}, Le/e/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/p$a;->SIGNED_JWT:Le/e/a/p$a;

    const/4 v7, 0x6

    new-array v7, v7, [Le/e/a/p$a;

    .line 7
    sget-object v8, Le/e/a/p$a;->JSON:Le/e/a/p$a;

    aput-object v8, v7, v1

    sget-object v1, Le/e/a/p$a;->STRING:Le/e/a/p$a;

    aput-object v1, v7, v2

    sget-object v1, Le/e/a/p$a;->BYTE_ARRAY:Le/e/a/p$a;

    aput-object v1, v7, v3

    sget-object v1, Le/e/a/p$a;->BASE64URL:Le/e/a/p$a;

    aput-object v1, v7, v4

    sget-object v1, Le/e/a/p$a;->JWS_OBJECT:Le/e/a/p$a;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Le/e/a/p$a;->$VALUES:[Le/e/a/p$a;

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

.method public static valueOf(Ljava/lang/String;)Le/e/a/p$a;
    .locals 1

    .line 1
    const-class v0, Le/e/a/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/e/a/p$a;

    return-object p0
.end method

.method public static values()[Le/e/a/p$a;
    .locals 1

    .line 1
    sget-object v0, Le/e/a/p$a;->$VALUES:[Le/e/a/p$a;

    invoke-virtual {v0}, [Le/e/a/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/e/a/p$a;

    return-object v0
.end method
