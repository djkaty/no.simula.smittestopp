.class public Lk/a/a/b/d/a/a;
.super Lk/a/a/b/d/a/b;
.source "SourceFile"


# instance fields
.field public final b:[Lk/a/a/b/d/a/b;


# direct methods
.method public varargs constructor <init>([Lk/a/a/b/d/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/a/a/b/d/a/b;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 3
    :goto_0
    check-cast p1, [Lk/a/a/b/d/a/b;

    iput-object p1, p0, Lk/a/a/b/d/a/a;->b:[Lk/a/a/b/d/a/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/a/b/d/a/a;->b:[Lk/a/a/b/d/a/b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, p1, p2, p3}, Lk/a/a/b/d/a/b;->a(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v4

    if-eqz v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
