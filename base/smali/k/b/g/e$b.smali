.class public Lk/b/g/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/g/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public synthetic constructor <init>(Lk/b/g/e;Lk/b/g/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/g/e$b;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lk/b/g/c;
    .locals 12

    :try_start_0
    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v1

    invoke-static {v1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    invoke-static {v3}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object p1

    new-instance v4, Lk/b/g/c;

    new-instance v5, Lk/b/a/l2/s;

    new-instance v6, Lk/b/a/l2/a;

    sget-object v7, Lk/b/a/m2/f;->r:Lk/b/a/o;

    new-instance v8, Lk/b/a/l2/h;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lk/b/a/l2/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v6, v7, v8}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    invoke-direct {v5, v6, v3}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;Lk/b/a/e;)V

    new-instance v3, Lk/b/a/i2/f;

    new-instance v6, Lk/b/a/l2/a;

    sget-object v7, Lk/b/a/m2/f;->r:Lk/b/a/o;

    new-instance v8, Lk/b/a/l2/h;

    invoke-virtual {v0}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2}, Lk/b/a/l;->j()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v8, v0, v1, v2}, Lk/b/a/l2/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v6, v7, v8}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {v3, v6, p1, v0, v0}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    .line 2
    invoke-direct {v4, v5, v3}, Lk/b/g/c;-><init>(Lk/b/a/l2/s;Lk/b/a/i2/f;)V

    return-object v4

    :cond_0
    new-instance p1, Lk/b/g/b;

    const-string v0, "malformed sequence in DSA private key"

    invoke-direct {p1, v0}, Lk/b/g/b;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lk/b/g/b;

    const-string v1, "problem creating DSA private key: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method
