.class public final Lk/e/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[Lk/e/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lk/e/a/b;

    .line 2
    iput-object v0, p0, Lk/e/a/b$a;->b:[Lk/e/a/b;

    return-void
.end method


# virtual methods
.method public a(Lk/e/a/b;)V
    .locals 4

    :goto_0
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_1
    iget v2, p0, Lk/e/a/b$a;->a:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lk/e/a/b$a;->b:[Lk/e/a/b;

    aget-object v2, v2, v1

    iget-object v2, v2, Lk/e/a/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lk/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_3

    .line 3
    iget v1, p0, Lk/e/a/b$a;->a:I

    iget-object v2, p0, Lk/e/a/b$a;->b:[Lk/e/a/b;

    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 4
    array-length v3, v2

    add-int/lit8 v3, v3, 0x6

    new-array v3, v3, [Lk/e/a/b;

    .line 5
    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v3, p0, Lk/e/a/b$a;->b:[Lk/e/a/b;

    .line 7
    :cond_2
    iget-object v0, p0, Lk/e/a/b$a;->b:[Lk/e/a/b;

    iget v1, p0, Lk/e/a/b$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lk/e/a/b$a;->a:I

    aput-object p1, v0, v1

    .line 8
    :cond_3
    iget-object p1, p1, Lk/e/a/b;->c:Lk/e/a/b;

    goto :goto_0

    :cond_4
    return-void
.end method
