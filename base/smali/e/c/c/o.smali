.class public final Le/c/c/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/c/y/a;)Le/c/c/j;
    .locals 6

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    .line 11
    iget-boolean v2, p1, Le/c/c/y/a;->y:Z

    const/4 v3, 0x1

    .line 12
    iput-boolean v3, p1, Le/c/c/y/a;->y:Z

    .line 13
    :try_start_0
    invoke-static {p1}, Le/c/a/a/b/l/c;->a(Le/c/c/y/a;)Le/c/c/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iput-boolean v2, p1, Le/c/c/y/a;->y:Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 15
    :try_start_1
    new-instance v4, Le/c/c/n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Le/c/c/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 16
    new-instance v4, Le/c/c/n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Le/c/c/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    iput-boolean v2, p1, Le/c/c/y/a;->y:Z

    .line 18
    throw v0
.end method

.method public a(Ljava/lang/String;)Le/c/c/j;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance p1, Le/c/c/y/a;

    invoke-direct {p1, v0}, Le/c/c/y/a;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-virtual {p0, p1}, Le/c/c/o;->a(Le/c/c/y/a;)Le/c/c/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    instance-of v1, v0, Le/c/c/l;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Le/c/c/y/a;->r()Le/c/c/y/b;

    move-result-object p1

    sget-object v1, Le/c/c/y/b;->END_DOCUMENT:Le/c/c/y/b;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Le/c/c/s;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p1, v0}, Le/c/c/s;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 p1, 0x0

    .line 7
    throw p1
    :try_end_0
    .catch Le/c/c/y/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Le/c/c/s;

    invoke-direct {v0, p1}, Le/c/c/s;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 9
    new-instance v0, Le/c/c/k;

    invoke-direct {v0, p1}, Le/c/c/k;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 10
    new-instance v0, Le/c/c/s;

    invoke-direct {v0, p1}, Le/c/c/s;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
