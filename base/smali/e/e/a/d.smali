.class public final Le/e/a/d;
.super Le/e/a/a;
.source "SourceFile"


# static fields
.field public static final A:Le/e/a/d;

.field public static final B:Le/e/a/d;

.field public static final C:Le/e/a/d;

.field public static final D:Le/e/a/d;

.field public static final E:Le/e/a/d;

.field public static final F:Le/e/a/d;

.field public static final G:Le/e/a/d;

.field public static final z:Le/e/a/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->REQUIRED:Le/e/a/r;

    const/16 v2, 0x100

    const-string v3, "A128CBC-HS256"

    invoke-direct {v0, v3, v1, v2}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->z:Le/e/a/d;

    .line 2
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v3, "A192CBC-HS384"

    const/16 v4, 0x180

    invoke-direct {v0, v3, v1, v4}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->A:Le/e/a/d;

    .line 3
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->REQUIRED:Le/e/a/r;

    const/16 v3, 0x200

    const-string v4, "A256CBC-HS512"

    invoke-direct {v0, v4, v1, v3}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->B:Le/e/a/d;

    .line 4
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v4, "A128CBC+HS256"

    invoke-direct {v0, v4, v1, v2}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->C:Le/e/a/d;

    .line 5
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v4, "A256CBC+HS512"

    invoke-direct {v0, v4, v1, v3}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->D:Le/e/a/d;

    .line 6
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v3, "A128GCM"

    const/16 v4, 0x80

    invoke-direct {v0, v3, v1, v4}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->E:Le/e/a/d;

    .line 7
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->OPTIONAL:Le/e/a/r;

    const-string v3, "A192GCM"

    const/16 v4, 0xc0

    invoke-direct {v0, v3, v1, v4}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->F:Le/e/a/d;

    .line 8
    new-instance v0, Le/e/a/d;

    sget-object v1, Le/e/a/r;->RECOMMENDED:Le/e/a/r;

    const-string v3, "A256GCM"

    invoke-direct {v0, v3, v1, v2}, Le/e/a/d;-><init>(Ljava/lang/String;Le/e/a/r;I)V

    sput-object v0, Le/e/a/d;->G:Le/e/a/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/e/a/a;-><init>(Ljava/lang/String;Le/e/a/r;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Le/e/a/r;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Le/e/a/a;-><init>(Ljava/lang/String;Le/e/a/r;)V

    return-void
.end method
