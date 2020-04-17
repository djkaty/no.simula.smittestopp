.class public Lk/a/b/a/g/i/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/g/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lk/a/b/a/g/i/d;


# direct methods
.method public synthetic constructor <init>(Lk/a/b/a/g/i/d;Lk/a/b/a/g/i/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/g/i/d$e;->a:Lk/a/b/a/g/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/g/g;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lk/a/b/a/g/i/d$e;->a:Lk/a/b/a/g/i/d;

    .line 2
    iget-object v0, v0, Lk/a/b/a/g/i/d;->J:Ljava/nio/channels/Pipe;

    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/Pipe$SourceChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    iget-object v0, p0, Lk/a/b/a/g/i/d$e;->a:Lk/a/b/a/g/i/d;

    invoke-static {v0, p1}, Lk/a/b/a/g/i/d;->a(Lk/a/b/a/g/i/d;Lk/a/b/a/g/g;)V

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
