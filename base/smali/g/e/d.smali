.class public Lg/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/d$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Lg/e/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lg/c/d;->d()Lg/c/d;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lg/c/d;->a:Lg/c/d$f;

    .line 3
    sget-object v1, Lg/c/d$f;->SOLARIS:Lg/c/d$f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "socket"

    aput-object v1, v0, v3

    const-string v1, "nsl"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 4
    sget-object v2, Lg/c/d$g;->a:Lg/c/d;

    .line 5
    invoke-virtual {v2}, Lg/c/d;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 6
    sget-object v1, Lg/c/d$g;->a:Lg/c/d;

    .line 7
    invoke-virtual {v1}, Lg/c/d;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_0
    sput-object v0, Lg/e/d;->a:[Ljava/lang/String;

    .line 8
    const-class v0, Lg/e/d$a;

    .line 9
    sget-object v1, Lg/c/m/a$a;->a:Lg/c/m/a;

    .line 10
    check-cast v1, Lg/c/m/c;

    if-eqz v1, :cond_2

    .line 11
    new-instance v2, Lg/c/m/b;

    invoke-direct {v2, v1, v0}, Lg/c/m/b;-><init>(Lg/c/m/c;Ljava/lang/Class;)V

    .line 12
    sget-object v0, Lg/e/d;->a:[Ljava/lang/String;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 13
    iget-object v5, v2, Lg/c/a;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v2}, Lg/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/e/d$a;

    sput-object v0, Lg/e/d;->b:Lg/e/d$a;

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 15
    throw v0
.end method

.method public static a(ILg/a/d/h;I)I
    .locals 8

    .line 21
    sget-object v0, Lg/a/d/i;->SO_RCVTIMEO:Lg/a/d/i;

    invoke-virtual {v0}, Lg/a/d/i;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_0

    sget-object v0, Lg/a/d/i;->SO_SNDTIMEO:Lg/a/d/i;

    invoke-virtual {v0}, Lg/a/d/i;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 23
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    new-instance v6, Lg/c/k/a;

    invoke-direct {v6, v0}, Lg/c/k/a;-><init>(I)V

    .line 25
    sget-object v1, Lg/e/d;->b:Lg/e/d$a;

    .line 26
    invoke-virtual {p1}, Lg/a/d/h;->intValue()I

    move-result v3

    move v2, p0

    move v4, p2

    move-object v5, v7

    invoke-interface/range {v1 .. v6}, Lg/e/d$a;->a(IIILjava/nio/ByteBuffer;Lg/c/k/a;)I

    .line 27
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    .line 28
    :cond_0
    new-instance v6, Lg/d/a;

    .line 29
    sget-object v0, Lg/c/f$a;->a:Lg/c/f;

    .line 30
    invoke-direct {v6, v0}, Lg/d/a;-><init>(Lg/c/f;)V

    .line 31
    new-instance v5, Lg/c/k/a;

    .line 32
    iget-object v0, v6, Lg/c/g;->a:Lg/c/g$c;

    invoke-virtual {v0}, Lg/c/g$c;->b()I

    move-result v0

    .line 33
    invoke-direct {v5, v0}, Lg/c/k/a;-><init>(I)V

    .line 34
    sget-object v0, Lg/e/d;->b:Lg/e/d$a;

    .line 35
    invoke-virtual {p1}, Lg/a/d/h;->intValue()I

    move-result v2

    move v1, p0

    move v3, p2

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Lg/e/d$a;->a(IIILg/d/b;Lg/c/k/a;)I

    .line 36
    iget-object p0, v6, Lg/d/a;->c:Lg/c/g$g;

    invoke-virtual {p0}, Lg/c/g$g;->b()I

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(ILg/a/d/h;Lg/a/d/i;I)I
    .locals 7

    .line 5
    sget-object v0, Lg/a/d/i;->SO_RCVTIMEO:Lg/a/d/i;

    if-eq p2, v0, :cond_0

    sget-object v0, Lg/a/d/i;->SO_SNDTIMEO:Lg/a/d/i;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    .line 6
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 9
    sget-object v1, Lg/e/d;->b:Lg/e/d$a;

    .line 10
    invoke-virtual {p1}, Lg/a/d/h;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lg/a/d/i;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move v2, p0

    invoke-interface/range {v1 .. v6}, Lg/e/d$a;->a(IIILjava/nio/ByteBuffer;I)I

    move-result p0

    return p0

    .line 11
    :cond_0
    new-instance p0, Lg/d/a;

    .line 12
    sget-object p1, Lg/c/f$a;->a:Lg/c/f;

    .line 13
    invoke-direct {p0, p1}, Lg/d/a;-><init>(Lg/c/f;)V

    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 14
    div-int/lit16 p2, p3, 0x3e8

    int-to-long v0, p2

    const/4 p2, 0x0

    aput-wide v0, p1, p2

    const/4 v0, 0x1

    int-to-long v1, p3

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    mul-long v1, v1, v3

    aput-wide v1, p1, v0

    .line 15
    iget-object p0, p0, Lg/d/a;->c:Lg/c/g$g;

    aget-wide p2, p1, p2

    invoke-virtual {p0, p2, p3}, Lg/c/g$g;->a(J)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(ILg/a/d/h;Lg/a/d/i;Lg/c/g;)I
    .locals 0

    .line 16
    iget-object p0, p3, Lg/c/g;->a:Lg/c/g$c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg/c/g$c;->a(I)V

    .line 17
    new-instance p0, Lg/c/k/a;

    .line 18
    iget-object p1, p3, Lg/c/g;->a:Lg/c/g$c;

    invoke-virtual {p1}, Lg/c/g$c;->b()I

    move-result p1

    .line 19
    invoke-direct {p0, p1}, Lg/c/k/a;-><init>(I)V

    const/4 p0, 0x0

    .line 20
    throw p0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lg/c/f$a;->a:Lg/c/f;

    .line 2
    invoke-virtual {v0}, Lg/c/f;->a()I

    move-result v0

    .line 3
    sget-object v1, Lg/e/d;->b:Lg/e/d$a;

    .line 4
    invoke-interface {v1, v0}, Lg/e/d$a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
