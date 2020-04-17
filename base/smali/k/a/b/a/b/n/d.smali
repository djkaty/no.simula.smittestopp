.class public interface abstract Lk/a/b/a/b/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/a/b/a/b/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "amqp:connection:forced"

    .line 1
    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    const-string v0, "amqp:connection:framing-error"

    .line 2
    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    .line 3
    sput-object v0, Lk/a/b/a/b/n/d;->a:Lk/a/b/a/b/f;

    const-string v0, "amqp:connection:redirect"

    .line 4
    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    return-void
.end method
