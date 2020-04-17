.class public abstract Lk/b/a/u;
.super Lk/b/a/t;
.source "SourceFile"

# interfaces
.implements Lk/b/j/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/t;",
        "Lk/b/j/c<",
        "Lk/b/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field public x:[Lk/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    sget-object v0, Lk/b/a/f;->d:[Lk/b/a/e;

    iput-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    return-void
.end method

.method public constructor <init>(Lk/b/a/e;)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lk/b/a/e;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'element\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lk/b/a/f;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lk/b/a/f;->a()[Lk/b/a/e;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'elementVector\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lk/b/a/e;)V
    .locals 5

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 1
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 2
    invoke-static {p1}, Lk/b/a/f;->a([Lk/b/a/e;)[Lk/b/a/e;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'elements\' cannot be null, or contain null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lk/b/a/e;Z)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lk/b/a/f;->a([Lk/b/a/e;)[Lk/b/a/e;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/u;
    .locals 2

    if-eqz p0, :cond_4

    instance-of v0, p0, Lk/b/a/u;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lk/b/a/v;

    if-eqz v0, :cond_1

    check-cast p0, Lk/b/a/v;

    invoke-interface {p0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "failed to construct sequence from byte[]: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p0, Lk/b/a/e;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lk/b/a/e;

    invoke-interface {v0}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v0

    instance-of v1, v0, Lk/b/a/u;

    if-eqz v1, :cond_3

    check-cast v0, Lk/b/a/u;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    check-cast p0, Lk/b/a/u;

    return-object p0
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/u;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lk/b/a/b0;->y:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lk/b/a/b0;->y:Z

    if-eqz v0, :cond_3

    .line 4
    instance-of p0, p0, Lk/b/a/n0;

    if-eqz p0, :cond_2

    new-instance p0, Lk/b/a/j0;

    invoke-direct {p0, p1}, Lk/b/a/j0;-><init>(Lk/b/a/e;)V

    return-object p0

    :cond_2
    new-instance p0, Lk/b/a/r1;

    invoke-direct {p0, p1}, Lk/b/a/r1;-><init>(Lk/b/a/e;)V

    return-object p0

    :cond_3
    instance-of v0, p1, Lk/b/a/u;

    if-eqz v0, :cond_5

    check-cast p1, Lk/b/a/u;

    instance-of p0, p0, Lk/b/a/n0;

    if-eqz p0, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lk/b/a/u;->i()Lk/b/a/t;

    move-result-object p0

    check-cast p0, Lk/b/a/u;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance: "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lk/b/a/e;
    .locals 1

    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(Lk/b/a/t;)Z
    .locals 5

    instance-of v0, p1, Lk/b/a/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lk/b/a/u;

    invoke-virtual {p0}, Lk/b/a/u;->size()I

    move-result v0

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v3

    iget-object v4, p1, Lk/b/a/u;->x:[Lk/b/a/e;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lk/b/a/t;->a(Lk/b/a/t;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/e1;

    iget-object v1, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/b/a/e1;-><init>([Lk/b/a/e;Z)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    mul-int/lit16 v1, v1, 0x101

    iget-object v2, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/n;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()Lk/b/a/t;
    .locals 3

    new-instance v0, Lk/b/a/r1;

    iget-object v1, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/b/a/r1;-><init>([Lk/b/a/e;Z)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lk/b/a/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lk/b/j/a;

    iget-object v1, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    invoke-direct {v0, v1}, Lk/b/j/a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public j()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lk/b/a/u$a;

    invoke-direct {v0, p0}, Lk/b/a/u$a;-><init>(Lk/b/a/u;)V

    return-object v0
.end method

.method public k()[Lk/b/a/e;
    .locals 1

    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lk/b/a/u;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lk/b/a/u;->x:[Lk/b/a/e;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
