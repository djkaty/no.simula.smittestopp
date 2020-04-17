.class public final Lk/a/b/a/b/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/e;
.implements Lk/a/b/a/b/k/o;


# static fields
.field public static final a:Lk/a/b/a/b/k/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "amqp:accepted:list"

    .line 1
    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    .line 2
    new-instance v0, Lk/a/b/a/b/k/a;

    invoke-direct {v0}, Lk/a/b/a/b/k/a;-><init>()V

    sput-object v0, Lk/a/b/a/b/k/a;->a:Lk/a/b/a/b/k/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Accepted{}"

    return-object v0
.end method
