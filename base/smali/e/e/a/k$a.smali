.class public final enum Le/e/a/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/e/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/e/a/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Le/e/a/k$a;

.field public static final enum DECRYPTED:Le/e/a/k$a;

.field public static final enum ENCRYPTED:Le/e/a/k$a;

.field public static final enum UNENCRYPTED:Le/e/a/k$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/e/a/k$a;

    const/4 v1, 0x0

    const-string v2, "UNENCRYPTED"

    invoke-direct {v0, v2, v1}, Le/e/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/k$a;->UNENCRYPTED:Le/e/a/k$a;

    .line 2
    new-instance v0, Le/e/a/k$a;

    const/4 v2, 0x1

    const-string v3, "ENCRYPTED"

    invoke-direct {v0, v3, v2}, Le/e/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/k$a;->ENCRYPTED:Le/e/a/k$a;

    .line 3
    new-instance v0, Le/e/a/k$a;

    const/4 v3, 0x2

    const-string v4, "DECRYPTED"

    invoke-direct {v0, v4, v3}, Le/e/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/e/a/k$a;->DECRYPTED:Le/e/a/k$a;

    const/4 v4, 0x3

    new-array v4, v4, [Le/e/a/k$a;

    .line 4
    sget-object v5, Le/e/a/k$a;->UNENCRYPTED:Le/e/a/k$a;

    aput-object v5, v4, v1

    sget-object v1, Le/e/a/k$a;->ENCRYPTED:Le/e/a/k$a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Le/e/a/k$a;->$VALUES:[Le/e/a/k$a;

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

.method public static valueOf(Ljava/lang/String;)Le/e/a/k$a;
    .locals 1

    .line 1
    const-class v0, Le/e/a/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/e/a/k$a;

    return-object p0
.end method

.method public static values()[Le/e/a/k$a;
    .locals 1

    .line 1
    sget-object v0, Le/e/a/k$a;->$VALUES:[Le/e/a/k$a;

    invoke-virtual {v0}, [Le/e/a/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/e/a/k$a;

    return-object v0
.end method
