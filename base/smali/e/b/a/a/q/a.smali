.class public final Le/b/a/a/q/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/b/a/a/p/b;

.field public final b:Ljava/io/InputStream;

.field public final c:[B

.field public d:I

.field public e:I

.field public final f:Z

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Le/b/a/a/p/b;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/b/a/a/q/a;->g:Z

    .line 3
    iput-object p1, p0, Le/b/a/a/q/a;->a:Le/b/a/a/p/b;

    .line 4
    iput-object p2, p0, Le/b/a/a/q/a;->b:Ljava/io/InputStream;

    .line 5
    iget-object p2, p1, Le/b/a/a/p/b;->e:[B

    invoke-virtual {p1, p2}, Le/b/a/a/p/b;->a(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p1, Le/b/a/a/p/b;->d:Le/b/a/a/s/a;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Le/b/a/a/s/a;->a(I)[B

    move-result-object p2

    iput-object p2, p1, Le/b/a/a/p/b;->e:[B

    .line 7
    iput-object p2, p0, Le/b/a/a/q/a;->c:[B

    .line 8
    iput v1, p0, Le/b/a/a/q/a;->d:I

    iput v1, p0, Le/b/a/a/q/a;->e:I

    .line 9
    iput-boolean v0, p0, Le/b/a/a/q/a;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Unsupported UCS-4 endianness ("

    const-string v2, ") detected"

    invoke-static {v1, p1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)Z
    .locals 2

    const v0, 0xff00

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1
    iput-boolean v1, p0, Le/b/a/a/q/a;->g:Z

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iput-boolean v0, p0, Le/b/a/a/q/a;->g:Z

    :goto_0
    const/4 p1, 0x2

    .line 3
    iput p1, p0, Le/b/a/a/q/a;->h:I

    return v1

    :cond_1
    return v0
.end method

.method public b(I)Z
    .locals 6

    .line 1
    iget v0, p0, Le/b/a/a/q/a;->e:I

    iget v1, p0, Le/b/a/a/q/a;->d:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    .line 2
    iget-object v2, p0, Le/b/a/a/q/a;->b:Ljava/io/InputStream;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, p0, Le/b/a/a/q/a;->c:[B

    iget v4, p0, Le/b/a/a/q/a;->e:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget v1, p0, Le/b/a/a/q/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Le/b/a/a/q/a;->e:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method
