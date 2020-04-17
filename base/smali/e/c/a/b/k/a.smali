.class public Le/c/a/b/k/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Le/c/a/b/k/a;->a:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    sput-object v2, Le/c/a/b/k/a;->b:[I

    new-array v2, v0, [I

    const v4, 0x101009c

    aput v4, v2, v3

    .line 3
    sput-object v2, Le/c/a/b/k/a;->c:[I

    new-array v2, v0, [I

    const v4, 0x1010367

    aput v4, v2, v3

    .line 4
    sput-object v2, Le/c/a/b/k/a;->d:[I

    new-array v2, v1, [I

    .line 5
    fill-array-data v2, :array_1

    sput-object v2, Le/c/a/b/k/a;->e:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 6
    fill-array-data v2, :array_2

    sput-object v2, Le/c/a/b/k/a;->f:[I

    new-array v2, v1, [I

    .line 7
    fill-array-data v2, :array_3

    sput-object v2, Le/c/a/b/k/a;->g:[I

    new-array v1, v1, [I

    .line 8
    fill-array-data v1, :array_4

    sput-object v1, Le/c/a/b/k/a;->h:[I

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v3

    .line 9
    sput-object v0, Le/c/a/b/k/a;->i:[I

    return-void

    :array_0
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    :array_3
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    :array_4
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data
.end method

.method public static a(Landroid/content/res/ColorStateList;[I)I
    .locals 1

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    invoke-static {p0, p1}, Ld/i/c/a;->b(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 1
    sget-object v3, Le/c/a/b/k/a;->i:[I

    aput-object v3, v1, v2

    .line 2
    sget-object v3, Le/c/a/b/k/a;->e:[I

    invoke-static {p0, v3}, Le/c/a/b/k/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    .line 3
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    aput-object v3, v1, v2

    .line 4
    sget-object v3, Le/c/a/b/k/a;->a:[I

    invoke-static {p0, v3}, Le/c/a/b/k/a;->a(Landroid/content/res/ColorStateList;[I)I

    move-result p0

    aput p0, v0, v2

    .line 5
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method
