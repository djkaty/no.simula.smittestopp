.class public final Lg/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lg/c/d$f;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketOption<",
            "*>;",
            "Lg/a/d/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketOption<",
            "*>;",
            "Lg/a/d/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lg/c/d;->d()Lg/c/d;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lg/c/d;->a:Lg/c/d$f;

    .line 3
    sput-object v0, Lg/e/b;->a:Lg/c/d$f;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lg/e/b;->b:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lg/e/b;->c:Ljava/util/Map;

    .line 6
    sget-object v0, Lg/e/b;->b:Ljava/util/Map;

    sget-object v1, Lg/e/j;->c:Ljava/net/SocketOption;

    sget-object v2, Lg/a/d/i;->SO_RCVBUF:Lg/a/d/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lg/e/b;->b:Ljava/util/Map;

    sget-object v1, Lg/e/j;->a:Ljava/net/SocketOption;

    sget-object v2, Lg/a/d/i;->SO_SNDBUF:Lg/a/d/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lg/e/b;->b:Ljava/util/Map;

    sget-object v1, Lg/e/j;->d:Ljava/net/SocketOption;

    sget-object v2, Lg/a/d/i;->SO_RCVTIMEO:Lg/a/d/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lg/e/b;->b:Ljava/util/Map;

    sget-object v1, Lg/e/j;->b:Ljava/net/SocketOption;

    sget-object v2, Lg/a/d/i;->SO_SNDTIMEO:Lg/a/d/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lg/e/b;->b:Ljava/util/Map;

    sget-object v1, Lg/e/j;->e:Ljava/net/SocketOption;

    sget-object v2, Lg/a/d/i;->SO_KEEPALIVE:Lg/a/d/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lg/e/b;->b:Ljava/util/Map;

    sget-object v1, Lg/e/j;->g:Ljava/net/SocketOption;

    sget-object v2, Lg/a/d/i;->SO_PASSCRED:Lg/a/d/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lg/e/b;->c:Ljava/util/Map;

    sget-object v1, Lg/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    sget-object v0, Lg/e/b;->c:Ljava/util/Map;

    sget-object v1, Lg/e/j;->f:Ljava/net/SocketOption;

    sget-object v2, Lg/a/d/i;->SO_PEERCRED:Lg/a/d/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Lg/e/h;
    .locals 4

    .line 15
    new-instance v0, Lg/e/h;

    invoke-direct {v0}, Lg/e/h;-><init>()V

    .line 16
    iget-object v1, v0, Lg/e/h;->x:Lg/e/e;

    .line 17
    new-instance v2, Lg/c/k/a;

    .line 18
    invoke-virtual {v1}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object v3

    .line 19
    iget v3, v3, Lg/c/g$h;->d:I

    add-int/lit8 v3, v3, 0x2

    .line 20
    invoke-direct {v2, v3}, Lg/c/k/a;-><init>(I)V

    .line 21
    sget-object v3, Lg/e/d;->b:Lg/e/d$a;

    .line 22
    invoke-interface {v3, p0, v1, v2}, Lg/e/d$a;->a(ILg/e/e;Lg/c/k/a;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 23
    iget-object p0, v2, Lg/c/k/a;->x:Ljava/lang/Number;

    .line 24
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lg/e/e;->a(I)V

    return-object v0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-static {}, Lg/e/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILg/e/h;)Lg/e/h;
    .locals 3

    if-nez p1, :cond_1

    .line 1
    invoke-static {}, Lg/e/e;->e()Lg/e/e;

    move-result-object p1

    .line 2
    sget-object v0, Lg/a/d/e;->PF_UNIX:Lg/a/d/e;

    invoke-virtual {p1, v0}, Lg/e/e;->a(Lg/a/d/e;)V

    .line 3
    sget-object v0, Lg/e/b;->a:Lg/c/d$f;

    sget-object v1, Lg/c/d$f;->LINUX:Lg/c/d$f;

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 4
    invoke-virtual {p1, v0}, Lg/e/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    const-string v1, "jnr-unixsocket-tmp"

    const-string v2, ".sock"

    .line 5
    invoke-static {v1, v2, v0}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/e/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p1, Lg/e/h;->x:Lg/e/e;

    .line 10
    :goto_0
    invoke-virtual {p1}, Lg/e/e;->d()I

    move-result v0

    .line 11
    sget-object v1, Lg/e/d;->b:Lg/e/d$a;

    .line 12
    invoke-interface {v1, p0, p1, v0}, Lg/e/d$a;->a(ILg/e/e;I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 13
    invoke-static {p0}, Lg/e/b;->b(I)Lg/e/h;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-static {}, Lg/e/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILjava/net/SocketOption;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/SocketOption<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 26
    const-class v0, Ljava/lang/Integer;

    if-eqz p2, :cond_b

    .line 27
    sget-object v1, Lg/e/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/a/d/i;

    if-eqz v1, :cond_a

    .line 28
    invoke-interface {p1}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 29
    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unsupported option type"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    if-ne v2, v0, :cond_2

    .line 31
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 32
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 33
    :goto_1
    sget-object v2, Lg/e/j;->c:Ljava/net/SocketOption;

    if-eq p1, v2, :cond_3

    sget-object v2, Lg/e/j;->a:Ljava/net/SocketOption;

    if-ne p1, v2, :cond_4

    .line 34
    :cond_3
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_9

    .line 35
    :cond_4
    sget-object v2, Lg/e/j;->d:Ljava/net/SocketOption;

    if-eq p1, v2, :cond_5

    sget-object v2, Lg/e/j;->b:Ljava/net/SocketOption;

    if-ne p1, v2, :cond_6

    .line 36
    :cond_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_8

    .line 37
    :cond_6
    sget-object p1, Lg/a/d/h;->SOL_SOCKET:Lg/a/d/h;

    invoke-static {p0, p1, v1, v0}, Lg/e/d;->a(ILg/a/d/h;Lg/a/d/i;I)I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 38
    :cond_7
    new-instance p0, Ljava/io/IOException;

    invoke-static {}, Lg/e/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid send/receive timeout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid send/receive buffer size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Option not found or not writable"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 42
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid option value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(I)Lg/e/h;
    .locals 4

    .line 1
    new-instance v0, Lg/e/h;

    invoke-direct {v0}, Lg/e/h;-><init>()V

    .line 2
    iget-object v1, v0, Lg/e/h;->x:Lg/e/e;

    .line 3
    new-instance v2, Lg/c/k/a;

    .line 4
    invoke-virtual {v1}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object v3

    .line 5
    iget v3, v3, Lg/c/g$h;->d:I

    add-int/lit8 v3, v3, 0x2

    .line 6
    invoke-direct {v2, v3}, Lg/c/k/a;-><init>(I)V

    .line 7
    sget-object v3, Lg/e/d;->b:Lg/e/d$a;

    .line 8
    invoke-interface {v3, p0, v1, v2}, Lg/e/d$a;->b(ILg/e/e;Lg/c/k/a;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 9
    iget-object p0, v2, Lg/c/k/a;->x:Ljava/lang/Number;

    .line 10
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lg/e/e;->a(I)V

    return-object v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-static {}, Lg/e/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method
