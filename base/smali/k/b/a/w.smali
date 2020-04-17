.class public Lk/b/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public a:I

.field public final synthetic b:Lk/b/a/x;


# direct methods
.method public constructor <init>(Lk/b/a/x;)V
    .locals 0

    iput-object p1, p0, Lk/b/a/w;->b:Lk/b/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lk/b/a/w;->a:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Lk/b/a/w;->a:I

    iget-object v1, p0, Lk/b/a/w;->b:Lk/b/a/x;

    iget-object v1, v1, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lk/b/a/w;->a:I

    iget-object v1, p0, Lk/b/a/w;->b:Lk/b/a/x;

    iget-object v1, v1, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lk/b/a/w;->a:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ASN1Set Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
