.class public Lk/b/a/c;
.super Lk/b/a/t;
.source "SourceFile"


# static fields
.field public static final y:Lk/b/a/c;

.field public static final z:Lk/b/a/c;


# instance fields
.field public final x:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk/b/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/b/a/c;-><init>(B)V

    sput-object v0, Lk/b/a/c;->y:Lk/b/a/c;

    new-instance v0, Lk/b/a/c;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lk/b/a/c;-><init>(B)V

    sput-object v0, Lk/b/a/c;->z:Lk/b/a/c;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/t;-><init>()V

    iput-byte p1, p0, Lk/b/a/c;->x:B

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/c;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lk/b/a/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    :try_start_0
    invoke-static {p0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p0

    check-cast p0, Lk/b/a/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "failed to construct boolean from byte[]: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lk/b/a/c;

    return-object p0
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/c;
    .locals 0

    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lk/b/a/c;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/p;->j()[B

    move-result-object p0

    invoke-static {p0}, Lk/b/a/c;->b([B)Lk/b/a/c;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lk/b/a/c;->a(Ljava/lang/Object;)Lk/b/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Lk/b/a/c;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Lk/b/a/c;

    invoke-direct {v0, p0}, Lk/b/a/c;-><init>(B)V

    return-object v0

    :cond_0
    sget-object p0, Lk/b/a/c;->y:Lk/b/a/c;

    return-object p0

    :cond_1
    sget-object p0, Lk/b/a/c;->z:Lk/b/a/c;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    iget-byte v0, p0, Lk/b/a/c;->x:B

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Lk/b/a/r;->a(I)V

    .line 3
    iget-object p1, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public a(Lk/b/a/t;)Z
    .locals 2

    instance-of v0, p1, Lk/b/a/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lk/b/a/c;

    invoke-virtual {p0}, Lk/b/a/c;->j()Z

    move-result v0

    invoke-virtual {p1}, Lk/b/a/c;->j()Z

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lk/b/a/t;
    .locals 1

    invoke-virtual {p0}, Lk/b/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lk/b/a/c;->z:Lk/b/a/c;

    goto :goto_0

    :cond_0
    sget-object v0, Lk/b/a/c;->y:Lk/b/a/c;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lk/b/a/c;->j()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-byte v0, p0, Lk/b/a/c;->x:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lk/b/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method
