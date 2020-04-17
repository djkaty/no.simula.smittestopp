.class public Lk/a/b/a/f/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/f/d/a$b;
    }
.end annotation


# static fields
.field public static final tlsCodec:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lk/a/b/a/f/d/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _applicationProperties:Lk/a/b/a/b/k/d;

.field public _body:Lk/a/b/a/b/k/t;

.field public _deliveryAnnotations:Lk/a/b/a/b/k/j;

.field public _footer:Lk/a/b/a/b/k/k;

.field public _header:Lk/a/b/a/b/k/l;

.field public _messageAnnotations:Lk/a/b/a/b/k/m;

.field public _properties:Lk/a/b/a/b/k/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/a/b/a/f/d/a$a;

    invoke-direct {v0}, Lk/a/b/a/f/d/a$a;-><init>()V

    sput-object v0, Lk/a/b/a/f/d/a;->tlsCodec:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/b/k/l;Lk/a/b/a/b/k/j;Lk/a/b/a/b/k/m;Lk/a/b/a/b/k/p;Lk/a/b/a/b/k/d;Lk/a/b/a/b/k/t;Lk/a/b/a/b/k/k;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    .line 4
    iput-object p2, p0, Lk/a/b/a/f/d/a;->_deliveryAnnotations:Lk/a/b/a/b/k/j;

    .line 5
    iput-object p3, p0, Lk/a/b/a/f/d/a;->_messageAnnotations:Lk/a/b/a/b/k/m;

    .line 6
    iput-object p4, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 7
    iput-object p5, p0, Lk/a/b/a/f/d/a;->_applicationProperties:Lk/a/b/a/b/k/d;

    .line 8
    iput-object p6, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    .line 9
    iput-object p7, p0, Lk/a/b/a/f/d/a;->_footer:Lk/a/b/a/b/k/k;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    return-void
.end method

