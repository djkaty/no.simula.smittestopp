.class public final Lk/a/b/a/c/n0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/r$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/c/r;Lk/a/b/a/c/k0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p1, Lk/a/b/a/c/r;->b:Ljava/nio/charset/CharsetDecoder;

    .line 2
    :try_start_0
    invoke-interface {p2, p1}, Lk/a/b/a/c/k0;->a(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 4
    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot parse String"

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 6
    throw p2
.end method
