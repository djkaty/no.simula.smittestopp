.class public Ld/g/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/g/a/g$a;
    }
.end annotation


# static fields
.field public static k:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:[F

.field public g:Ld/g/a/g$a;

.field public h:[Ld/g/a/b;

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ld/g/a/g$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ld/g/a/g;->b:I

    .line 3
    iput v0, p0, Ld/g/a/g;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ld/g/a/g;->d:I

    const/4 v1, 0x7

    new-array v1, v1, [F

    .line 5
    iput-object v1, p0, Ld/g/a/g;->f:[F

    const/16 v1, 0x8

    new-array v1, v1, [Ld/g/a/b;

    .line 6
    iput-object v1, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    .line 7
    iput v0, p0, Ld/g/a/g;->i:I

    .line 8
    iput v0, p0, Ld/g/a/g;->j:I

    .line 9
    iput-object p1, p0, Ld/g/a/g;->g:Ld/g/a/g$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ld/g/a/g;->a:Ljava/lang/String;

    .line 8
    sget-object v0, Ld/g/a/g$a;->UNKNOWN:Ld/g/a/g$a;

    iput-object v0, p0, Ld/g/a/g;->g:Ld/g/a/g$a;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Ld/g/a/g;->d:I

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Ld/g/a/g;->b:I

    .line 11
    iput v1, p0, Ld/g/a/g;->c:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Ld/g/a/g;->e:F

    .line 13
    iput v0, p0, Ld/g/a/g;->i:I

    .line 14
    iput v0, p0, Ld/g/a/g;->j:I

    return-void
.end method

.method public final a(Ld/g/a/b;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ld/g/a/g;->i:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/g/a/b;

    iput-object v0, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    .line 5
    :cond_2
    iget-object v0, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    iget v1, p0, Ld/g/a/g;->i:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Ld/g/a/g;->i:I

    return-void
.end method

.method public final b(Ld/g/a/b;)V
    .locals 5

    .line 1
    iget v0, p0, Ld/g/a/g;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    :goto_1
    sub-int p1, v0, v2

    add-int/lit8 p1, p1, -0x1

    if-ge v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    add-int v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    aput-object v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4
    :cond_0
    iget p1, p0, Ld/g/a/g;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ld/g/a/g;->i:I

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Ld/g/a/b;)V
    .locals 12

    .line 1
    iget v0, p0, Ld/g/a/g;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Ld/g/a/g;->h:[Ld/g/a/b;

    aget-object v4, v3, v2

    iget-object v4, v4, Ld/g/a/b;->d:Ld/g/a/a;

    aget-object v3, v3, v2

    .line 3
    iget v5, v4, Ld/g/a/a;->i:I

    :goto_1
    const/4 v6, 0x0

    :goto_2
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 4
    iget v8, v4, Ld/g/a/a;->a:I

    if-ge v6, v8, :cond_2

    .line 5
    iget-object v8, v4, Ld/g/a/a;->f:[I

    aget v8, v8, v5

    iget-object v9, p1, Ld/g/a/b;->a:Ld/g/a/g;

    iget v10, v9, Ld/g/a/g;->b:I

    if-ne v8, v10, :cond_1

    .line 6
    iget-object v6, v4, Ld/g/a/a;->h:[F

    aget v5, v6, v5

    .line 7
    invoke-virtual {v4, v9, v1}, Ld/g/a/a;->a(Ld/g/a/g;Z)F

    .line 8
    iget-object v6, p1, Ld/g/a/b;->d:Ld/g/a/a;

    .line 9
    iget v8, v6, Ld/g/a/a;->i:I

    const/4 v9, 0x0

    :goto_3
    if-eq v8, v7, :cond_0

    .line 10
    iget v10, v6, Ld/g/a/a;->a:I

    if-ge v9, v10, :cond_0

    .line 11
    iget-object v10, v4, Ld/g/a/a;->c:Ld/g/a/c;

    iget-object v10, v10, Ld/g/a/c;->c:[Ld/g/a/g;

    iget-object v11, v6, Ld/g/a/a;->f:[I

    aget v11, v11, v8

    aget-object v10, v10, v11

    .line 12
    iget-object v11, v6, Ld/g/a/a;->h:[F

    aget v11, v11, v8

    mul-float v11, v11, v5

    .line 13
    invoke-virtual {v4, v10, v11, v1}, Ld/g/a/a;->a(Ld/g/a/g;FZ)V

    .line 14
    iget-object v10, v6, Ld/g/a/a;->g:[I

    aget v8, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 15
    :cond_0
    iget v6, v3, Ld/g/a/b;->b:F

    iget v7, p1, Ld/g/a/b;->b:F

    mul-float v7, v7, v5

    add-float/2addr v7, v6

    iput v7, v3, Ld/g/a/b;->b:F

    .line 16
    iget v5, v4, Ld/g/a/a;->i:I

    goto :goto_1

    .line 17
    :cond_1
    iget-object v7, v4, Ld/g/a/a;->g:[I

    aget v5, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iput v1, p0, Ld/g/a/g;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ld/g/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
