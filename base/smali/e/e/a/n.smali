.class public Le/e/a/n;
.super Le/e/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/n$a;
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public B:Le/e/a/v/c;

.field public C:Le/e/a/n$a;

.field public final z:Le/e/a/m;


# direct methods
.method public constructor <init>(Le/e/a/m;Le/e/a/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/e/a/g;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    iput-object p1, p0, Le/e/a/n;->z:Le/e/a/m;

    if-eqz p2, :cond_2

    .line 3
    iput-object p2, p0, Le/e/a/g;->x:Le/e/a/p;

    .line 4
    iget-object v0, p1, Le/e/a/e;->B:Ljava/util/Map;

    const-string v1, "b64"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Le/e/a/e;->B:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Le/e/a/e;->a()Le/e/a/v/c;

    move-result-object p1

    .line 7
    iget-object p1, p1, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Le/e/a/p;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/e/a/n;->A:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Le/e/a/e;->a()Le/e/a/v/c;

    move-result-object p1

    invoke-virtual {p2}, Le/e/a/p;->a()Le/e/a/v/c;

    move-result-object p2

    invoke-static {p1, p2}, Le/e/a/n;->a(Le/e/a/v/c;Le/e/a/v/c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/e/a/n;->A:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Le/e/a/n;->B:Le/e/a/v/c;

    .line 11
    sget-object p1, Le/e/a/n$a;->UNSIGNED:Le/e/a/n$a;

    iput-object p1, p0, Le/e/a/n;->C:Le/e/a/n$a;

    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The payload must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWS header must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Le/e/a/v/c;Le/e/a/v/c;Le/e/a/v/c;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Le/e/a/g;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-static {p1}, Le/e/a/m;->a(Le/e/a/v/c;)Le/e/a/m;

    move-result-object v1

    iput-object v1, p0, Le/e/a/n;->z:Le/e/a/m;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    .line 16
    new-instance v1, Le/e/a/p;

    invoke-direct {v1, p2}, Le/e/a/p;-><init>(Le/e/a/v/c;)V

    .line 17
    iput-object v1, p0, Le/e/a/g;->x:Le/e/a/p;

    .line 18
    invoke-static {p1, p2}, Le/e/a/n;->a(Le/e/a/v/c;Le/e/a/v/c;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/e/a/n;->A:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 19
    iput-object p3, p0, Le/e/a/n;->B:Le/e/a/v/c;

    .line 20
    sget-object v1, Le/e/a/n$a;->SIGNED:Le/e/a/n$a;

    iput-object v1, p0, Le/e/a/n;->C:Le/e/a/n$a;

    const/4 v1, 0x3

    new-array v1, v1, [Le/e/a/v/c;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    .line 21
    iput-object v1, p0, Le/e/a/g;->y:[Le/e/a/v/c;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The third part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The second part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Ljava/text/ParseException;

    const-string p3, "Invalid JWS header: "

    invoke-static {p3}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The first part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Le/e/a/v/c;Le/e/a/v/c;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object p0, p0, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object p0, p1, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Le/e/a/o;)V
    .locals 3

    .line 6
    check-cast p1, Le/e/a/s/b/a;

    .line 7
    iget-object v0, p1, Le/e/a/s/b/a;->a:Ljava/util/Set;

    .line 8
    iget-object v1, p0, Le/e/a/n;->z:Le/e/a/m;

    .line 9
    iget-object v1, v1, Le/e/a/e;->x:Le/e/a/a;

    .line 10
    check-cast v1, Le/e/a/l;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Le/e/a/f;

    const-string v1, "The \""

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    iget-object v2, p0, Le/e/a/n;->z:Le/e/a/m;

    .line 14
    iget-object v2, v2, Le/e/a/e;->x:Le/e/a/a;

    .line 15
    check-cast v2, Le/e/a/l;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" algorithm is not allowed or supported by the JWS signer: Supported algorithms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p1, p1, Le/e/a/s/b/a;->a:Ljava/util/Set;

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/e/a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 11
    iget-object v0, p0, Le/e/a/n;->C:Le/e/a/n$a;

    sget-object v1, Le/e/a/n$a;->SIGNED:Le/e/a/n$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/e/a/n$a;->VERIFIED:Le/e/a/n$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWS object must be in a signed or verified state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v0, 0x2e

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/e/a/n;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/e/a/n;->B:Le/e/a/v/c;

    .line 14
    iget-object v0, v0, Le/e/a/v/a;->x:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Le/e/a/o;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/e/a/n;->C:Le/e/a/n$a;

    sget-object v1, Le/e/a/n$a;->UNSIGNED:Le/e/a/n$a;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/e/a/n;->a(Le/e/a/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Le/e/a/n;->z:Le/e/a/m;

    .line 4
    iget-object v1, p0, Le/e/a/n;->A:Ljava/lang/String;

    sget-object v2, Le/e/a/v/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1
    :try_end_1
    .catch Le/e/a/f; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    check-cast p1, Le/e/a/s/a;

    :try_start_2
    invoke-virtual {p1, v0, v1}, Le/e/a/s/a;->a(Le/e/a/m;[B)Le/e/a/v/c;

    move-result-object p1

    iput-object p1, p0, Le/e/a/n;->B:Le/e/a/v/c;
    :try_end_2
    .catch Le/e/a/f; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :try_start_3
    sget-object p1, Le/e/a/n$a;->SIGNED:Le/e/a/n$a;

    iput-object p1, p0, Le/e/a/n;->C:Le/e/a/n$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 8
    :goto_0
    :try_start_4
    new-instance v0, Le/e/a/f;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/e/a/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :goto_1
    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The JWS object must be in an unsigned state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method
