.class public Lk/a/b/a/c/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/r$c;,
        Lk/a/b/a/c/r$b;
    }
.end annotation


# instance fields
.field public a:Lk/a/b/a/c/k0;

.field public final b:Ljava/nio/charset/CharsetDecoder;

.field public final c:[Lk/a/b/a/c/j0;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lk/a/b/a/c/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lk/a/b/a/c/y<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/c/r;->b:Ljava/nio/charset/CharsetDecoder;

    const/16 v0, 0x100

    new-array v0, v0, [Lk/a/b/a/c/j0;

    .line 3
    iput-object v0, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/c/r;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/c/r;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 40
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->c()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, 0x56

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Lk/a/b/a/c/q;

    const-string v1, "Expected boolean type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :pswitch_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :pswitch_2
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/c/r;->e()B

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lk/a/b/a/c/r$b;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/c/r$b<",
            "TV;>;I)TV;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->i()Lk/a/b/a/c/k0;

    move-result-object v0

    invoke-interface {v0, p2}, Lk/a/b/a/c/k0;->b(I)Lk/a/b/a/c/k0;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lk/a/b/a/c/r$b;->a(Lk/a/b/a/c/r;Lk/a/b/a/c/k0;)Ljava/lang/Object;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->position()I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Lk/a/b/a/c/k0;->a(I)Lk/a/b/a/c/k0;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, -0x5f

    if-eq v0, v1, :cond_2

    const/16 v1, -0x4f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-object p1

    .line 31
    :cond_0
    new-instance p1, Lk/a/b/a/a;

    const-string v1, "Expected String type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    iget-object p1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v0, 0xb1

    aget-object p1, p1, v0

    invoke-interface {p1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 33
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v0, 0xa1

    aget-object p1, p1, v0

    invoke-interface {p1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    .line 19
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, -0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Lk/a/b/a/a;

    const-string v1, "Expected Timestamp type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p0}, Lk/a/b/a/c/r;->g()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method

.method public a(Lk/a/b/a/b/a;)Lk/a/b/a/b/a;
    .locals 2

    .line 22
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, -0x60

    if-eq v0, v1, :cond_2

    const/16 v1, -0x50

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-object p1

    .line 23
    :cond_0
    new-instance p1, Lk/a/b/a/a;

    const-string v1, "Expected Binary type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    iget-object p1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v0, 0xb0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/b/a;

    return-object p1

    .line 25
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v0, 0xa0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/b/a;

    return-object p1
.end method

.method public a(Lk/a/b/a/b/f;)Lk/a/b/a/b/f;
    .locals 2

    .line 26
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, -0x5d

    if-eq v0, v1, :cond_2

    const/16 v1, -0x4d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-object p1

    .line 27
    :cond_0
    new-instance p1, Lk/a/b/a/a;

    const-string v1, "Expected Symbol type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    iget-object p1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v0, 0xb3

    aget-object p1, p1, v0

    invoke-interface {p1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/b/f;

    return-object p1

    .line 29
    :cond_2
    iget-object p1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v0, 0xa3

    aget-object p1, p1, v0

    invoke-interface {p1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/b/f;

    return-object p1
.end method

.method public a(Lk/a/b/a/b/g;)Lk/a/b/a/b/g;
    .locals 2

    .line 11
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 p1, 0x50

    if-ne v0, p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lk/a/b/a/c/r;->e()B

    move-result p1

    invoke-static {p1}, Lk/a/b/a/b/g;->a(B)Lk/a/b/a/b/g;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Lk/a/b/a/c/q;

    const-string v1, "Expected unsigned byte type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p1
.end method

.method public a(Lk/a/b/a/b/h;)Lk/a/b/a/b/h;
    .locals 2

    .line 14
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    const/16 p1, 0x43

    if-eq v0, p1, :cond_2

    const/16 p1, 0x52

    if-eq v0, p1, :cond_1

    const/16 p1, 0x70

    if-ne v0, p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lk/a/b/a/c/r;->f()I

    move-result p1

    invoke-static {p1}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Lk/a/b/a/c/q;

    const-string v1, "Expected UnsignedInteger type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lk/a/b/a/c/r;->e()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    sget-object p1, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    :cond_3
    return-object p1
.end method

.method public a(Ljava/lang/Object;Lk/a/b/a/c/s;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/r;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 39
    new-instance v0, Lk/a/b/a/c/k0$a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/k0$a;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    return-void
.end method

.method public a(Lk/a/b/a/c/i0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/c/i0<",
            "TV;>;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Lk/a/b/a/c/i0;->i()Ljava/util/Collection;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/c/j0;

    .line 36
    iget-object v1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    invoke-interface {v0}, Lk/a/b/a/c/j0;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    aput-object v0, v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 4

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, 0x56

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 9
    new-instance p1, Lk/a/b/a/c/q;

    const-string v1, "Expected boolean type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :pswitch_2
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/c/r;->e()B

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Lk/a/b/a/c/q0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lk/a/b/a/c/r;->b(Z)Lk/a/b/a/c/q0;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lk/a/b/a/c/q0;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lk/a/b/a/c/r;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_a

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->position()I

    move-result v1

    invoke-interface {v0, v1}, Lk/a/b/a/c/k0;->get(I)B

    move-result v0

    const/16 v1, -0x80

    const/4 v2, 0x0

    const/16 v3, 0x53

    if-eq v3, v0, :cond_3

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, -0x5d

    if-eq v1, v0, :cond_2

    const/16 v1, -0x4d

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/f;)Lk/a/b/a/b/f;

    move-result-object v0

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x40

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_4

    .line 7
    invoke-virtual {p0}, Lk/a/b/a/c/r;->e()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_4
    new-instance p1, Lk/a/b/a/c/q;

    const-string v1, "Expected UnsignedLong type but found encoding: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    sget-object v2, Lk/a/b/a/b/i;->A:Lk/a/b/a/b/i;

    :cond_6
    move-object v0, v2

    goto :goto_2

    .line 10
    :cond_7
    invoke-virtual {p0}, Lk/a/b/a/c/r;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v0

    :goto_2
    if-nez p1, :cond_8

    .line 11
    iget-object p1, p0, Lk/a/b/a/c/r;->e:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/c/q0;

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lk/a/b/a/c/r;->b(Z)Lk/a/b/a/c/q0;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lk/a/b/a/c/r;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/c/s;

    if-nez v1, :cond_9

    .line 14
    new-instance v1, Lk/a/b/a/c/r$a;

    invoke-direct {v1, p0, v0}, Lk/a/b/a/c/r$a;-><init>(Lk/a/b/a/c/r;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, v0, v1}, Lk/a/b/a/c/r;->a(Ljava/lang/Object;Lk/a/b/a/c/s;)V

    .line 16
    :cond_9
    new-instance v0, Lk/a/b/a/c/w;

    invoke-direct {v0, v1, p1}, Lk/a/b/a/c/w;-><init>(Lk/a/b/a/c/s;Lk/a/b/a/c/q0;)V

    return-object v0

    .line 17
    :cond_a
    iget-object p1, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    aget-object p1, p1, v0

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    const/16 v1, -0x3f

    if-eq v0, v1, :cond_2

    const/16 v1, -0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lk/a/b/a/a;

    const-string v2, "Expected Map type but found encoding: "

    invoke-static {v2, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v1, 0xd1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v1, 0xc1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->position()I

    move-result v1

    invoke-interface {v0, v1}, Lk/a/b/a/c/k0;->get(I)B

    move-result v0

    const/16 v1, -0x20

    if-eq v0, v1, :cond_0

    const/16 v1, -0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    check-cast v1, Lk/a/b/a/c/e$b;

    invoke-interface {v1}, Lk/a/b/a/c/e$b;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-interface {v1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lk/a/b/a/c/q;

    const-string v1, "Unknown constructor"

    invoke-direct {v0, v1}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()B
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->d()I

    move-result v0

    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v0}, Lk/a/b/a/c/k0;->l()J

    move-result-wide v0

    return-wide v0
.end method
