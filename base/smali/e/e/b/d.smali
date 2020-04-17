.class public Le/e/b/d;
.super Le/e/a/g;
.source "SourceFile"

# interfaces
.implements Le/e/b/b;


# instance fields
.field public final z:Le/e/a/q;


# direct methods
.method public constructor <init>(Le/e/a/q;Le/e/b/c;)V
    .locals 1

    .line 1
    new-instance v0, Le/e/a/p;

    invoke-virtual {p2}, Le/e/b/c;->a()Li/a/b/d;

    move-result-object p2

    invoke-direct {v0, p2}, Le/e/a/p;-><init>(Li/a/b/d;)V

    .line 2
    invoke-direct {p0}, Le/e/a/g;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Le/e/b/d;->z:Le/e/a/q;

    .line 4
    iput-object v0, p0, Le/e/a/g;->x:Le/e/a/p;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The unsecured header must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Le/e/a/v/c;Le/e/a/v/c;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Le/e/a/g;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {p1}, Le/e/a/q;->a(Le/e/a/v/c;)Le/e/a/q;

    move-result-object v1

    iput-object v1, p0, Le/e/b/d;->z:Le/e/a/q;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 8
    new-instance v1, Le/e/a/p;

    invoke-direct {v1, p2}, Le/e/a/p;-><init>(Le/e/a/v/c;)V

    .line 9
    iput-object v1, p0, Le/e/a/g;->x:Le/e/a/p;

    const/4 v1, 0x3

    new-array v1, v1, [Le/e/a/v/c;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v1, p1

    .line 10
    iput-object v1, p0, Le/e/a/g;->y:[Le/e/a/v/c;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The second part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/text/ParseException;

    const-string v1, "Invalid unsecured header: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The first part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Le/e/b/c;
    .locals 3

    .line 1
    iget-object v0, p0, Le/e/a/g;->x:Le/e/a/p;

    .line 2
    invoke-virtual {v0}, Le/e/a/p;->b()Li/a/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Le/e/b/c;->a(Li/a/b/d;)Le/e/b/c;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    const-string v2, "Payload of unsecured JOSE object is not a valid JSON object"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
