.class public final Lk/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/e/a/x;

.field public final b:Z

.field public final c:Lk/e/a/c;

.field public final d:I

.field public e:I

.field public final f:Lk/e/a/a;

.field public g:Lk/e/a/a;


# direct methods
.method public constructor <init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/e/a/a;->a:Lk/e/a/x;

    .line 3
    iput-boolean p2, p0, Lk/e/a/a;->b:Z

    .line 4
    iput-object p3, p0, Lk/e/a/a;->c:Lk/e/a/c;

    .line 5
    iget p1, p3, Lk/e/a/c;->b:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lk/e/a/a;->d:I

    .line 6
    iput-object p4, p0, Lk/e/a/a;->f:Lk/e/a/a;

    if-eqz p4, :cond_1

    .line 7
    iput-object p0, p4, Lk/e/a/a;->g:Lk/e/a/a;

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;[Lk/e/a/a;I)I
    .locals 4

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 106
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {v3, p0}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static a(Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "RuntimeVisibleAnnotations"

    .line 86
    invoke-virtual {p0, v1}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "RuntimeInvisibleAnnotations"

    .line 87
    invoke-virtual {p1, p0}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "RuntimeVisibleTypeAnnotations"

    .line 88
    invoke-virtual {p2, p0}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "RuntimeInvisibleTypeAnnotations"

    .line 89
    invoke-virtual {p3, p0}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public static a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;
    .locals 4

    .line 4
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    ushr-int/lit8 v1, p1, 0x18

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 6
    :pswitch_0
    invoke-virtual {v0, v1}, Lk/e/a/c;->b(I)Lk/e/a/c;

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {v0, p1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    goto :goto_0

    :pswitch_2
    const v3, 0xffff00

    and-int/2addr p1, v3

    shr-int/lit8 p1, p1, 0x8

    .line 8
    invoke-virtual {v0, v1, p1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto :goto_0

    :cond_0
    :pswitch_3
    ushr-int/lit8 p1, p1, 0x10

    .line 9
    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 10
    :goto_0
    invoke-static {p2, v0}, Lk/e/a/z;->a(Lk/e/a/z;Lk/e/a/c;)V

    .line 11
    invoke-virtual {p0, p3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 12
    new-instance p1, Lk/e/a/a;

    invoke-direct {p1, p0, v2, v0, p4}, Lk/e/a/a;-><init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;
    .locals 2

    .line 1
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 3
    new-instance p1, Lk/e/a/a;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1, v0, p2}, Lk/e/a/a;-><init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V

    return-object p1
.end method

.method public static a(I[Lk/e/a/a;ILk/e/a/c;)V
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p2, :cond_1

    .line 108
    aget-object v4, p1, v2

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {v4, v3}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p3, p0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 111
    invoke-virtual {p3, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 112
    invoke-virtual {p3, p2}, Lk/e/a/c;->b(I)Lk/e/a/c;

    const/4 p0, 0x0

    :goto_2
    if-ge p0, p2, :cond_4

    .line 113
    aget-object v0, p1, p0

    move-object v4, v3

    const/4 v2, 0x0

    :goto_3
    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Lk/e/a/a;->a()V

    add-int/lit8 v2, v2, 0x1

    .line 115
    iget-object v4, v0, Lk/e/a/a;->f:Lk/e/a/a;

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_3

    .line 116
    :cond_2
    invoke-virtual {p3, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    :goto_4
    if-eqz v4, :cond_3

    .line 117
    iget-object v0, v4, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v2, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    invoke-virtual {p3, v2, v1, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 118
    iget-object v4, v4, Lk/e/a/a;->g:Lk/e/a/a;

    goto :goto_4

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static a(Lk/e/a/x;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/c;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "RuntimeVisibleAnnotations"

    .line 98
    invoke-virtual {p0, v0}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-virtual {p1, v0, p5}, Lk/e/a/a;->a(ILk/e/a/c;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "RuntimeInvisibleAnnotations"

    .line 100
    invoke-virtual {p0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    .line 101
    invoke-virtual {p2, p1, p5}, Lk/e/a/a;->a(ILk/e/a/c;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "RuntimeVisibleTypeAnnotations"

    .line 102
    invoke-virtual {p0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    .line 103
    invoke-virtual {p3, p1, p5}, Lk/e/a/a;->a(ILk/e/a/c;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "RuntimeInvisibleTypeAnnotations"

    .line 104
    invoke-virtual {p0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p0

    .line 105
    invoke-virtual {p4, p0, p5}, Lk/e/a/a;->a(ILk/e/a/c;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v0, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x8

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 84
    iget-object v1, v0, Lk/e/a/a;->c:Lk/e/a/c;

    iget v1, v1, Lk/e/a/c;->b:I

    add-int/2addr p1, v1

    .line 85
    iget-object v0, v0, Lk/e/a/a;->f:Lk/e/a/a;

    goto :goto_0

    :cond_1
    return p1
.end method

.method public a()V
    .locals 4

    .line 79
    iget v0, p0, Lk/e/a/a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v1, v1, Lk/e/a/c;->a:[B

    .line 81
    iget v2, p0, Lk/e/a/a;->e:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v2, v2

    .line 82
    aput-byte v2, v1, v0

    :cond_0
    return-void
.end method

.method public a(ILk/e/a/c;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lk/e/a/a;->a()V

    .line 91
    iget-object v3, v2, Lk/e/a/a;->c:Lk/e/a/c;

    iget v3, v3, Lk/e/a/c;->b:I

    add-int/2addr v1, v3

    add-int/lit8 v4, v4, 0x1

    .line 92
    iget-object v3, v2, Lk/e/a/a;->f:Lk/e/a/a;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p2, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 94
    invoke-virtual {p2, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 95
    invoke-virtual {p2, v4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    :goto_1
    if-eqz v3, :cond_1

    .line 96
    iget-object p1, v3, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v1, p1, Lk/e/a/c;->a:[B

    iget p1, p1, Lk/e/a/c;->b:I

    invoke-virtual {p2, v1, v0, p1}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 97
    iget-object v3, v3, Lk/e/a/a;->g:Lk/e/a/a;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    .line 13
    iget v0, p0, Lk/e/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/e/a/a;->e:I

    .line 14
    iget-boolean v0, p0, Lk/e/a/a;->b:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v1, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v1, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 16
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/16 v0, 0x73

    iget-object v1, p0, Lk/e/a/a;->a:Lk/e/a/x;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto/16 :goto_8

    .line 18
    :cond_1
    instance-of p1, p2, Ljava/lang/Byte;

    const/16 v0, 0x42

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v1, p0, Lk/e/a/a;->a:Lk/e/a/x;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {v1, p2}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p2

    iget p2, p2, Lk/e/a/w;->a:I

    invoke-virtual {p1, v0, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto/16 :goto_8

    .line 20
    :cond_2
    instance-of p1, p2, Ljava/lang/Boolean;

    const/16 v1, 0x5a

    if-eqz p1, :cond_3

    .line 21
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 22
    iget-object p2, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v0, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v0, p1}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p1

    iget p1, p1, Lk/e/a/w;->a:I

    invoke-virtual {p2, v1, p1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto/16 :goto_8

    .line 23
    :cond_3
    instance-of p1, p2, Ljava/lang/Character;

    const/16 v2, 0x43

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v0, p0, Lk/e/a/a;->a:Lk/e/a/x;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p2}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p2

    iget p2, p2, Lk/e/a/w;->a:I

    invoke-virtual {p1, v2, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto/16 :goto_8

    .line 25
    :cond_4
    instance-of p1, p2, Ljava/lang/Short;

    const/16 v3, 0x53

    if-eqz p1, :cond_5

    .line 26
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v0, p0, Lk/e/a/a;->a:Lk/e/a/x;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {v0, p2}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object p2

    iget p2, p2, Lk/e/a/w;->a:I

    invoke-virtual {p1, v3, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto/16 :goto_8

    .line 27
    :cond_5
    instance-of p1, p2, Lk/e/a/y;

    if-eqz p1, :cond_6

    .line 28
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/16 v0, 0x63

    iget-object v1, p0, Lk/e/a/a;->a:Lk/e/a/x;

    check-cast p2, Lk/e/a/y;

    invoke-virtual {p2}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lk/e/a/c;->b(II)Lk/e/a/c;

    goto/16 :goto_8

    .line 29
    :cond_6
    instance-of p1, p2, [B

    const/4 v4, 0x0

    const/16 v5, 0x5b

    if-eqz p1, :cond_7

    .line 30
    check-cast p2, [B

    .line 31
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v1, p2

    invoke-virtual {p1, v5, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 32
    array-length p1, p2

    :goto_0
    if-ge v4, p1, :cond_11

    aget-byte v1, p2, v4

    .line 33
    iget-object v2, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v3, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v3, v1}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object v1

    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {v2, v0, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_7
    instance-of p1, p2, [Z

    if-eqz p1, :cond_8

    .line 35
    check-cast p2, [Z

    .line 36
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 37
    array-length p1, p2

    :goto_1
    if-ge v4, p1, :cond_11

    aget-boolean v0, p2, v4

    .line 38
    iget-object v2, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v3, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v3, v0}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object v0

    iget v0, v0, Lk/e/a/w;->a:I

    invoke-virtual {v2, v1, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 39
    :cond_8
    instance-of p1, p2, [S

    if-eqz p1, :cond_9

    .line 40
    check-cast p2, [S

    .line 41
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 42
    array-length p1, p2

    :goto_2
    if-ge v4, p1, :cond_11

    aget-short v0, p2, v4

    .line 43
    iget-object v1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v2, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v2, v0}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object v0

    iget v0, v0, Lk/e/a/w;->a:I

    invoke-virtual {v1, v3, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 44
    :cond_9
    instance-of p1, p2, [C

    if-eqz p1, :cond_a

    .line 45
    check-cast p2, [C

    .line 46
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 47
    array-length p1, p2

    :goto_3
    if-ge v4, p1, :cond_11

    aget-char v0, p2, v4

    .line 48
    iget-object v1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v3, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v3, v0}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object v0

    iget v0, v0, Lk/e/a/w;->a:I

    invoke-virtual {v1, v2, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 49
    :cond_a
    instance-of p1, p2, [I

    if-eqz p1, :cond_b

    .line 50
    check-cast p2, [I

    .line 51
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 52
    array-length p1, p2

    :goto_4
    if-ge v4, p1, :cond_11

    aget v0, p2, v4

    .line 53
    iget-object v1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/16 v2, 0x49

    iget-object v3, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v3, v0}, Lk/e/a/x;->a(I)Lk/e/a/w;

    move-result-object v0

    iget v0, v0, Lk/e/a/w;->a:I

    invoke-virtual {v1, v2, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 54
    :cond_b
    instance-of p1, p2, [J

    if-eqz p1, :cond_c

    .line 55
    check-cast p2, [J

    .line 56
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 57
    array-length p1, p2

    :goto_5
    if-ge v4, p1, :cond_11

    aget-wide v0, p2, v4

    .line 58
    iget-object v2, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/16 v3, 0x4a

    iget-object v5, p0, Lk/e/a/a;->a:Lk/e/a/x;

    const/4 v6, 0x5

    .line 59
    invoke-virtual {v5, v6, v0, v1}, Lk/e/a/x;->a(IJ)Lk/e/a/w;

    move-result-object v0

    .line 60
    iget v0, v0, Lk/e/a/w;->a:I

    invoke-virtual {v2, v3, v0}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 61
    :cond_c
    instance-of p1, p2, [F

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 62
    check-cast p2, [F

    .line 63
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v1, p2

    invoke-virtual {p1, v5, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 64
    array-length p1, p2

    :goto_6
    if-ge v4, p1, :cond_11

    aget v1, p2, v4

    .line 65
    iget-object v2, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/16 v3, 0x46

    iget-object v5, p0, Lk/e/a/a;->a:Lk/e/a/x;

    if-eqz v5, :cond_d

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v1}, Lk/e/a/x;->a(II)Lk/e/a/w;

    move-result-object v1

    .line 67
    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {v2, v3, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 68
    :cond_d
    throw v0

    .line 69
    :cond_e
    instance-of p1, p2, [D

    if-eqz p1, :cond_10

    .line 70
    check-cast p2, [D

    .line 71
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    array-length v1, p2

    invoke-virtual {p1, v5, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 72
    array-length p1, p2

    :goto_7
    if-ge v4, p1, :cond_11

    aget-wide v1, p2, v4

    .line 73
    iget-object v3, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/16 v5, 0x44

    iget-object v6, p0, Lk/e/a/a;->a:Lk/e/a/x;

    if-eqz v6, :cond_f

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v1, v2}, Lk/e/a/x;->a(IJ)Lk/e/a/w;

    move-result-object v1

    .line 75
    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {v3, v5, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 76
    :cond_f
    throw v0

    .line 77
    :cond_10
    iget-object p1, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {p1, p2}, Lk/e/a/x;->a(Ljava/lang/Object;)Lk/e/a/w;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget v0, p1, Lk/e/a/w;->b:I

    const-string v1, ".s.IFJDCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget p1, p1, Lk/e/a/w;->a:I

    invoke-virtual {p2, v0, p1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    :cond_11
    :goto_8
    return-void
.end method

.method public b(Ljava/lang/String;)Lk/e/a/a;
    .locals 4

    .line 1
    iget v0, p0, Lk/e/a/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/e/a/a;->e:I

    .line 2
    iget-boolean v0, p0, Lk/e/a/a;->b:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/e/a/a;->c:Lk/e/a/c;

    iget-object v1, p0, Lk/e/a/a;->a:Lk/e/a/x;

    invoke-virtual {v1, p1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 4
    :cond_0
    iget-object p1, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/16 v0, 0x5b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lk/e/a/c;->b(II)Lk/e/a/c;

    .line 5
    new-instance p1, Lk/e/a/a;

    iget-object v0, p0, Lk/e/a/a;->a:Lk/e/a/x;

    iget-object v2, p0, Lk/e/a/a;->c:Lk/e/a/c;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lk/e/a/a;-><init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V

    return-object p1
.end method
