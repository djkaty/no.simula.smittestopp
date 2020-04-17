.class public Lk/b/a/h0;
.super Lk/b/a/p;
.source "SourceFile"


# instance fields
.field public final y:I

.field public final z:[Lk/b/a/p;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/b/a/p;-><init>([B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lk/b/a/h0;->z:[Lk/b/a/p;

    const/16 p1, 0x3e8

    iput p1, p0, Lk/b/a/h0;->y:I

    return-void
.end method

.method public constructor <init>([Lk/b/a/p;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    :try_start_0
    aget-object v2, p1, v1

    check-cast v2, Lk/b/a/a1;

    .line 3
    iget-object v2, v2, Lk/b/a/p;->x:[B

    .line 4
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exception converting octets "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found in input should only contain DEROctetString"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lk/b/a/p;-><init>([B)V

    iput-object p1, p0, Lk/b/a/h0;->z:[Lk/b/a/p;

    const/16 p1, 0x3e8

    iput p1, p0, Lk/b/a/h0;->y:I

    return-void
.end method

.method public static a(Lk/b/a/u;)Lk/b/a/h0;
    .locals 4

    invoke-virtual {p0}, Lk/b/a/u;->size()I

    move-result v0

    new-array v1, v0, [Lk/b/a/p;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v3

    invoke-static {v3}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lk/b/a/h0;

    invoke-direct {p0, v1}, Lk/b/a/h0;-><init>([Lk/b/a/p;)V

    return-object p0
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    invoke-virtual {p0}, Lk/b/a/h0;->k()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    const/16 v1, 0x24

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    const/16 p2, 0x80

    iget-object v1, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 2
    invoke-virtual {p1, v0}, Lk/b/a/r;->a(Ljava/util/Enumeration;)V

    .line 3
    iget-object p2, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p1, Lk/b/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public f()I
    .locals 3

    invoke-virtual {p0}, Lk/b/a/h0;->k()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/e;

    invoke-interface {v2}, Lk/b/a/e;->c()Lk/b/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/t;->f()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lk/b/a/p;->x:[B

    return-object v0
.end method

.method public k()Ljava/util/Enumeration;
    .locals 6

    iget-object v0, p0, Lk/b/a/h0;->z:[Lk/b/a/p;

    if-nez v0, :cond_2

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lk/b/a/p;->x:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget v4, p0, Lk/b/a/h0;->y:I

    add-int/2addr v4, v2

    array-length v5, v3

    if-le v4, v5, :cond_0

    array-length v4, v3

    :cond_0
    sub-int/2addr v4, v2

    new-array v3, v4, [B

    iget-object v5, p0, Lk/b/a/p;->x:[B

    invoke-static {v5, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lk/b/a/a1;

    invoke-direct {v4, v3}, Lk/b/a/a1;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v3, p0, Lk/b/a/h0;->y:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lk/b/a/h0$a;

    invoke-direct {v0, p0}, Lk/b/a/h0$a;-><init>(Lk/b/a/h0;)V

    return-object v0
.end method
