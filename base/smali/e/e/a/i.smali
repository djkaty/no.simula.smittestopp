.class public final Le/e/a/i;
.super Le/e/a/a;
.source "SourceFile"


# static fields
.field public static final A:Le/e/a/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final B:Le/e/a/i;

.field public static final C:Le/e/a/i;

.field public static final D:Le/e/a/i;

.field public static final E:Le/e/a/i;

.field public static final F:Le/e/a/i;

.field public static final G:Le/e/a/i;

.field public static final H:Le/e/a/i;

.field public static final I:Le/e/a/i;

.field public static final J:Le/e/a/i;

.field public static final K:Le/e/a/i;

.field public static final L:Le/e/a/i;

.field public static final M:Le/e/a/i;

.field public static final N:Le/e/a/i;

.field public static final O:Le/e/a/i;

.field public static final P:Le/e/a/i;

.field public static final z:Le/e/a/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->REQUIRED:Le/e/a/r;

    const-string v2, "RSA1_5"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->z:Le/e/a/i;

    .line 2
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "RSA-OAEP"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->A:Le/e/a/i;

    .line 3
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "RSA-OAEP-256"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->B:Le/e/a/i;

    .line 4
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "A128KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->C:Le/e/a/i;

    .line 5
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "A192KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->D:Le/e/a/i;

    .line 6
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "A256KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->E:Le/e/a/i;

    .line 7
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "dir"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->F:Le/e/a/i;

    .line 8
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "ECDH-ES"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->G:Le/e/a/i;

    .line 9
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "ECDH-ES+A128KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->H:Le/e/a/i;

    .line 10
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "ECDH-ES+A192KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->I:Le/e/a/i;

    .line 11
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "ECDH-ES+A256KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->J:Le/e/a/i;

    .line 12
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "A128GCMKW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->K:Le/e/a/i;

    .line 13
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "A192GCMKW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->L:Le/e/a/i;

    .line 14
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "A256GCMKW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->M:Le/e/a/i;

    .line 15
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "PBES2-HS256+A128KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->N:Le/e/a/i;

    .line 16
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "PBES2-HS384+A192KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->O:Le/e/a/i;

    .line 17
    new-instance v0, Le/e/a/i;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "PBES2-HS512+A256KW"

    invoke-direct {v0, v2, v1}, Le/e/a/i;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/i;->P:Le/e/a/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Le/e/a/a;-><init>(Ljava/lang/String;Le/e/a/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le/e/a/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/e/a/a;-><init>(Ljava/lang/String;Le/e/a/r;)V

    return-void
.end method
