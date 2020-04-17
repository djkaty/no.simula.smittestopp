.class public Le/e/b/a;
.super Le/e/a/k;
.source "SourceFile"

# interfaces
.implements Le/e/b/b;


# direct methods
.method public constructor <init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le/e/a/k;-><init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;)V

    return-void
.end method


# virtual methods
.method public c()Le/e/b/c;
    .locals 3

    .line 1
    iget-object v0, p0, Le/e/a/g;->x:Le/e/a/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Le/e/a/p;->b()Li/a/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Le/e/b/c;->a(Li/a/b/d;)Le/e/b/c;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    const-string v2, "Payload of JWE object is not a valid JSON object"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
