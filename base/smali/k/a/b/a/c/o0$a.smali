.class public Lk/a/b/a/c/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/r$b<",
        "Lk/a/b/a/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk/a/b/a/c/o0;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/o0$a;->a:Lk/a/b/a/c/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/c/r;Lk/a/b/a/c/k0;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p0, Lk/a/b/a/c/o0$a;->a:Lk/a/b/a/c/o0;

    .line 2
    iget-object p1, p1, Lk/a/b/a/c/o0;->c:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/a/b/a/b/f;

    if-nez p1, :cond_0

    .line 4
    invoke-interface {p2}, Lk/a/b/a/c/k0;->a()I

    move-result p1

    new-array p1, p1, [B

    .line 5
    invoke-interface {p2, p1}, Lk/a/b/a/c/k0;->a([B)Lk/a/b/a/c/k0;

    .line 6
    new-instance p2, Ljava/lang/String;

    .line 7
    sget-object v0, Lk/a/b/a/c/o0;->e:Ljava/nio/charset/Charset;

    .line 8
    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    invoke-static {p2}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lk/a/b/a/c/o0$a;->a:Lk/a/b/a/c/o0;

    .line 11
    iget-object v0, v0, Lk/a/b/a/c/o0;->c:Ljava/util/Map;

    .line 12
    new-instance v1, Lk/a/b/a/c/k0$a;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {v1, p1}, Lk/a/b/a/c/k0$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 13
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    :cond_0
    return-object p1
.end method
