.class public final Le/e/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/p$a;
    }
.end annotation


# instance fields
.field public final A:Le/e/a/v/c;

.field public final B:Le/e/a/n;

.field public final x:Li/a/b/d;

.field public final y:Ljava/lang/String;

.field public final z:[B


# direct methods
.method public constructor <init>(Le/e/a/v/c;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Le/e/a/p;->x:Li/a/b/d;

    .line 11
    iput-object v0, p0, Le/e/a/p;->y:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Le/e/a/p;->z:[B

    .line 13
    iput-object p1, p0, Le/e/a/p;->A:Le/e/a/v/c;

    .line 14
    iput-object v0, p0, Le/e/a/p;->B:Le/e/a/n;

    .line 15
    sget-object p1, Le/e/a/p$a;->BASE64URL:Le/e/a/p$a;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Base64URL-encoded object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Li/a/b/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Le/e/a/p;->x:Li/a/b/d;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/e/a/p;->y:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Le/e/a/p;->z:[B

    .line 5
    iput-object p1, p0, Le/e/a/p;->A:Le/e/a/v/c;

    .line 6
    iput-object p1, p0, Le/e/a/p;->B:Le/e/a/n;

    .line 7
    sget-object p1, Le/e/a/p$a;->JSON:Le/e/a/p$a;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JSON object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Le/e/a/v/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/e/a/p;->A:Le/e/a/v/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Le/e/a/p;->z:[B

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Le/e/a/v/a;->b()[B

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0}, Le/e/a/p;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    sget-object v1, Le/e/a/v/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    .line 6
    :goto_1
    invoke-static {v1}, Le/e/a/v/c;->a([B)Le/e/a/v/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Li/a/b/d;
    .locals 2

    .line 1
    iget-object v0, p0, Le/e/a/p;->x:Li/a/b/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/e/a/p;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {v0}, Le/c/a/a/b/l/c;->b(Ljava/lang/String;)Li/a/b/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/e/a/p;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/e/a/p;->B:Le/e/a/n;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Le/e/a/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/e/a/p;->B:Le/e/a/n;

    invoke-virtual {v0}, Le/e/a/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/e/a/p;->B:Le/e/a/n;

    invoke-virtual {v0}, Le/e/a/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Le/e/a/p;->x:Li/a/b/d;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Li/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_3
    iget-object v0, p0, Le/e/a/p;->z:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    .line 9
    new-instance v1, Ljava/lang/String;

    sget-object v2, Le/e/a/v/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_4
    return-object v1

    .line 10
    :cond_5
    iget-object v0, p0, Le/e/a/p;->A:Le/e/a/v/c;

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {v0}, Le/e/a/v/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v1
.end method
