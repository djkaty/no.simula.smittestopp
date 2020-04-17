.class public abstract Lk/b/f/a/b$b;
.super Lk/b/f/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Lk/b/f/b/b;->a(Ljava/math/BigInteger;)Lk/b/f/b/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/f/a/b;-><init>(Lk/b/f/b/a;)V

    return-void
.end method
