.class public Lk/b/g/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/j/h/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final a:Lk/b/g/d;

.field public final synthetic b:Lk/b/g/e;


# direct methods
.method public constructor <init>(Lk/b/g/e;Lk/b/g/d;)V
    .locals 0

    iput-object p1, p0, Lk/b/g/e$f;->b:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk/b/g/e$f;->a:Lk/b/g/d;

    return-void
.end method


# virtual methods
.method public a(Lk/b/j/h/b/b;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p1, Lk/b/j/h/b/b;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/b/j/h/b/a;

    .line 3
    iget-object v4, v3, Lk/b/j/h/b/a;->a:Ljava/lang/String;

    const-string v5, "Proc-Type"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iget-object v4, v3, Lk/b/j/h/b/a;->b:Ljava/lang/String;

    const-string v5, "4,ENCRYPTED"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v4, v3, Lk/b/j/h/b/a;->a:Ljava/lang/String;

    const-string v5, "DEK-Info"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    iget-object v2, v3, Lk/b/j/h/b/a;->b:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p1, Lk/b/j/h/b/b;->c:[B

    const-string v0, "exception decoding - please check password and data."

    if-eqz v1, :cond_3

    .line 11
    :try_start_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lk/b/j/g/f;->a(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Lk/b/g/a;

    iget-object v5, p0, Lk/b/g/e$f;->a:Lk/b/g/d;

    invoke-direct {v4, v2, v3, p1, v5}, Lk/b/g/a;-><init>(Ljava/lang/String;[B[BLk/b/g/d;)V

    return-object v4

    :cond_3
    iget-object v2, p0, Lk/b/g/e$f;->a:Lk/b/g/d;

    invoke-interface {v2, p1}, Lk/b/g/d;->a([B)Lk/b/g/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    if-eqz v1, :cond_4

    new-instance v1, Lk/b/g/b;

    invoke-direct {v1, v0, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_4
    new-instance v0, Lk/b/g/b;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    if-eqz v1, :cond_5

    new-instance v1, Lk/b/g/b;

    invoke-direct {v1, v0, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_5
    new-instance v0, Lk/b/g/b;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
