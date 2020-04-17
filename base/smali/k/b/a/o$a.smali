.class public Lk/b/a/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lk/b/c/e/a;->d([B)I

    move-result v0

    iput v0, p0, Lk/b/a/o$a;->a:I

    iput-object p1, p0, Lk/b/a/o$a;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lk/b/a/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/o$a;->b:[B

    check-cast p1, Lk/b/a/o$a;

    iget-object p1, p1, Lk/b/a/o$a;->b:[B

    .line 1
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lk/b/a/o$a;->a:I

    return v0
.end method
