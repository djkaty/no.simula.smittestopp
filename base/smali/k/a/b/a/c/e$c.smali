.class public Lk/a/b/a/c/e$c;
.super Lk/a/b/a/c/m0;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/m0<",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Lk/a/b/a/c/e$b;"
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/Object;

.field public d:Lk/a/b/a/c/r0;

.field public e:I

.field public final synthetic f:Lk/a/b/a/c/e;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/e;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/m0;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)I
    .locals 1

    .line 134
    iget-object v0, p0, Lk/a/b/a/c/e$c;->c:[Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 135
    iput-object p1, p0, Lk/a/b/a/c/e$c;->c:[Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 137
    invoke-static {p1, v0}, Lk/a/b/a/c/e;->a([Ljava/lang/Object;Lk/a/b/a/c/x;)Lk/a/b/a/c/r0;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/c/e$c;->d:Lk/a/b/a/c/r0;

    .line 138
    invoke-static {p1, v0}, Lk/a/b/a/c/e;->a([Ljava/lang/Object;Lk/a/b/a/c/r0;)I

    move-result p1

    .line 139
    iput p1, p0, Lk/a/b/a/c/e$c;->e:I

    .line 140
    :cond_0
    iget p1, p0, Lk/a/b/a/c/e$c;->e:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a([B)V
    .locals 5

    .line 16
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 17
    iget-object v0, v0, Lk/a/b/a/c/e;->c:Lk/a/b/a/c/j;

    .line 18
    iget-object v0, v0, Lk/a/b/a/c/j;->a:Lk/a/b/a/c/j$a;

    if-eqz v0, :cond_1

    .line 19
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 20
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 21
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 22
    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 23
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v1, v1

    .line 24
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 25
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 26
    array-length v2, p1

    int-to-byte v2, v2

    .line 27
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 28
    invoke-virtual {v0}, Lk/a/b/a/c/d;->c()V

    .line 29
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 30
    iget-object v4, v0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 31
    iget-object v4, v4, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v4, v3}, Lk/a/b/a/c/y0;->a(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 32
    throw p1
.end method

.method public a([C)V
    .locals 6

    .line 114
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 115
    iget-object v0, v0, Lk/a/b/a/c/e;->i:Lk/a/b/a/c/k;

    .line 116
    iget-object v0, v0, Lk/a/b/a/c/k;->a:Lk/a/b/a/c/k$a;

    if-eqz v0, :cond_1

    .line 117
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 118
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 119
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 120
    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 121
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v1, v1

    .line 122
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 123
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 124
    array-length v2, p1

    int-to-byte v2, v2

    .line 125
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 126
    invoke-virtual {v0}, Lk/a/b/a/c/d;->c()V

    .line 127
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    .line 128
    iget-object v4, v0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    const v5, 0xffff

    and-int/2addr v3, v5

    .line 129
    iget-object v4, v4, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v4, v3}, Lk/a/b/a/c/y0;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 130
    throw p1
.end method

.method public a([D)V
    .locals 6

    .line 97
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 98
    iget-object v0, v0, Lk/a/b/a/c/e;->h:Lk/a/b/a/c/t;

    .line 99
    iget-object v0, v0, Lk/a/b/a/c/t;->a:Lk/a/b/a/c/t$a;

    if-eqz v0, :cond_1

    .line 100
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x2

    .line 101
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 102
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 103
    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 104
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v1, v1

    .line 105
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 106
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 107
    array-length v2, p1

    int-to-byte v2, v2

    .line 108
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 109
    invoke-virtual {v0}, Lk/a/b/a/c/d;->c()V

    .line 110
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    .line 111
    iget-object v5, v0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 112
    iget-object v5, v5, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v5, v3, v4}, Lk/a/b/a/c/y0;->a(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 113
    throw p1
.end method

.method public a([F)V
    .locals 5

    .line 80
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 81
    iget-object v0, v0, Lk/a/b/a/c/e;->g:Lk/a/b/a/c/a0;

    .line 82
    iget-object v0, v0, Lk/a/b/a/c/a0;->a:Lk/a/b/a/c/a0$a;

    if-eqz v0, :cond_1

    .line 83
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 84
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 85
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 86
    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 87
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v1, v1

    .line 88
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 89
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 90
    array-length v2, p1

    int-to-byte v2, v2

    .line 91
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 92
    invoke-virtual {v0}, Lk/a/b/a/c/d;->c()V

    .line 93
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 94
    iget-object v4, v0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 95
    iget-object v4, v4, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v4, v3}, Lk/a/b/a/c/y0;->a(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 96
    throw p1
.end method

.method public a([I)V
    .locals 4

    .line 50
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 51
    invoke-virtual {v0, p1}, Lk/a/b/a/c/e;->c([I)Lk/a/b/a/c/c0$b;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lk/a/b/a/c/j0;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    const/4 v3, 0x0

    .line 53
    invoke-interface {v0, v3}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v3

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    .line 54
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 55
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 56
    invoke-interface {v1, v3}, Lk/a/b/a/c/y0;->c(I)V

    .line 57
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v2, v3

    .line 58
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 59
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 60
    array-length v2, p1

    int-to-byte v2, v2

    .line 61
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 62
    invoke-interface {v0}, Lk/a/b/a/c/j0;->c()V

    .line 63
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 64
    invoke-interface {v0, v3}, Lk/a/b/a/c/c0$b;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([J)V
    .locals 5

    .line 65
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 66
    invoke-virtual {v0, p1}, Lk/a/b/a/c/e;->c([J)Lk/a/b/a/c/f0$b;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lk/a/b/a/c/j0;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    const/4 v3, 0x0

    .line 68
    invoke-interface {v0, v3}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v3

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    .line 69
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 70
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 71
    invoke-interface {v1, v3}, Lk/a/b/a/c/y0;->c(I)V

    .line 72
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v2, v3

    .line 73
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 74
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 75
    array-length v2, p1

    int-to-byte v2, v2

    .line 76
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 77
    invoke-interface {v0}, Lk/a/b/a/c/j0;->c()V

    .line 78
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p1, v2

    .line 79
    invoke-interface {v0, v3, v4}, Lk/a/b/a/c/f0$b;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/Object;Lk/a/b/a/c/r0;I)V
    .locals 0

    .line 131
    iput-object p1, p0, Lk/a/b/a/c/e$c;->c:[Ljava/lang/Object;

    .line 132
    iput-object p2, p0, Lk/a/b/a/c/e$c;->d:Lk/a/b/a/c/r0;

    .line 133
    iput p3, p0, Lk/a/b/a/c/e$c;->e:I

    return-void
.end method

.method public a([S)V
    .locals 5

    .line 33
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 34
    iget-object v0, v0, Lk/a/b/a/c/e;->d:Lk/a/b/a/c/l0;

    .line 35
    iget-object v0, v0, Lk/a/b/a/c/l0;->a:Lk/a/b/a/c/l0$a;

    if-eqz v0, :cond_1

    .line 36
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 37
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 38
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 39
    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->c(I)V

    .line 40
    iget-object v2, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v1, v1

    .line 41
    iget-object v2, v2, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v2, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 42
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 43
    array-length v2, p1

    int-to-byte v2, v2

    .line 44
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 45
    invoke-virtual {v0}, Lk/a/b/a/c/d;->c()V

    .line 46
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, p1, v2

    .line 47
    iget-object v4, v0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 48
    iget-object v4, v4, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v4, v3}, Lk/a/b/a/c/y0;->a(S)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 49
    throw p1
.end method

.method public a([Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 2
    invoke-virtual {v0, p1}, Lk/a/b/a/c/e;->b([Z)Lk/a/b/a/c/h$b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lk/a/b/a/c/j0;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    const/4 v3, 0x0

    .line 4
    invoke-interface {v0, v3}, Lk/a/b/a/c/r0;->b(Ljava/lang/Object;)I

    move-result v3

    mul-int v3, v3, v2

    add-int/2addr v3, v1

    .line 5
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 6
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 7
    invoke-interface {v1, v3}, Lk/a/b/a/c/y0;->c(I)V

    .line 8
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte v2, v3

    .line 9
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 10
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 11
    array-length v2, p1

    int-to-byte v2, v2

    .line 12
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 13
    invoke-interface {v0}, Lk/a/b/a/c/j0;->c()V

    .line 14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-boolean v3, p1, v2

    .line 15
    invoke-interface {v0, v3}, Lk/a/b/a/c/h$b;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lk/a/b/a/c/r0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "[",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    .line 142
    invoke-interface {p1}, Lk/a/b/a/c/r0;->getType()Lk/a/b/a/c/a;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/e$c;->a([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/e$c;->c:[Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, Lk/a/b/a/c/e$c;->c:[Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 5
    invoke-static {p1, v0}, Lk/a/b/a/c/e;->b([Ljava/lang/Object;Lk/a/b/a/c/x;)Lk/a/b/a/c/r0;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lk/a/b/a/c/e$c;->d:Lk/a/b/a/c/r0;

    .line 7
    invoke-static {p1, v0}, Lk/a/b/a/c/e;->a([Ljava/lang/Object;Lk/a/b/a/c/r0;)I

    move-result v1

    .line 8
    iput v1, p0, Lk/a/b/a/c/e$c;->e:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lk/a/b/a/c/e$c;->d:Lk/a/b/a/c/r0;

    .line 10
    :goto_0
    iget-object v1, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 11
    array-length v2, p1

    int-to-byte v2, v2

    .line 12
    iget-object v1, v1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v1, v2}, Lk/a/b/a/c/y0;->a(B)V

    .line 13
    invoke-interface {v0}, Lk/a/b/a/c/r0;->c()V

    .line 14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_a

    aget-object v3, p1, v2

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 16
    move-object v4, v0

    check-cast v4, Lk/a/b/a/c/e$b;

    .line 17
    invoke-interface {v4}, Lk/a/b/a/c/j0;->getType()Lk/a/b/a/c/i0;

    move-result-object v5

    check-cast v5, Lk/a/b/a/c/e;

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 19
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    .line 20
    check-cast v3, [Z

    .line 21
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([Z)V

    goto :goto_2

    .line 22
    :cond_1
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_2

    .line 23
    check-cast v3, [B

    .line 24
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([B)V

    goto :goto_2

    .line 25
    :cond_2
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_3

    .line 26
    check-cast v3, [S

    .line 27
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([S)V

    goto :goto_2

    .line 28
    :cond_3
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    .line 29
    check-cast v3, [I

    .line 30
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([I)V

    goto :goto_2

    .line 31
    :cond_4
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    .line 32
    check-cast v3, [J

    .line 33
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([J)V

    goto :goto_2

    .line 34
    :cond_5
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    .line 35
    check-cast v3, [F

    .line 36
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([F)V

    goto :goto_2

    .line 37
    :cond_6
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7

    .line 38
    check-cast v3, [D

    .line 39
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([D)V

    goto :goto_2

    .line 40
    :cond_7
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_8

    .line 41
    check-cast v3, [C

    .line 42
    invoke-interface {v4, v3}, Lk/a/b/a/c/e$b;->a([C)V

    goto :goto_2

    .line 43
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot encode arrays of type "

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_9
    invoke-interface {v0, v3}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lk/a/b/a/c/e$c;->a([Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 5
    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->c(I)V

    .line 6
    iget-object v0, p0, Lk/a/b/a/c/d;->a:Lk/a/b/a/c/x;

    int-to-byte p1, p1

    .line 7
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    invoke-interface {v0, p1}, Lk/a/b/a/c/y0;->a(B)V

    return-void
.end method

.method public g()B
    .locals 1

    const/16 v0, -0x20

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/e$c;->f:Lk/a/b/a/c/e;

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->e()B

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/c/r;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 4
    invoke-static {v0, v1}, Lk/a/b/a/c/e;->a(Lk/a/b/a/c/r;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/d;->b:Lk/a/b/a/c/r;

    .line 2
    invoke-virtual {v0}, Lk/a/b/a/c/r;->e()B

    .line 3
    invoke-virtual {v0}, Lk/a/b/a/c/r;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lk/a/b/a/c/r;->b(Z)Lk/a/b/a/c/q0;

    move-result-object v2

    .line 5
    invoke-static {v0, v2, v1}, Lk/a/b/a/c/e;->a(Lk/a/b/a/c/r;Lk/a/b/a/c/q0;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
