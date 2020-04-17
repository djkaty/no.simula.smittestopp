.class public Lk/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/e/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:[B

.field public c:Lk/e/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/e/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lk/e/a/x;II)I
    .locals 2

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lk/e/a/x;->c:I

    const/16 v1, 0x31

    if-ge v0, v1, :cond_0

    const-string v0, "Synthetic"

    .line 10
    invoke-virtual {p0, v0}, Lk/e/a/x;->c(Ljava/lang/String;)I

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "Signature"

    .line 11
    invoke-virtual {p0, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x8

    :cond_1
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    const-string p1, "Deprecated"

    .line 12
    invoke-virtual {p0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x6

    :cond_2
    return v0
.end method

.method public static a(Lk/e/a/x;IILk/e/a/c;)V
    .locals 3

    and-int/lit16 v0, p1, 0x1000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    iget v0, p0, Lk/e/a/x;->c:I

    const/16 v2, 0x31

    if-ge v0, v2, :cond_0

    const-string v0, "Synthetic"

    .line 14
    invoke-virtual {p0, v0}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {p3, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "Signature"

    .line 15
    invoke-virtual {p0, v0}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v0, 0x2

    .line 16
    invoke-virtual {p3, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 17
    invoke-virtual {p3, p2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    :cond_1
    const/high16 p2, 0x20000

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    const-string p1, "Deprecated"

    .line 18
    invoke-virtual {p0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {p3, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1
    iget-object v1, v1, Lk/e/a/b;->c:Lk/e/a/b;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final a(Lk/e/a/x;)I
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lk/e/a/b;->a(Lk/e/a/x;[BIII)I

    move-result p1

    return p1
.end method

.method public final a(Lk/e/a/x;[BIII)I
    .locals 0

    .line 3
    iget-object p2, p1, Lk/e/a/x;->a:Lk/e/a/g;

    const/4 p2, 0x0

    move-object p3, p0

    :goto_0
    if-eqz p3, :cond_0

    .line 4
    iget-object p4, p3, Lk/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 5
    iget-object p4, p3, Lk/e/a/b;->b:[B

    .line 6
    array-length p4, p4

    add-int/lit8 p4, p4, 0x6

    add-int/2addr p2, p4

    .line 7
    iget-object p3, p3, Lk/e/a/b;->c:Lk/e/a/b;

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final a(Lk/e/a/x;Lk/e/a/c;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lk/e/a/b;->a(Lk/e/a/x;[BIIILk/e/a/c;)V

    return-void
.end method

.method public final a(Lk/e/a/x;[BIIILk/e/a/c;)V
    .locals 0

    .line 19
    iget-object p2, p1, Lk/e/a/x;->a:Lk/e/a/g;

    move-object p2, p0

    :goto_0
    if-eqz p2, :cond_0

    .line 20
    iget-object p3, p2, Lk/e/a/b;->b:[B

    .line 21
    array-length p4, p3

    .line 22
    iget-object p5, p2, Lk/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p5}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p6, p5}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {p6, p4}, Lk/e/a/c;->c(I)Lk/e/a/c;

    const/4 p5, 0x0

    .line 23
    invoke-virtual {p6, p3, p5, p4}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 24
    iget-object p2, p2, Lk/e/a/b;->c:Lk/e/a/b;

    goto :goto_0

    :cond_0
    return-void
.end method
