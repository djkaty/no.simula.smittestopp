.class public Lk/b/g/e$k;
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
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public synthetic constructor <init>(Lk/b/g/e;Lk/b/g/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/g/e$k;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lk/b/g/c;
    .locals 5

    :try_start_0
    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1
    instance-of v0, p1, Lk/b/a/i2/g;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/a/i2/g;

    goto :goto_0

    :cond_0
    new-instance v0, Lk/b/a/i2/g;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/i2/g;-><init>(Lk/b/a/u;)V

    move-object p1, v0

    .line 2
    :goto_0
    new-instance v0, Lk/b/a/i2/h;

    .line 3
    iget-object v1, p1, Lk/b/a/i2/g;->y:Ljava/math/BigInteger;

    .line 4
    iget-object v2, p1, Lk/b/a/i2/g;->z:Ljava/math/BigInteger;

    .line 5
    invoke-direct {v0, v1, v2}, Lk/b/a/i2/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/a/i2/e;->b:Lk/b/a/o;

    sget-object v3, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {v1, v2, v3}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v2, Lk/b/g/c;

    new-instance v3, Lk/b/a/l2/s;

    invoke-direct {v3, v1, v0}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;Lk/b/a/e;)V

    new-instance v0, Lk/b/a/i2/f;

    const/4 v4, 0x0

    .line 6
    invoke-direct {v0, v1, p1, v4, v4}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    .line 7
    invoke-direct {v2, v3, v0}, Lk/b/g/c;-><init>(Lk/b/a/l2/s;Lk/b/a/i2/f;)V

    return-object v2

    :cond_1
    new-instance p1, Lk/b/g/b;

    const-string v0, "malformed sequence in RSA private key"

    invoke-direct {p1, v0}, Lk/b/g/b;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lk/b/g/b;

    const-string v1, "problem creating RSA private key: "

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
