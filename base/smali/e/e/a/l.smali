.class public final Le/e/a/l;
.super Le/e/a/a;
.source "SourceFile"


# static fields
.field public static final A:Le/e/a/l;

.field public static final B:Le/e/a/l;

.field public static final C:Le/e/a/l;

.field public static final D:Le/e/a/l;

.field public static final E:Le/e/a/l;

.field public static final F:Le/e/a/l;

.field public static final G:Le/e/a/l;

.field public static final H:Le/e/a/l;

.field public static final I:Le/e/a/l;

.field public static final J:Le/e/a/l;

.field public static final K:Le/e/a/l;

.field public static final L:Le/e/a/l;

.field public static final M:Le/e/a/l;

.field public static final z:Le/e/a/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->REQUIRED:Le/e/a/r;

    const-string v2, "HS256"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->z:Le/e/a/l;

    .line 2
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "HS384"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->A:Le/e/a/l;

    .line 3
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "HS512"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->B:Le/e/a/l;

    .line 4
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "RS256"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->C:Le/e/a/l;

    .line 5
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "RS384"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->D:Le/e/a/l;

    .line 6
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "RS512"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->E:Le/e/a/l;

    .line 7
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v2, "ES256"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->F:Le/e/a/l;

    .line 8
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "ES256K"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->G:Le/e/a/l;

    .line 9
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "ES384"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->H:Le/e/a/l;

    .line 10
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "ES512"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->I:Le/e/a/l;

    .line 11
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "PS256"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->J:Le/e/a/l;

    .line 12
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "PS384"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->K:Le/e/a/l;

    .line 13
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "PS512"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->L:Le/e/a/l;

    .line 14
    new-instance v0, Le/e/a/l;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v2, "EdDSA"

    invoke-direct {v0, v2, v1}, Le/e/a/l;-><init>(Ljava/lang/String;Le/e/a/r;)V

    sput-object v0, Le/e/a/l;->M:Le/e/a/l;

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
