.class public Lk/b/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk/b/a/i2/b;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const-string v0, "malformed data: "

    .line 1
    :try_start_0
    invoke-static {p1}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p1

    .line 2
    instance-of v1, p1, Lk/b/a/i2/b;

    if-eqz v1, :cond_0

    check-cast p1, Lk/b/a/i2/b;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lk/b/a/i2/b;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v1, p1}, Lk/b/a/i2/b;-><init>(Lk/b/a/u;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/b/h/a;->a:Lk/b/a/i2/b;

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v1, Lk/b/h/c;

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lk/b/h/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Lk/b/h/c;

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lk/b/h/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lk/b/h/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lk/b/h/a;

    .line 1
    iget-object v0, p0, Lk/b/h/a;->a:Lk/b/a/i2/b;

    iget-object p1, p1, Lk/b/h/a;->a:Lk/b/a/i2/b;

    .line 2
    invoke-virtual {v0, p1}, Lk/b/a/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/h/a;->a:Lk/b/a/i2/b;

    .line 2
    invoke-virtual {v0}, Lk/b/a/n;->hashCode()I

    move-result v0

    return v0
.end method