.method public decode([BII)I
    .locals 0

    .line 3
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lk/a/b/a/f/d/a;->decode(Ljava/nio/ByteBuffer;)V

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    sub-int/2addr p3, p1

    return p3
.end method

.method public decode(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    new-instance v0, Lk/a/b/a/c/k0$a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/k0$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p0, v0}, Lk/a/b/a/f/d/a;->decode(Lk/a/b/a/c/k0;)V

    return-void
.end method

.method public decode(Lk/a/b/a/c/k0;)V
    .locals 4

    .line 6
    sget-object v0, Lk/a/b/a/f/d/a;->tlsCodec:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/f/d/a$b;

    iget-object v0, v0, Lk/a/b/a/f/d/a$b;->a:Lk/a/b/a/c/r;

    .line 7
    iput-object p1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    .line 9
    iput-object v1, p0, Lk/a/b/a/f/d/a;->_deliveryAnnotations:Lk/a/b/a/b/k/j;

    .line 10
    iput-object v1, p0, Lk/a/b/a/f/d/a;->_messageAnnotations:Lk/a/b/a/b/k/m;

    .line 11
    iput-object v1, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 12
    iput-object v1, p0, Lk/a/b/a/f/d/a;->_applicationProperties:Lk/a/b/a/b/k/d;

    .line 13
    iput-object v1, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    .line 14
    iput-object v1, p0, Lk/a/b/a/f/d/a;->_footer:Lk/a/b/a/b/k/k;

    .line 15
    invoke-interface {p1}, Lk/a/b/a/c/k0;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/b/k/t;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 17
    :goto_0
    instance-of v3, v2, Lk/a/b/a/b/k/l;

    if-eqz v3, :cond_2

    .line 18
    check-cast v2, Lk/a/b/a/b/k/l;

    iput-object v2, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    .line 19
    invoke-interface {p1}, Lk/a/b/a/c/k0;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/b/k/t;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 21
    :cond_2
    :goto_1
    instance-of v3, v2, Lk/a/b/a/b/k/j;

    if-eqz v3, :cond_4

    .line 22
    check-cast v2, Lk/a/b/a/b/k/j;

    iput-object v2, p0, Lk/a/b/a/f/d/a;->_deliveryAnnotations:Lk/a/b/a/b/k/j;

    .line 23
    invoke-interface {p1}, Lk/a/b/a/c/k0;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/b/k/t;

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 25
    :cond_4
    :goto_2
    instance-of v3, v2, Lk/a/b/a/b/k/m;

    if-eqz v3, :cond_6

    .line 26
    check-cast v2, Lk/a/b/a/b/k/m;

    iput-object v2, p0, Lk/a/b/a/f/d/a;->_messageAnnotations:Lk/a/b/a/b/k/m;

    .line 27
    invoke-interface {p1}, Lk/a/b/a/c/k0;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/b/k/t;

    goto :goto_3

    :cond_5
    move-object v2, v1

    .line 29
    :cond_6
    :goto_3
    instance-of v3, v2, Lk/a/b/a/b/k/p;

    if-eqz v3, :cond_8

    .line 30
    check-cast v2, Lk/a/b/a/b/k/p;

    iput-object v2, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 31
    invoke-interface {p1}, Lk/a/b/a/c/k0;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/b/k/t;

    goto :goto_4

    :cond_7
    move-object v2, v1

    .line 33
    :cond_8
    :goto_4
    instance-of v3, v2, Lk/a/b/a/b/k/d;

    if-eqz v3, :cond_a

    .line 34
    check-cast v2, Lk/a/b/a/b/k/d;

    iput-object v2, p0, Lk/a/b/a/f/d/a;->_applicationProperties:Lk/a/b/a/b/k/d;

    .line 35
    invoke-interface {p1}, Lk/a/b/a/c/k0;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/b/a/b/k/t;

    goto :goto_5

    :cond_9
    move-object v2, v1

    :cond_a
    :goto_5
    if-eqz v2, :cond_c

    .line 37
    instance-of v3, v2, Lk/a/b/a/b/k/k;

    if-nez v3, :cond_c

    .line 38
    iput-object v2, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    .line 39
    invoke-interface {p1}, Lk/a/b/a/c/k0;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 40
    invoke-virtual {v0}, Lk/a/b/a/c/r;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lk/a/b/a/b/k/t;

    goto :goto_6

    :cond_b
    move-object v2, v1

    .line 41
    :cond_c
    :goto_6
    instance-of p1, v2, Lk/a/b/a/b/k/k;

    if-eqz p1, :cond_d

    .line 42
    check-cast v2, Lk/a/b/a/b/k/k;

    iput-object v2, p0, Lk/a/b/a/f/d/a;->_footer:Lk/a/b/a/b/k/k;

    .line 43
    :cond_d
    iput-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    return-void
.end method

.method public encode(Lk/a/b/a/c/y0;)I
    .locals 3

    .line 3
    invoke-interface {p1}, Lk/a/b/a/c/y0;->c()I

    move-result v0

    .line 4
    sget-object v1, Lk/a/b/a/f/d/a;->tlsCodec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/b/a/f/d/a$b;

    iget-object v1, v1, Lk/a/b/a/f/d/a$b;->b:Lk/a/b/a/c/x;

    .line 5
    iput-object p1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 6
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getHeader()Lk/a/b/a/b/k/l;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getHeader()Lk/a/b/a/b/k/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getDeliveryAnnotations()Lk/a/b/a/b/k/j;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getDeliveryAnnotations()Lk/a/b/a/b/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getMessageAnnotations()Lk/a/b/a/b/k/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getProperties()Lk/a/b/a/b/k/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    .line 14
    :cond_3
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getApplicationProperties()Lk/a/b/a/b/k/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getBody()Lk/a/b/a/b/k/t;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getBody()Lk/a/b/a/b/k/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    .line 18
    :cond_5
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getFooter()Lk/a/b/a/b/k/k;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {p0}, Lk/a/b/a/f/d/a;->getFooter()Lk/a/b/a/b/k/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    :cond_6
    const/4 v2, 0x0

    .line 20
    iput-object v2, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 21
    invoke-interface {p1}, Lk/a/b/a/c/y0;->c()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public encode([BII)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    new-instance p2, Lk/a/b/a/c/y0$a;

    invoke-direct {p2, p1}, Lk/a/b/a/c/y0$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p2}, Lk/a/b/a/f/d/a;->encode(Lk/a/b/a/c/y0;)I

    move-result p1

    return p1
.end method

.method public encode2([BII)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    new-instance p2, Lk/a/b/a/c/y0$a;

    invoke-direct {p2, p1}, Lk/a/b/a/c/y0$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    new-instance p1, Lk/a/b/a/c/u;

    invoke-direct {p1}, Lk/a/b/a/c/u;-><init>()V

    .line 4
    new-instance p3, Lk/a/b/a/c/m;

    invoke-direct {p3, p2, p1}, Lk/a/b/a/c/m;-><init>(Lk/a/b/a/c/y0;Lk/a/b/a/c/y0;)V

    .line 5
    invoke-virtual {p3}, Lk/a/b/a/c/m;->position()I

    move-result p1

    .line 6
    invoke-virtual {p0, p3}, Lk/a/b/a/f/d/a;->encode(Lk/a/b/a/c/y0;)I

    .line 7
    invoke-virtual {p3}, Lk/a/b/a/c/m;->position()I

    move-result p2

    sub-int/2addr p2, p1

    return p2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/p;->c:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getApplicationProperties()Lk/a/b/a/b/k/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_applicationProperties:Lk/a/b/a/b/k/d;

    return-object v0
.end method

.method public getBody()Lk/a/b/a/b/k/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/p;->h:Lk/a/b/a/b/f;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/p;->g:Lk/a/b/a/b/f;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/f;->x:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/p;->j:Ljava/util/Date;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getDeliveryAnnotations()Lk/a/b/a/b/k/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_deliveryAnnotations:Lk/a/b/a/b/k/j;

    return-object v0
.end method

.method public getDeliveryCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/l;->e:Lk/a/b/a/b/h;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getError()Lk/a/b/a/f/b;
    .locals 1

    .line 1
    sget-object v0, Lk/a/b/a/f/b;->OK:Lk/a/b/a/f/b;

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/p;->i:Ljava/util/Date;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getFooter()Lk/a/b/a/b/k/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_footer:Lk/a/b/a/b/k/k;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/p;->k:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getGroupSequence()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/p;->l:Lk/a/b/a/b/h;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, v0, Lk/a/b/a/b/h;->x:I

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getHeader()Lk/a/b/a/b/k/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    return-object v0
.end method

.method public getMessageAnnotations()Lk/a/b/a/b/k/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_messageAnnotations:Lk/a/b/a/b/k/m;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getPriority()S
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/l;->b:Lk/a/b/a/b/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lk/a/b/a/b/g;->shortValue()S

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    :goto_1
    return v0
.end method

.method public getProperties()Lk/a/b/a/b/k/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    return-object v0
.end method

.method public getReplyTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/p;->e:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getReplyToGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/p;->m:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lk/a/b/a/b/k/p;->d:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/l;->c:Lk/a/b/a/b/h;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method public getUserId()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/p;->b:Lk/a/b/a/b/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lk/a/b/a/b/a;->c:I

    .line 4
    new-array v2, v1, [B

    .line 5
    iget-object v3, v0, Lk/a/b/a/b/a;->a:[B

    .line 6
    iget v0, v0, Lk/a/b/a/b/a;->b:I

    const/4 v4, 0x0

    .line 7
    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDurable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/l;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isFirstAcquirer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lk/a/b/a/b/k/l;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->c:Ljava/lang/String;

    return-void
.end method

.method public setApplicationProperties(Lk/a/b/a/b/k/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_applicationProperties:Lk/a/b/a/b/k/d;

    return-void
.end method

.method public setBody(Lk/a/b/a/b/k/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    invoke-static {p1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lk/a/b/a/b/k/p;->h:Lk/a/b/a/b/f;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    invoke-static {p1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lk/a/b/a/b/k/p;->g:Lk/a/b/a/b/f;

    return-void
.end method

.method public setCorrelationId(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->f:Ljava/lang/Object;

    return-void
.end method

.method public setCreationTime(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4
    iput-object v1, v0, Lk/a/b/a/b/k/p;->j:Ljava/util/Date;

    return-void
.end method

.method public setDeliveryAnnotations(Lk/a/b/a/b/k/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_deliveryAnnotations:Lk/a/b/a/b/k/j;

    return-void
.end method

.method public setDeliveryCount(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/l;

    invoke-direct {v0}, Lk/a/b/a/b/k/l;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    invoke-static {p1, p2}, Lk/a/b/a/b/h;->a(J)Lk/a/b/a/b/h;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/l;->e:Lk/a/b/a/b/h;

    return-void
.end method

.method public setDurable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/b/k/l;

    invoke-direct {v0}, Lk/a/b/a/b/k/l;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/l;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public setExpiryTime(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4
    iput-object v1, v0, Lk/a/b/a/b/k/p;->i:Ljava/util/Date;

    return-void
.end method

.method public setFirstAcquirer(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/l;

    invoke-direct {v0}, Lk/a/b/a/b/k/l;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/l;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public setFooter(Lk/a/b/a/b/k/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_footer:Lk/a/b/a/b/k/k;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->k:Ljava/lang/String;

    return-void
.end method

.method public setGroupSequence(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    long-to-int p2, p1

    invoke-static {p2}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->l:Lk/a/b/a/b/h;

    return-void
.end method

.method public setHeader(Lk/a/b/a/b/k/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    return-void
.end method

.method public setMessageAnnotations(Lk/a/b/a/b/k/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_messageAnnotations:Lk/a/b/a/b/k/m;

    return-void
.end method

.method public setMessageId(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->a:Ljava/lang/Object;

    return-void
.end method

.method public setPriority(S)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/l;

    invoke-direct {v0}, Lk/a/b/a/b/k/l;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    int-to-byte p1, p1

    invoke-static {p1}, Lk/a/b/a/b/g;->a(B)Lk/a/b/a/b/g;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/l;->b:Lk/a/b/a/b/g;

    return-void
.end method

.method public setProperties(Lk/a/b/a/b/k/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    return-void
.end method

.method public setReplyTo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->e:Ljava/lang/String;

    return-void
.end method

.method public setReplyToGroupId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->m:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 3
    :cond_1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/p;->d:Ljava/lang/String;

    return-void
.end method

.method public setTtl(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/b/k/l;

    invoke-direct {v0}, Lk/a/b/a/b/k/l;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    invoke-static {p1, p2}, Lk/a/b/a/b/h;->a(J)Lk/a/b/a/b/h;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lk/a/b/a/b/k/l;->c:Lk/a/b/a/b/h;

    return-void
.end method

.method public setUserId([B)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lk/a/b/a/b/k/p;->b:Lk/a/b/a/b/a;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lk/a/b/a/b/k/p;

    invoke-direct {v0}, Lk/a/b/a/b/k/p;-><init>()V

    iput-object v0, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    .line 5
    :cond_1
    array-length v0, p1

    new-array v0, v0, [B

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    new-instance v1, Lk/a/b/a/b/a;

    invoke-direct {v1, v0}, Lk/a/b/a/b/a;-><init>([B)V

    .line 8
    iput-object v1, p1, Lk/a/b/a/b/k/p;->b:Lk/a/b/a/b/a;

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Message{"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    if-eqz v1, :cond_0

    const-string v1, "header="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_header:Lk/a/b/a/b/k/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    if-eqz v1, :cond_1

    const-string v1, "properties="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_properties:Lk/a/b/a/b/k/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_messageAnnotations:Lk/a/b/a/b/k/m;

    if-eqz v1, :cond_2

    const-string v1, "message_annotations="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_messageAnnotations:Lk/a/b/a/b/k/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    if-eqz v1, :cond_3

    const-string v1, "body="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lk/a/b/a/f/d/a;->_body:Lk/a/b/a/b/k/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
