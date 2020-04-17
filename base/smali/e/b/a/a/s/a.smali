.class public Le/b/a/a/s/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I

.field public static final d:[I


# instance fields
.field public final a:[[B

.field public final b:[[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Le/b/a/a/s/a;->c:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Le/b/a/a/s/a;->d:[I

    return-void

    :array_0
    .array-data 4
        0x1f40
        0x1f40
        0x7d0
        0x7d0
    .end array-data

    :array_1
    .array-data 4
        0xfa0
        0xfa0
        0xc8
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [[B

    .line 2
    iput-object v1, p0, Le/b/a/a/s/a;->a:[[B

    new-array v0, v0, [[C

    .line 3
    iput-object v0, p0, Le/b/a/a/s/a;->b:[[C

    return-void
.end method


# virtual methods
.method public final a(I)[B
    .locals 4

    .line 1
    sget-object v0, Le/b/a/a/s/a;->c:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le/b/a/a/s/a;->a:[[B

    aget-object v2, v1, p1

    if-eqz v2, :cond_2

    .line 3
    array-length v3, v2

    if-ge v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    aput-object v0, v1, p1

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    new-array v2, v0, [B

    :goto_2
    return-object v2
.end method

.method public a(II)[C
    .locals 3

    .line 6
    sget-object v0, Le/b/a/a/s/a;->d:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 7
    :cond_0
    iget-object v0, p0, Le/b/a/a/s/a;->b:[[C

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    .line 8
    array-length v2, v1

    if-ge v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 9
    aput-object p2, v0, p1

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    new-array v1, p2, [C

    :goto_1
    return-object v1
.end method
