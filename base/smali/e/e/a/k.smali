.class public Le/e/a/k;
.super Le/e/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/k$a;
    }
.end annotation


# instance fields
.field public A:Le/e/a/v/c;

.field public B:Le/e/a/v/c;

.field public C:Le/e/a/v/c;

.field public D:Le/e/a/v/c;

.field public E:Le/e/a/k$a;

.field public z:Le/e/a/j;


# direct methods
.method public constructor <init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/e/a/g;-><init>()V

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Le/e/a/j;->a(Le/e/a/v/c;)Le/e/a/j;

    move-result-object v1

    iput-object v1, p0, Le/e/a/k;->z:Le/e/a/j;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget-object v2, p2, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Le/e/a/k;->A:Le/e/a/v/c;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iput-object v1, p0, Le/e/a/k;->A:Le/e/a/v/c;

    :goto_1
    if-eqz p3, :cond_3

    .line 7
    iget-object v2, p3, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    iput-object p3, p0, Le/e/a/k;->B:Le/e/a/v/c;

    goto :goto_3

    .line 10
    :cond_3
    :goto_2
    iput-object v1, p0, Le/e/a/k;->B:Le/e/a/v/c;

    :goto_3
    if-eqz p4, :cond_6

    .line 11
    iput-object p4, p0, Le/e/a/k;->C:Le/e/a/v/c;

    if-eqz p5, :cond_5

    .line 12
    iget-object v2, p5, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    iput-object p5, p0, Le/e/a/k;->D:Le/e/a/v/c;

    goto :goto_5

    .line 15
    :cond_5
    :goto_4
    iput-object v1, p0, Le/e/a/k;->D:Le/e/a/v/c;

    .line 16
    :goto_5
    sget-object v1, Le/e/a/k$a;->ENCRYPTED:Le/e/a/k$a;

    iput-object v1, p0, Le/e/a/k;->E:Le/e/a/k$a;

    const/4 v1, 0x5

    new-array v1, v1, [Le/e/a/v/c;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    .line 17
    iput-object v1, p0, Le/e/a/g;->y:[Le/e/a/v/c;

    return-void

    .line 18
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The fourth part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "Invalid JWE header: "

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The first part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
