.class public Lk/c/a/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:[B

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/c/a/a/a/l;->a:Z

    .line 3
    iput v0, p0, Lk/c/a/a/a/l;->c:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lk/c/a/a/a/l;->d:Z

    .line 5
    iput-boolean v0, p0, Lk/c/a/a/a/l;->e:Z

    new-array v0, v0, [B

    .line 6
    invoke-virtual {p0, v0}, Lk/c/a/a/a/l;->a([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lk/c/a/a/a/l;->a:Z

    .line 9
    iput v0, p0, Lk/c/a/a/a/l;->c:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lk/c/a/a/a/l;->d:Z

    .line 11
    iput-boolean v0, p0, Lk/c/a/a/a/l;->e:Z

    .line 12
    invoke-virtual {p0, p1}, Lk/c/a/a/a/l;->a([B)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lk/c/a/a/a/l;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lk/c/a/a/a/l;->a()V

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 5
    iput p1, p0, Lk/c/a/a/a/l;->c:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a([B)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk/c/a/a/a/l;->a()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lk/c/a/a/a/l;->b:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lk/c/a/a/a/l;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
