.class public Lk/e/a/g;
.super Lk/e/a/f;
.source "SourceFile"


# instance fields
.field public A:Lk/e/a/b;

.field public B:I

.field public a:I

.field public final b:Lk/e/a/x;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[I

.field public h:Lk/e/a/m;

.field public i:Lk/e/a/m;

.field public j:Lk/e/a/t;

.field public k:Lk/e/a/t;

.field public l:I

.field public m:Lk/e/a/c;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Lk/e/a/c;

.field public s:Lk/e/a/a;

.field public t:Lk/e/a/a;

.field public u:Lk/e/a/a;

.field public v:Lk/e/a/a;

.field public w:Lk/e/a/u;

.field public x:I

.field public y:I

.field public z:Lk/e/a/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x70000

    .line 1
    invoke-direct {p0, v0}, Lk/e/a/f;-><init>(I)V

    .line 2
    new-instance v0, Lk/e/a/x;

    invoke-direct {v0, p0}, Lk/e/a/x;-><init>(Lk/e/a/g;)V

    iput-object v0, p0, Lk/e/a/g;->b:Lk/e/a/x;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lk/e/a/g;->B:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 4
    iput v0, p0, Lk/e/a/g;->B:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lk/e/a/g;->B:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;
    .locals 1

    if-eqz p4, :cond_0

    .line 24
    iget-object p4, p0, Lk/e/a/g;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/g;->u:Lk/e/a/a;

    .line 25
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/g;->u:Lk/e/a/a;

    return-object p1

    .line 26
    :cond_0
    iget-object p4, p0, Lk/e/a/g;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/g;->v:Lk/e/a/a;

    .line 27
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/g;->v:Lk/e/a/a;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Lk/e/a/a;
    .locals 1

    if-eqz p2, :cond_0

    .line 20
    iget-object p2, p0, Lk/e/a/g;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/g;->s:Lk/e/a/a;

    .line 21
    invoke-static {p2, p1, v0}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/g;->s:Lk/e/a/a;

    return-object p1

    .line 22
    :cond_0
    iget-object p2, p0, Lk/e/a/g;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/g;->t:Lk/e/a/a;

    .line 23
    invoke-static {p2, p1, v0}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/g;->t:Lk/e/a/a;

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;
    .locals 9

    .line 28
    new-instance v8, Lk/e/a/t;

    iget-object v1, p0, Lk/e/a/g;->b:Lk/e/a/x;

    iget v7, p0, Lk/e/a/g;->B:I

    move-object v0, v8

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lk/e/a/t;-><init>(Lk/e/a/x;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 29
    iget-object p1, p0, Lk/e/a/g;->j:Lk/e/a/t;

    if-nez p1, :cond_0

    .line 30
    iput-object v8, p0, Lk/e/a/g;->j:Lk/e/a/t;

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lk/e/a/g;->k:Lk/e/a/t;

    iput-object v8, p1, Lk/e/a/s;->b:Lk/e/a/s;

    .line 32
    :goto_0
    iput-object v8, p0, Lk/e/a/g;->k:Lk/e/a/t;

    return-object v8
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iput p1, p0, Lk/e/a/g;->a:I

    .line 2
    iput p2, p0, Lk/e/a/g;->c:I

    .line 3
    iget-object p2, p0, Lk/e/a/g;->b:Lk/e/a/x;

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 4
    iput p1, p2, Lk/e/a/x;->c:I

    .line 5
    iput-object p3, p2, Lk/e/a/x;->d:Ljava/lang/String;

    const/4 v0, 0x7

    .line 6
    invoke-virtual {p2, v0, p3}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object p2

    .line 7
    iget p2, p2, Lk/e/a/w;->a:I

    .line 8
    iput p2, p0, Lk/e/a/g;->d:I

    if-eqz p4, :cond_0

    .line 9
    iget-object p2, p0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {p2, p4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lk/e/a/g;->p:I

    :cond_0
    const/4 p2, 0x0

    if-nez p5, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    .line 10
    :cond_1
    iget-object p3, p0, Lk/e/a/g;->b:Lk/e/a/x;

    .line 11
    invoke-virtual {p3, v0, p5}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object p3

    .line 12
    iget p3, p3, Lk/e/a/w;->a:I

    :goto_0
    iput p3, p0, Lk/e/a/g;->e:I

    if-eqz p6, :cond_2

    .line 13
    array-length p3, p6

    if-lez p3, :cond_2

    .line 14
    array-length p3, p6

    iput p3, p0, Lk/e/a/g;->f:I

    .line 15
    new-array p3, p3, [I

    iput-object p3, p0, Lk/e/a/g;->g:[I

    .line 16
    :goto_1
    iget p3, p0, Lk/e/a/g;->f:I

    if-ge p2, p3, :cond_2

    .line 17
    iget-object p3, p0, Lk/e/a/g;->g:[I

    iget-object p4, p0, Lk/e/a/g;->b:Lk/e/a/x;

    aget-object p5, p6, p2

    invoke-virtual {p4, p5}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object p4

    iget p4, p4, Lk/e/a/w;->a:I

    aput p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iget p2, p0, Lk/e/a/g;->B:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3

    const/16 p2, 0x33

    if-lt p1, p2, :cond_3

    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lk/e/a/g;->B:I

    :cond_3
    return-void
.end method

.method public a()[B
    .locals 46

    move-object/from16 v0, p0

    .line 33
    iget v1, v0, Lk/e/a/g;->f:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x18

    .line 34
    iget-object v3, v0, Lk/e/a/g;->h:Lk/e/a/m;

    const/4 v5, 0x0

    :goto_0
    const-string v6, "ConstantValue"

    if-eqz v3, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 35
    iget v9, v3, Lk/e/a/m;->g:I

    if-eqz v9, :cond_0

    .line 36
    iget-object v8, v3, Lk/e/a/m;->b:Lk/e/a/x;

    invoke-virtual {v8, v6}, Lk/e/a/x;->c(Ljava/lang/String;)I

    const/16 v7, 0x10

    goto :goto_1

    :cond_0
    const/16 v7, 0x8

    .line 37
    :goto_1
    iget-object v6, v3, Lk/e/a/m;->b:Lk/e/a/x;

    iget v8, v3, Lk/e/a/m;->c:I

    iget v9, v3, Lk/e/a/m;->f:I

    invoke-static {v6, v8, v9}, Lk/e/a/b;->a(Lk/e/a/x;II)I

    move-result v6

    add-int/2addr v6, v7

    .line 38
    iget-object v7, v3, Lk/e/a/m;->h:Lk/e/a/a;

    iget-object v8, v3, Lk/e/a/m;->i:Lk/e/a/a;

    iget-object v9, v3, Lk/e/a/m;->j:Lk/e/a/a;

    iget-object v10, v3, Lk/e/a/m;->k:Lk/e/a/a;

    .line 39
    invoke-static {v7, v8, v9, v10}, Lk/e/a/a;->a(Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;)I

    move-result v7

    add-int/2addr v7, v6

    .line 40
    iget-object v6, v3, Lk/e/a/m;->l:Lk/e/a/b;

    if-eqz v6, :cond_1

    .line 41
    iget-object v8, v3, Lk/e/a/m;->b:Lk/e/a/x;

    invoke-virtual {v6, v8}, Lk/e/a/b;->a(Lk/e/a/x;)I

    move-result v6

    add-int/2addr v7, v6

    :cond_1
    add-int/2addr v1, v7

    .line 42
    iget-object v3, v3, Lk/e/a/l;->a:Lk/e/a/l;

    check-cast v3, Lk/e/a/m;

    goto :goto_0

    .line 43
    :cond_2
    iget-object v3, v0, Lk/e/a/g;->j:Lk/e/a/t;

    const/4 v9, 0x0

    :goto_2
    const-string v10, "MethodParameters"

    const-string v11, "LineNumberTable"

    const-string v12, "RuntimeInvisibleParameterAnnotations"

    const-string v13, "AnnotationDefault"

    const-string v14, "RuntimeVisibleParameterAnnotations"

    const-string v15, "Exceptions"

    const-string v4, "Code"

    const-string v8, "RuntimeInvisibleTypeAnnotations"

    const-string v2, "RuntimeVisibleTypeAnnotations"

    const-string v17, "StackMapTable"

    const-string v18, "StackMap"

    const-string v7, "LocalVariableTable"

    move-object/from16 v19, v6

    const/16 v20, 0x1

    if-eqz v3, :cond_18

    add-int/lit8 v9, v9, 0x1

    .line 44
    iget v6, v3, Lk/e/a/t;->a0:I

    if-eqz v6, :cond_3

    .line 45
    iget v2, v3, Lk/e/a/t;->b0:I

    add-int/lit8 v2, v2, 0x6

    move/from16 v22, v9

    goto/16 :goto_9

    .line 46
    :cond_3
    iget-object v6, v3, Lk/e/a/t;->k:Lk/e/a/c;

    iget v6, v6, Lk/e/a/c;->b:I

    if-lez v6, :cond_e

    move/from16 v22, v9

    const v9, 0xffff

    if-gt v6, v9, :cond_d

    .line 47
    iget-object v6, v3, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v6, v4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 48
    iget-object v4, v3, Lk/e/a/t;->k:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    const/16 v6, 0x10

    add-int/2addr v4, v6

    iget-object v6, v3, Lk/e/a/t;->l:Lk/e/a/p;

    const/4 v9, 0x0

    :goto_3
    if-eqz v6, :cond_4

    add-int/lit8 v9, v9, 0x1

    .line 49
    iget-object v6, v6, Lk/e/a/p;->f:Lk/e/a/p;

    goto :goto_3

    :cond_4
    mul-int/lit8 v9, v9, 0x8

    const/4 v6, 0x2

    add-int/2addr v9, v6

    add-int/2addr v9, v4

    const/16 v4, 0x8

    add-int/2addr v9, v4

    .line 50
    iget-object v4, v3, Lk/e/a/t;->u:Lk/e/a/c;

    if-eqz v4, :cond_7

    .line 51
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    .line 52
    iget v4, v4, Lk/e/a/x;->c:I

    const/16 v6, 0x32

    if-lt v4, v6, :cond_5

    goto :goto_4

    :cond_5
    const/16 v20, 0x0

    .line 53
    :goto_4
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    if-eqz v20, :cond_6

    move-object/from16 v6, v17

    goto :goto_5

    :cond_6
    move-object/from16 v6, v18

    :goto_5
    invoke-virtual {v4, v6}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 54
    iget-object v4, v3, Lk/e/a/t;->u:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    const/16 v6, 0x8

    add-int/2addr v4, v6

    add-int/2addr v9, v4

    goto :goto_6

    :cond_7
    const/16 v6, 0x8

    .line 55
    :goto_6
    iget-object v4, v3, Lk/e/a/t;->o:Lk/e/a/c;

    if-eqz v4, :cond_8

    .line 56
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v4, v11}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 57
    iget-object v4, v3, Lk/e/a/t;->o:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/2addr v4, v6

    add-int/2addr v9, v4

    .line 58
    :cond_8
    iget-object v4, v3, Lk/e/a/t;->q:Lk/e/a/c;

    if-eqz v4, :cond_9

    .line 59
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v4, v7}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 60
    iget-object v4, v3, Lk/e/a/t;->q:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/2addr v4, v6

    add-int/2addr v9, v4

    .line 61
    :cond_9
    iget-object v4, v3, Lk/e/a/t;->s:Lk/e/a/c;

    if-eqz v4, :cond_a

    .line 62
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    const-string v7, "LocalVariableTypeTable"

    invoke-virtual {v4, v7}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 63
    iget-object v4, v3, Lk/e/a/t;->s:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/2addr v4, v6

    add-int/2addr v9, v4

    .line 64
    :cond_a
    iget-object v4, v3, Lk/e/a/t;->v:Lk/e/a/a;

    if-eqz v4, :cond_b

    .line 65
    invoke-virtual {v4, v2}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v9, v2

    .line 66
    :cond_b
    iget-object v2, v3, Lk/e/a/t;->w:Lk/e/a/a;

    if-eqz v2, :cond_c

    .line 67
    invoke-virtual {v2, v8}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v9

    goto :goto_7

    :cond_c
    move v2, v9

    .line 68
    :goto_7
    iget-object v4, v3, Lk/e/a/t;->x:Lk/e/a/b;

    if-eqz v4, :cond_f

    .line 69
    iget-object v6, v3, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v7, v3, Lk/e/a/t;->k:Lk/e/a/c;

    iget-object v8, v7, Lk/e/a/c;->a:[B

    iget v7, v7, Lk/e/a/c;->b:I

    iget v9, v3, Lk/e/a/t;->i:I

    iget v11, v3, Lk/e/a/t;->j:I

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v8

    move/from16 v26, v7

    move/from16 v27, v9

    move/from16 v28, v11

    .line 70
    invoke-virtual/range {v23 .. v28}, Lk/e/a/b;->a(Lk/e/a/x;[BIII)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_8

    .line 71
    :cond_d
    new-instance v1, Lk/e/a/r;

    iget-object v2, v3, Lk/e/a/t;->c:Lk/e/a/x;

    .line 72
    iget-object v2, v2, Lk/e/a/x;->d:Ljava/lang/String;

    .line 73
    iget-object v4, v3, Lk/e/a/t;->f:Ljava/lang/String;

    iget-object v5, v3, Lk/e/a/t;->h:Ljava/lang/String;

    iget-object v3, v3, Lk/e/a/t;->k:Lk/e/a/c;

    iget v3, v3, Lk/e/a/c;->b:I

    invoke-direct {v1, v2, v4, v5, v3}, Lk/e/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_e
    move/from16 v22, v9

    const/16 v2, 0x8

    .line 74
    :cond_f
    :goto_8
    iget v4, v3, Lk/e/a/t;->y:I

    if-lez v4, :cond_10

    .line 75
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v4, v15}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 76
    iget v4, v3, Lk/e/a/t;->y:I

    const/4 v6, 0x2

    mul-int/lit8 v4, v4, 0x2

    const/16 v6, 0x8

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    .line 77
    :cond_10
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    iget v6, v3, Lk/e/a/t;->d:I

    iget v7, v3, Lk/e/a/t;->A:I

    invoke-static {v4, v6, v7}, Lk/e/a/b;->a(Lk/e/a/x;II)I

    move-result v4

    add-int/2addr v4, v2

    .line 78
    iget-object v2, v3, Lk/e/a/t;->B:Lk/e/a/a;

    iget-object v6, v3, Lk/e/a/t;->C:Lk/e/a/a;

    iget-object v7, v3, Lk/e/a/t;->H:Lk/e/a/a;

    iget-object v8, v3, Lk/e/a/t;->I:Lk/e/a/a;

    .line 79
    invoke-static {v2, v6, v7, v8}, Lk/e/a/a;->a(Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;)I

    move-result v2

    add-int/2addr v2, v4

    .line 80
    iget-object v4, v3, Lk/e/a/t;->E:[Lk/e/a/a;

    if-eqz v4, :cond_12

    .line 81
    iget v6, v3, Lk/e/a/t;->D:I

    if-nez v6, :cond_11

    array-length v6, v4

    .line 82
    :cond_11
    invoke-static {v14, v4, v6}, Lk/e/a/a;->a(Ljava/lang/String;[Lk/e/a/a;I)I

    move-result v4

    add-int/2addr v2, v4

    .line 83
    :cond_12
    iget-object v4, v3, Lk/e/a/t;->G:[Lk/e/a/a;

    if-eqz v4, :cond_14

    .line 84
    iget v6, v3, Lk/e/a/t;->F:I

    if-nez v6, :cond_13

    array-length v6, v4

    .line 85
    :cond_13
    invoke-static {v12, v4, v6}, Lk/e/a/a;->a(Ljava/lang/String;[Lk/e/a/a;I)I

    move-result v4

    add-int/2addr v2, v4

    .line 86
    :cond_14
    iget-object v4, v3, Lk/e/a/t;->J:Lk/e/a/c;

    if-eqz v4, :cond_15

    .line 87
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v4, v13}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 88
    iget-object v4, v3, Lk/e/a/t;->J:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v2, v4

    .line 89
    :cond_15
    iget-object v4, v3, Lk/e/a/t;->L:Lk/e/a/c;

    if-eqz v4, :cond_16

    .line 90
    iget-object v4, v3, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v4, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 91
    iget-object v4, v3, Lk/e/a/t;->L:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/lit8 v4, v4, 0x7

    add-int/2addr v2, v4

    .line 92
    :cond_16
    iget-object v4, v3, Lk/e/a/t;->M:Lk/e/a/b;

    if-eqz v4, :cond_17

    .line 93
    iget-object v6, v3, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v4, v6}, Lk/e/a/b;->a(Lk/e/a/x;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_17
    :goto_9
    add-int/2addr v1, v2

    .line 94
    iget-object v2, v3, Lk/e/a/s;->b:Lk/e/a/s;

    move-object v3, v2

    check-cast v3, Lk/e/a/t;

    move-object/from16 v6, v19

    move/from16 v9, v22

    const/4 v2, 0x2

    goto/16 :goto_2

    .line 95
    :cond_18
    iget-object v3, v0, Lk/e/a/g;->m:Lk/e/a/c;

    const-string v6, "InnerClasses"

    if-eqz v3, :cond_19

    .line 96
    iget v3, v3, Lk/e/a/c;->b:I

    const/16 v16, 0x8

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 97
    iget-object v3, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v3, v6}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-object/from16 v22, v6

    const/4 v3, 0x1

    goto :goto_a

    :cond_19
    move-object/from16 v22, v6

    const/4 v3, 0x0

    .line 98
    :goto_a
    iget v6, v0, Lk/e/a/g;->n:I

    move-object/from16 v23, v10

    const-string v10, "EnclosingMethod"

    if-eqz v6, :cond_1a

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0xa

    .line 99
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v6, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 100
    :cond_1a
    iget v6, v0, Lk/e/a/g;->c:I

    move-object/from16 v24, v10

    const/16 v10, 0x1000

    and-int/2addr v6, v10

    const-string v10, "Synthetic"

    move-object/from16 v26, v13

    const/16 v13, 0x31

    if-eqz v6, :cond_1b

    iget v6, v0, Lk/e/a/g;->a:I

    const v21, 0xffff

    and-int v6, v6, v21

    if-ge v6, v13, :cond_1b

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    .line 101
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v6, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 102
    :cond_1b
    iget v6, v0, Lk/e/a/g;->p:I

    const-string v13, "Signature"

    if-eqz v6, :cond_1c

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 103
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v6, v13}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 104
    :cond_1c
    iget v6, v0, Lk/e/a/g;->q:I

    move-object/from16 v28, v13

    const-string v13, "SourceFile"

    if-eqz v6, :cond_1d

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 105
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v6, v13}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 106
    :cond_1d
    iget-object v6, v0, Lk/e/a/g;->r:Lk/e/a/c;

    move-object/from16 v29, v13

    const-string v13, "SourceDebugExtension"

    if-eqz v6, :cond_1e

    add-int/lit8 v3, v3, 0x1

    .line 107
    iget v6, v6, Lk/e/a/c;->b:I

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v1, v6

    .line 108
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v6, v13}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 109
    :cond_1e
    iget v6, v0, Lk/e/a/g;->c:I

    const/high16 v30, 0x20000

    and-int v6, v6, v30

    move-object/from16 v31, v13

    const-string v13, "Deprecated"

    if-eqz v6, :cond_1f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x6

    .line 110
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v6, v13}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 111
    :cond_1f
    iget-object v6, v0, Lk/e/a/g;->s:Lk/e/a/a;

    if-eqz v6, :cond_20

    add-int/lit8 v3, v3, 0x1

    move/from16 v32, v3

    const-string v3, "RuntimeVisibleAnnotations"

    .line 112
    invoke-virtual {v6, v3}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    move/from16 v3, v32

    .line 113
    :cond_20
    iget-object v6, v0, Lk/e/a/g;->t:Lk/e/a/a;

    if-eqz v6, :cond_21

    add-int/lit8 v3, v3, 0x1

    move/from16 v32, v3

    const-string v3, "RuntimeInvisibleAnnotations"

    .line 114
    invoke-virtual {v6, v3}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    move/from16 v3, v32

    .line 115
    :cond_21
    iget-object v6, v0, Lk/e/a/g;->u:Lk/e/a/a;

    if-eqz v6, :cond_22

    add-int/lit8 v3, v3, 0x1

    .line 116
    invoke-virtual {v6, v2}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 117
    :cond_22
    iget-object v6, v0, Lk/e/a/g;->v:Lk/e/a/a;

    if-eqz v6, :cond_23

    add-int/lit8 v3, v3, 0x1

    .line 118
    invoke-virtual {v6, v8}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 119
    :cond_23
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v32, v13

    .line 120
    iget-object v13, v6, Lk/e/a/x;->j:Lk/e/a/c;

    move-object/from16 v33, v10

    const-string v10, "BootstrapMethods"

    if-eqz v13, :cond_24

    .line 121
    invoke-virtual {v6, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 122
    iget-object v6, v6, Lk/e/a/x;->j:Lk/e/a/c;

    iget v6, v6, Lk/e/a/c;->b:I

    const/16 v13, 0x8

    add-int/2addr v6, v13

    goto :goto_b

    :cond_24
    const/4 v6, 0x0

    :goto_b
    if-lez v6, :cond_26

    add-int/lit8 v3, v3, 0x1

    .line 123
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    .line 124
    iget-object v13, v6, Lk/e/a/x;->j:Lk/e/a/c;

    if-eqz v13, :cond_25

    .line 125
    invoke-virtual {v6, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 126
    iget-object v6, v6, Lk/e/a/x;->j:Lk/e/a/c;

    iget v6, v6, Lk/e/a/c;->b:I

    const/16 v13, 0x8

    add-int/2addr v6, v13

    goto :goto_c

    :cond_25
    const/4 v6, 0x0

    :goto_c
    add-int/2addr v1, v6

    .line 127
    :cond_26
    iget-object v6, v0, Lk/e/a/g;->w:Lk/e/a/u;

    if-eqz v6, :cond_2b

    .line 128
    iget v13, v6, Lk/e/a/u;->o:I

    if-lez v13, :cond_27

    const/4 v13, 0x1

    goto :goto_d

    :cond_27
    const/4 v13, 0x0

    :goto_d
    add-int/lit8 v13, v13, 0x1

    iget v6, v6, Lk/e/a/u;->q:I

    if-lez v6, :cond_28

    const/4 v6, 0x1

    goto :goto_e

    :cond_28
    const/4 v6, 0x0

    :goto_e
    add-int/2addr v13, v6

    add-int/2addr v3, v13

    .line 129
    iget-object v6, v0, Lk/e/a/g;->w:Lk/e/a/u;

    .line 130
    iget-object v13, v6, Lk/e/a/u;->a:Lk/e/a/x;

    move/from16 v34, v3

    const-string v3, "Module"

    invoke-virtual {v13, v3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 131
    iget-object v3, v6, Lk/e/a/u;->f:Lk/e/a/c;

    iget v3, v3, Lk/e/a/c;->b:I

    add-int/lit8 v3, v3, 0x16

    iget-object v13, v6, Lk/e/a/u;->h:Lk/e/a/c;

    iget v13, v13, Lk/e/a/c;->b:I

    add-int/2addr v3, v13

    iget-object v13, v6, Lk/e/a/u;->j:Lk/e/a/c;

    iget v13, v13, Lk/e/a/c;->b:I

    add-int/2addr v3, v13

    iget-object v13, v6, Lk/e/a/u;->l:Lk/e/a/c;

    iget v13, v13, Lk/e/a/c;->b:I

    add-int/2addr v3, v13

    iget-object v13, v6, Lk/e/a/u;->n:Lk/e/a/c;

    iget v13, v13, Lk/e/a/c;->b:I

    add-int/2addr v3, v13

    .line 132
    iget v13, v6, Lk/e/a/u;->o:I

    if-lez v13, :cond_29

    .line 133
    iget-object v13, v6, Lk/e/a/u;->a:Lk/e/a/x;

    move-object/from16 v35, v10

    const-string v10, "ModulePackages"

    invoke-virtual {v13, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 134
    iget-object v10, v6, Lk/e/a/u;->p:Lk/e/a/c;

    iget v10, v10, Lk/e/a/c;->b:I

    const/16 v13, 0x8

    add-int/2addr v10, v13

    add-int/2addr v3, v10

    goto :goto_f

    :cond_29
    move-object/from16 v35, v10

    .line 135
    :goto_f
    iget v10, v6, Lk/e/a/u;->q:I

    if-lez v10, :cond_2a

    .line 136
    iget-object v6, v6, Lk/e/a/u;->a:Lk/e/a/x;

    const-string v10, "ModuleMainClass"

    invoke-virtual {v6, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x8

    :cond_2a
    add-int/2addr v1, v3

    move/from16 v3, v34

    goto :goto_10

    :cond_2b
    move-object/from16 v35, v10

    .line 137
    :goto_10
    iget v6, v0, Lk/e/a/g;->x:I

    if-eqz v6, :cond_2c

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x8

    .line 138
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    const-string v10, "NestHost"

    invoke-virtual {v6, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 139
    :cond_2c
    iget-object v6, v0, Lk/e/a/g;->z:Lk/e/a/c;

    if-eqz v6, :cond_2d

    add-int/lit8 v3, v3, 0x1

    .line 140
    iget v6, v6, Lk/e/a/c;->b:I

    const/16 v10, 0x8

    add-int/2addr v6, v10

    add-int/2addr v1, v6

    .line 141
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    const-string v10, "NestMembers"

    invoke-virtual {v6, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    .line 142
    :cond_2d
    iget-object v6, v0, Lk/e/a/g;->A:Lk/e/a/b;

    if-eqz v6, :cond_2e

    .line 143
    invoke-virtual {v6}, Lk/e/a/b;->a()I

    move-result v6

    add-int/2addr v3, v6

    .line 144
    iget-object v6, v0, Lk/e/a/g;->A:Lk/e/a/b;

    iget-object v10, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v6, v10}, Lk/e/a/b;->a(Lk/e/a/x;)I

    move-result v6

    add-int/2addr v1, v6

    .line 145
    :cond_2e
    iget-object v6, v0, Lk/e/a/g;->b:Lk/e/a/x;

    .line 146
    iget-object v10, v6, Lk/e/a/x;->h:Lk/e/a/c;

    iget v10, v10, Lk/e/a/c;->b:I

    add-int/2addr v1, v10

    .line 147
    iget v6, v6, Lk/e/a/x;->g:I

    const v10, 0xffff

    if-gt v6, v10, :cond_7c

    .line 148
    new-instance v6, Lk/e/a/c;

    invoke-direct {v6, v1}, Lk/e/a/c;-><init>(I)V

    const v1, -0x35014542    # -8346975.0f

    .line 149
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->a:I

    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 150
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    .line 151
    iget v10, v1, Lk/e/a/x;->g:I

    invoke-virtual {v6, v10}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v1, v1, Lk/e/a/x;->h:Lk/e/a/c;

    iget-object v10, v1, Lk/e/a/c;->a:[B

    iget v1, v1, Lk/e/a/c;->b:I

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v13, v1}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 152
    iget v1, v0, Lk/e/a/g;->a:I

    const v10, 0xffff

    and-int/2addr v1, v10

    const/16 v10, 0x31

    if-ge v1, v10, :cond_2f

    const/16 v1, 0x1000

    goto :goto_11

    :cond_2f
    const/4 v1, 0x0

    .line 153
    :goto_11
    iget v10, v0, Lk/e/a/g;->c:I

    not-int v1, v1

    and-int/2addr v1, v10

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->d:I

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->e:I

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 154
    iget v1, v0, Lk/e/a/g;->f:I

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v1, 0x0

    .line 155
    :goto_12
    iget v10, v0, Lk/e/a/g;->f:I

    if-ge v1, v10, :cond_30

    .line 156
    iget-object v10, v0, Lk/e/a/g;->g:[I

    aget v10, v10, v1

    invoke-virtual {v6, v10}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 157
    :cond_30
    invoke-virtual {v6, v5}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 158
    iget-object v1, v0, Lk/e/a/g;->h:Lk/e/a/m;

    :goto_13
    if-eqz v1, :cond_3e

    .line 159
    iget-object v5, v1, Lk/e/a/m;->b:Lk/e/a/x;

    .line 160
    iget v5, v5, Lk/e/a/x;->c:I

    const/16 v10, 0x31

    if-ge v5, v10, :cond_31

    const/4 v5, 0x1

    goto :goto_14

    :cond_31
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_32

    const/16 v10, 0x1000

    goto :goto_15

    :cond_32
    const/4 v10, 0x0

    .line 161
    :goto_15
    iget v13, v1, Lk/e/a/m;->c:I

    not-int v10, v10

    and-int/2addr v10, v13

    invoke-virtual {v6, v10}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v10, v1, Lk/e/a/m;->d:I

    invoke-virtual {v6, v10}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v10, v1, Lk/e/a/m;->e:I

    invoke-virtual {v6, v10}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 162
    iget v10, v1, Lk/e/a/m;->g:I

    if-eqz v10, :cond_33

    const/4 v10, 0x1

    goto :goto_16

    :cond_33
    const/4 v10, 0x0

    .line 163
    :goto_16
    iget v13, v1, Lk/e/a/m;->c:I

    move/from16 v34, v3

    const/16 v3, 0x1000

    and-int/2addr v13, v3

    if-eqz v13, :cond_34

    if-eqz v5, :cond_34

    add-int/lit8 v10, v10, 0x1

    .line 164
    :cond_34
    iget v3, v1, Lk/e/a/m;->f:I

    if-eqz v3, :cond_35

    add-int/lit8 v10, v10, 0x1

    .line 165
    :cond_35
    iget v3, v1, Lk/e/a/m;->c:I

    and-int v3, v3, v30

    if-eqz v3, :cond_36

    add-int/lit8 v10, v10, 0x1

    .line 166
    :cond_36
    iget-object v3, v1, Lk/e/a/m;->h:Lk/e/a/a;

    if-eqz v3, :cond_37

    add-int/lit8 v10, v10, 0x1

    .line 167
    :cond_37
    iget-object v3, v1, Lk/e/a/m;->i:Lk/e/a/a;

    if-eqz v3, :cond_38

    add-int/lit8 v10, v10, 0x1

    .line 168
    :cond_38
    iget-object v3, v1, Lk/e/a/m;->j:Lk/e/a/a;

    if-eqz v3, :cond_39

    add-int/lit8 v10, v10, 0x1

    .line 169
    :cond_39
    iget-object v3, v1, Lk/e/a/m;->k:Lk/e/a/a;

    if-eqz v3, :cond_3a

    add-int/lit8 v10, v10, 0x1

    .line 170
    :cond_3a
    iget-object v3, v1, Lk/e/a/m;->l:Lk/e/a/b;

    if-eqz v3, :cond_3b

    .line 171
    invoke-virtual {v3}, Lk/e/a/b;->a()I

    move-result v3

    add-int/2addr v10, v3

    .line 172
    :cond_3b
    invoke-virtual {v6, v10}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 173
    iget v3, v1, Lk/e/a/m;->g:I

    if-eqz v3, :cond_3c

    .line 174
    iget-object v3, v1, Lk/e/a/m;->b:Lk/e/a/x;

    move-object/from16 v5, v19

    .line 175
    invoke-virtual {v3, v5}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v3, 0x2

    .line 176
    invoke-virtual {v6, v3}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v3, v1, Lk/e/a/m;->g:I

    .line 177
    invoke-virtual {v6, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_17

    :cond_3c
    move-object/from16 v5, v19

    .line 178
    :goto_17
    iget-object v3, v1, Lk/e/a/m;->b:Lk/e/a/x;

    iget v10, v1, Lk/e/a/m;->c:I

    iget v13, v1, Lk/e/a/m;->f:I

    invoke-static {v3, v10, v13, v6}, Lk/e/a/b;->a(Lk/e/a/x;IILk/e/a/c;)V

    .line 179
    iget-object v3, v1, Lk/e/a/m;->b:Lk/e/a/x;

    iget-object v10, v1, Lk/e/a/m;->h:Lk/e/a/a;

    iget-object v13, v1, Lk/e/a/m;->i:Lk/e/a/a;

    move-object/from16 v19, v5

    iget-object v5, v1, Lk/e/a/m;->j:Lk/e/a/a;

    move-object/from16 v43, v12

    iget-object v12, v1, Lk/e/a/m;->k:Lk/e/a/a;

    move-object/from16 v36, v3

    move-object/from16 v37, v10

    move-object/from16 v38, v13

    move-object/from16 v39, v5

    move-object/from16 v40, v12

    move-object/from16 v41, v6

    invoke-static/range {v36 .. v41}, Lk/e/a/a;->a(Lk/e/a/x;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/c;)V

    .line 180
    iget-object v3, v1, Lk/e/a/m;->l:Lk/e/a/b;

    if-eqz v3, :cond_3d

    .line 181
    iget-object v5, v1, Lk/e/a/m;->b:Lk/e/a/x;

    invoke-virtual {v3, v5, v6}, Lk/e/a/b;->a(Lk/e/a/x;Lk/e/a/c;)V

    .line 182
    :cond_3d
    iget-object v1, v1, Lk/e/a/l;->a:Lk/e/a/l;

    check-cast v1, Lk/e/a/m;

    move/from16 v3, v34

    move-object/from16 v12, v43

    goto/16 :goto_13

    :cond_3e
    move/from16 v34, v3

    move-object/from16 v43, v12

    .line 183
    invoke-virtual {v6, v9}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 184
    iget-object v1, v0, Lk/e/a/g;->j:Lk/e/a/t;

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_18
    if-eqz v1, :cond_6d

    .line 185
    iget v5, v1, Lk/e/a/t;->t:I

    if-lez v5, :cond_3f

    const/4 v5, 0x1

    goto :goto_19

    :cond_3f
    const/4 v5, 0x0

    :goto_19
    or-int/2addr v13, v5

    .line 186
    iget-boolean v5, v1, Lk/e/a/t;->Y:Z

    or-int/2addr v3, v5

    .line 187
    iget-object v5, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 188
    iget v5, v5, Lk/e/a/x;->c:I

    const/16 v9, 0x31

    if-ge v5, v9, :cond_40

    const/4 v5, 0x1

    goto :goto_1a

    :cond_40
    const/4 v5, 0x0

    :goto_1a
    if-eqz v5, :cond_41

    const/16 v9, 0x1000

    goto :goto_1b

    :cond_41
    const/4 v9, 0x0

    .line 189
    :goto_1b
    iget v10, v1, Lk/e/a/t;->d:I

    not-int v9, v9

    and-int/2addr v9, v10

    invoke-virtual {v6, v9}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v9, v1, Lk/e/a/t;->e:I

    invoke-virtual {v6, v9}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v9, v1, Lk/e/a/t;->g:I

    invoke-virtual {v6, v9}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 190
    iget v9, v1, Lk/e/a/t;->a0:I

    if-eqz v9, :cond_42

    .line 191
    iget-object v5, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 192
    iget-object v5, v5, Lk/e/a/x;->b:Lk/e/a/d;

    .line 193
    iget-object v5, v5, Lk/e/a/d;->a:[B

    iget v10, v1, Lk/e/a/t;->b0:I

    invoke-virtual {v6, v5, v9, v10}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    move/from16 v19, v3

    move/from16 v44, v13

    move-object v9, v14

    move-object/from16 v14, v23

    move-object/from16 v12, v26

    move-object/from16 v10, v43

    const/16 v5, 0x32

    goto/16 :goto_2b

    .line 194
    :cond_42
    iget-object v9, v1, Lk/e/a/t;->k:Lk/e/a/c;

    iget v9, v9, Lk/e/a/c;->b:I

    if-lez v9, :cond_43

    const/4 v9, 0x1

    goto :goto_1c

    :cond_43
    const/4 v9, 0x0

    .line 195
    :goto_1c
    iget v10, v1, Lk/e/a/t;->y:I

    if-lez v10, :cond_44

    add-int/lit8 v9, v9, 0x1

    .line 196
    :cond_44
    iget v10, v1, Lk/e/a/t;->d:I

    const/16 v12, 0x1000

    and-int/2addr v10, v12

    if-eqz v10, :cond_45

    if-eqz v5, :cond_45

    add-int/lit8 v9, v9, 0x1

    .line 197
    :cond_45
    iget v5, v1, Lk/e/a/t;->A:I

    if-eqz v5, :cond_46

    add-int/lit8 v9, v9, 0x1

    .line 198
    :cond_46
    iget v5, v1, Lk/e/a/t;->d:I

    and-int v5, v5, v30

    if-eqz v5, :cond_47

    add-int/lit8 v9, v9, 0x1

    .line 199
    :cond_47
    iget-object v5, v1, Lk/e/a/t;->B:Lk/e/a/a;

    if-eqz v5, :cond_48

    add-int/lit8 v9, v9, 0x1

    .line 200
    :cond_48
    iget-object v5, v1, Lk/e/a/t;->C:Lk/e/a/a;

    if-eqz v5, :cond_49

    add-int/lit8 v9, v9, 0x1

    .line 201
    :cond_49
    iget-object v5, v1, Lk/e/a/t;->E:[Lk/e/a/a;

    if-eqz v5, :cond_4a

    add-int/lit8 v9, v9, 0x1

    .line 202
    :cond_4a
    iget-object v5, v1, Lk/e/a/t;->G:[Lk/e/a/a;

    if-eqz v5, :cond_4b

    add-int/lit8 v9, v9, 0x1

    .line 203
    :cond_4b
    iget-object v5, v1, Lk/e/a/t;->H:Lk/e/a/a;

    if-eqz v5, :cond_4c

    add-int/lit8 v9, v9, 0x1

    .line 204
    :cond_4c
    iget-object v5, v1, Lk/e/a/t;->I:Lk/e/a/a;

    if-eqz v5, :cond_4d

    add-int/lit8 v9, v9, 0x1

    .line 205
    :cond_4d
    iget-object v5, v1, Lk/e/a/t;->J:Lk/e/a/c;

    if-eqz v5, :cond_4e

    add-int/lit8 v9, v9, 0x1

    .line 206
    :cond_4e
    iget-object v5, v1, Lk/e/a/t;->L:Lk/e/a/c;

    if-eqz v5, :cond_4f

    add-int/lit8 v9, v9, 0x1

    .line 207
    :cond_4f
    iget-object v5, v1, Lk/e/a/t;->M:Lk/e/a/b;

    if-eqz v5, :cond_50

    .line 208
    invoke-virtual {v5}, Lk/e/a/b;->a()I

    move-result v5

    add-int/2addr v9, v5

    .line 209
    :cond_50
    invoke-virtual {v6, v9}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 210
    iget-object v5, v1, Lk/e/a/t;->k:Lk/e/a/c;

    iget v5, v5, Lk/e/a/c;->b:I

    if-lez v5, :cond_63

    add-int/lit8 v5, v5, 0xa

    .line 211
    iget-object v9, v1, Lk/e/a/t;->l:Lk/e/a/p;

    const/4 v10, 0x0

    :goto_1d
    if-eqz v9, :cond_51

    add-int/lit8 v10, v10, 0x1

    .line 212
    iget-object v9, v9, Lk/e/a/p;->f:Lk/e/a/p;

    goto :goto_1d

    :cond_51
    mul-int/lit8 v10, v10, 0x8

    const/4 v9, 0x2

    add-int/2addr v10, v9

    add-int/2addr v10, v5

    .line 213
    iget-object v5, v1, Lk/e/a/t;->u:Lk/e/a/c;

    if-eqz v5, :cond_52

    .line 214
    iget v5, v5, Lk/e/a/c;->b:I

    const/16 v9, 0x8

    add-int/2addr v5, v9

    add-int/2addr v10, v5

    const/4 v5, 0x1

    goto :goto_1e

    :cond_52
    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 215
    :goto_1e
    iget-object v12, v1, Lk/e/a/t;->o:Lk/e/a/c;

    if-eqz v12, :cond_53

    .line 216
    iget v12, v12, Lk/e/a/c;->b:I

    add-int/2addr v12, v9

    add-int/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    .line 217
    :cond_53
    iget-object v12, v1, Lk/e/a/t;->q:Lk/e/a/c;

    if-eqz v12, :cond_54

    .line 218
    iget v12, v12, Lk/e/a/c;->b:I

    add-int/2addr v12, v9

    add-int/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    .line 219
    :cond_54
    iget-object v12, v1, Lk/e/a/t;->s:Lk/e/a/c;

    if-eqz v12, :cond_55

    .line 220
    iget v12, v12, Lk/e/a/c;->b:I

    add-int/2addr v12, v9

    add-int/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    .line 221
    :cond_55
    iget-object v12, v1, Lk/e/a/t;->v:Lk/e/a/a;

    if-eqz v12, :cond_56

    .line 222
    invoke-virtual {v12, v2}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    .line 223
    :cond_56
    iget-object v12, v1, Lk/e/a/t;->w:Lk/e/a/a;

    if-eqz v12, :cond_57

    .line 224
    invoke-virtual {v12, v8}, Lk/e/a/a;->a(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    .line 225
    :cond_57
    iget-object v12, v1, Lk/e/a/t;->x:Lk/e/a/b;

    if-eqz v12, :cond_58

    .line 226
    iget-object v9, v1, Lk/e/a/t;->c:Lk/e/a/x;

    move/from16 v19, v3

    iget-object v3, v1, Lk/e/a/t;->k:Lk/e/a/c;

    move/from16 v44, v13

    iget-object v13, v3, Lk/e/a/c;->a:[B

    iget v3, v3, Lk/e/a/c;->b:I

    iget v0, v1, Lk/e/a/t;->i:I

    move-object/from16 v45, v14

    iget v14, v1, Lk/e/a/t;->j:I

    move-object/from16 v36, v12

    move-object/from16 v37, v9

    move-object/from16 v38, v13

    move/from16 v39, v3

    move/from16 v40, v0

    move/from16 v41, v14

    .line 227
    invoke-virtual/range {v36 .. v41}, Lk/e/a/b;->a(Lk/e/a/x;[BIII)I

    move-result v0

    add-int/2addr v10, v0

    .line 228
    iget-object v0, v1, Lk/e/a/t;->x:Lk/e/a/b;

    invoke-virtual {v0}, Lk/e/a/b;->a()I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1f

    :cond_58
    move/from16 v19, v3

    move/from16 v44, v13

    move-object/from16 v45, v14

    .line 229
    :goto_1f
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 230
    invoke-virtual {v0, v4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 231
    invoke-virtual {v6, v10}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->i:I

    .line 232
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->j:I

    .line 233
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->k:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    .line 234
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->k:Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v9, 0x0

    .line 235
    invoke-virtual {v6, v3, v9, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 236
    iget-object v0, v1, Lk/e/a/t;->l:Lk/e/a/p;

    move-object v9, v0

    const/4 v3, 0x0

    :goto_20
    if-eqz v9, :cond_59

    add-int/lit8 v3, v3, 0x1

    .line 237
    iget-object v9, v9, Lk/e/a/p;->f:Lk/e/a/p;

    goto :goto_20

    .line 238
    :cond_59
    invoke-virtual {v6, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    :goto_21
    if-eqz v0, :cond_5a

    .line 239
    iget-object v3, v0, Lk/e/a/p;->a:Lk/e/a/q;

    iget v3, v3, Lk/e/a/q;->d:I

    .line 240
    invoke-virtual {v6, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/p;->b:Lk/e/a/q;

    iget v3, v3, Lk/e/a/q;->d:I

    .line 241
    invoke-virtual {v6, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/p;->c:Lk/e/a/q;

    iget v3, v3, Lk/e/a/q;->d:I

    .line 242
    invoke-virtual {v6, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v3, v0, Lk/e/a/p;->d:I

    .line 243
    invoke-virtual {v6, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 244
    iget-object v0, v0, Lk/e/a/p;->f:Lk/e/a/p;

    goto :goto_21

    .line 245
    :cond_5a
    invoke-virtual {v6, v5}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 246
    iget-object v0, v1, Lk/e/a/t;->u:Lk/e/a/c;

    if-eqz v0, :cond_5d

    .line 247
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 248
    iget v0, v0, Lk/e/a/x;->c:I

    const/16 v5, 0x32

    if-lt v0, v5, :cond_5b

    const/4 v0, 0x1

    goto :goto_22

    :cond_5b
    const/4 v0, 0x0

    .line 249
    :goto_22
    iget-object v3, v1, Lk/e/a/t;->c:Lk/e/a/x;

    if-eqz v0, :cond_5c

    move-object/from16 v0, v17

    goto :goto_23

    :cond_5c
    move-object/from16 v0, v18

    .line 250
    :goto_23
    invoke-virtual {v3, v0}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    .line 251
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->u:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    .line 252
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->t:I

    .line 253
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->u:Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v9, 0x0

    .line 254
    invoke-virtual {v6, v3, v9, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    goto :goto_24

    :cond_5d
    const/16 v5, 0x32

    .line 255
    :goto_24
    iget-object v0, v1, Lk/e/a/t;->o:Lk/e/a/c;

    if-eqz v0, :cond_5e

    .line 256
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 257
    invoke-virtual {v0, v11}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->o:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    .line 258
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->n:I

    .line 259
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->o:Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v9, 0x0

    .line 260
    invoke-virtual {v6, v3, v9, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 261
    :cond_5e
    iget-object v0, v1, Lk/e/a/t;->q:Lk/e/a/c;

    if-eqz v0, :cond_5f

    .line 262
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 263
    invoke-virtual {v0, v7}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->q:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    .line 264
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->p:I

    .line 265
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->q:Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v9, 0x0

    .line 266
    invoke-virtual {v6, v3, v9, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 267
    :cond_5f
    iget-object v0, v1, Lk/e/a/t;->s:Lk/e/a/c;

    if-eqz v0, :cond_60

    .line 268
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    const-string v3, "LocalVariableTypeTable"

    .line 269
    invoke-virtual {v0, v3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->s:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    .line 270
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->r:I

    .line 271
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->s:Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v9, 0x0

    .line 272
    invoke-virtual {v6, v3, v9, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 273
    :cond_60
    iget-object v0, v1, Lk/e/a/t;->v:Lk/e/a/a;

    if-eqz v0, :cond_61

    .line 274
    iget-object v3, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 275
    invoke-virtual {v3, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v3

    .line 276
    invoke-virtual {v0, v3, v6}, Lk/e/a/a;->a(ILk/e/a/c;)V

    .line 277
    :cond_61
    iget-object v0, v1, Lk/e/a/t;->w:Lk/e/a/a;

    if-eqz v0, :cond_62

    .line 278
    iget-object v3, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 279
    invoke-virtual {v3, v8}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v3

    .line 280
    invoke-virtual {v0, v3, v6}, Lk/e/a/a;->a(ILk/e/a/c;)V

    .line 281
    :cond_62
    iget-object v0, v1, Lk/e/a/t;->x:Lk/e/a/b;

    if-eqz v0, :cond_64

    .line 282
    iget-object v3, v1, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v9, v1, Lk/e/a/t;->k:Lk/e/a/c;

    iget-object v10, v9, Lk/e/a/c;->a:[B

    iget v9, v9, Lk/e/a/c;->b:I

    iget v12, v1, Lk/e/a/t;->i:I

    iget v13, v1, Lk/e/a/t;->j:I

    move-object/from16 v36, v0

    move-object/from16 v37, v3

    move-object/from16 v38, v10

    move/from16 v39, v9

    move/from16 v40, v12

    move/from16 v41, v13

    move-object/from16 v42, v6

    invoke-virtual/range {v36 .. v42}, Lk/e/a/b;->a(Lk/e/a/x;[BIIILk/e/a/c;)V

    goto :goto_25

    :cond_63
    move/from16 v19, v3

    move/from16 v44, v13

    move-object/from16 v45, v14

    const/16 v5, 0x32

    .line 283
    :cond_64
    :goto_25
    iget v0, v1, Lk/e/a/t;->y:I

    if-lez v0, :cond_65

    .line 284
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 285
    invoke-virtual {v0, v15}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->y:I

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 286
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->y:I

    .line 287
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 288
    iget-object v0, v1, Lk/e/a/t;->z:[I

    array-length v3, v0

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v3, :cond_65

    aget v10, v0, v9

    .line 289
    invoke-virtual {v6, v10}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 290
    :cond_65
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    iget v3, v1, Lk/e/a/t;->d:I

    iget v9, v1, Lk/e/a/t;->A:I

    invoke-static {v0, v3, v9, v6}, Lk/e/a/b;->a(Lk/e/a/x;IILk/e/a/c;)V

    .line 291
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    iget-object v3, v1, Lk/e/a/t;->B:Lk/e/a/a;

    iget-object v9, v1, Lk/e/a/t;->C:Lk/e/a/a;

    iget-object v10, v1, Lk/e/a/t;->H:Lk/e/a/a;

    iget-object v12, v1, Lk/e/a/t;->I:Lk/e/a/a;

    move-object/from16 v36, v0

    move-object/from16 v37, v3

    move-object/from16 v38, v9

    move-object/from16 v39, v10

    move-object/from16 v40, v12

    move-object/from16 v41, v6

    invoke-static/range {v36 .. v41}, Lk/e/a/a;->a(Lk/e/a/x;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/c;)V

    .line 292
    iget-object v0, v1, Lk/e/a/t;->E:[Lk/e/a/a;

    if-eqz v0, :cond_67

    .line 293
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    move-object/from16 v9, v45

    .line 294
    invoke-virtual {v0, v9}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    iget-object v3, v1, Lk/e/a/t;->E:[Lk/e/a/a;

    iget v10, v1, Lk/e/a/t;->D:I

    if-nez v10, :cond_66

    array-length v10, v3

    .line 295
    :cond_66
    invoke-static {v0, v3, v10, v6}, Lk/e/a/a;->a(I[Lk/e/a/a;ILk/e/a/c;)V

    goto :goto_27

    :cond_67
    move-object/from16 v9, v45

    .line 296
    :goto_27
    iget-object v0, v1, Lk/e/a/t;->G:[Lk/e/a/a;

    if-eqz v0, :cond_69

    .line 297
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    move-object/from16 v10, v43

    .line 298
    invoke-virtual {v0, v10}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    iget-object v3, v1, Lk/e/a/t;->G:[Lk/e/a/a;

    iget v12, v1, Lk/e/a/t;->F:I

    if-nez v12, :cond_68

    array-length v12, v3

    .line 299
    :cond_68
    invoke-static {v0, v3, v12, v6}, Lk/e/a/a;->a(I[Lk/e/a/a;ILk/e/a/c;)V

    goto :goto_28

    :cond_69
    move-object/from16 v10, v43

    .line 300
    :goto_28
    iget-object v0, v1, Lk/e/a/t;->J:Lk/e/a/c;

    if-eqz v0, :cond_6a

    .line 301
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    move-object/from16 v12, v26

    .line 302
    invoke-virtual {v0, v12}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->J:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    .line 303
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->J:Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v13, 0x0

    .line 304
    invoke-virtual {v6, v3, v13, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    goto :goto_29

    :cond_6a
    move-object/from16 v12, v26

    .line 305
    :goto_29
    iget-object v0, v1, Lk/e/a/t;->L:Lk/e/a/c;

    if-eqz v0, :cond_6b

    .line 306
    iget-object v0, v1, Lk/e/a/t;->c:Lk/e/a/x;

    move-object/from16 v14, v23

    .line 307
    invoke-virtual {v0, v14}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->L:Lk/e/a/c;

    iget v0, v0, Lk/e/a/c;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 308
    invoke-virtual {v6, v0}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v0, v1, Lk/e/a/t;->K:I

    .line 309
    invoke-virtual {v6, v0}, Lk/e/a/c;->b(I)Lk/e/a/c;

    iget-object v0, v1, Lk/e/a/t;->L:Lk/e/a/c;

    iget-object v3, v0, Lk/e/a/c;->a:[B

    iget v0, v0, Lk/e/a/c;->b:I

    const/4 v13, 0x0

    .line 310
    invoke-virtual {v6, v3, v13, v0}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    goto :goto_2a

    :cond_6b
    move-object/from16 v14, v23

    .line 311
    :goto_2a
    iget-object v0, v1, Lk/e/a/t;->M:Lk/e/a/b;

    if-eqz v0, :cond_6c

    .line 312
    iget-object v3, v1, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v0, v3, v6}, Lk/e/a/b;->a(Lk/e/a/x;Lk/e/a/c;)V

    .line 313
    :cond_6c
    :goto_2b
    iget-object v0, v1, Lk/e/a/s;->b:Lk/e/a/s;

    move-object v1, v0

    check-cast v1, Lk/e/a/t;

    move-object/from16 v0, p0

    move-object/from16 v43, v10

    move-object/from16 v26, v12

    move-object/from16 v23, v14

    move/from16 v3, v19

    move/from16 v13, v44

    move-object v14, v9

    goto/16 :goto_18

    :cond_6d
    move/from16 v0, v34

    .line 314
    invoke-virtual {v6, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    move-object/from16 v0, p0

    .line 315
    iget-object v1, v0, Lk/e/a/g;->m:Lk/e/a/c;

    if-eqz v1, :cond_6e

    .line 316
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v2, v22

    .line 317
    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v1, v0, Lk/e/a/g;->m:Lk/e/a/c;

    iget v1, v1, Lk/e/a/c;->b:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 318
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->l:I

    .line 319
    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v1, v0, Lk/e/a/g;->m:Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/c;->a:[B

    iget v1, v1, Lk/e/a/c;->b:I

    const/4 v4, 0x0

    .line 320
    invoke-virtual {v6, v2, v4, v1}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 321
    :cond_6e
    iget v1, v0, Lk/e/a/g;->n:I

    if-eqz v1, :cond_6f

    .line 322
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v2, v24

    .line 323
    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v1, 0x4

    .line 324
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->n:I

    .line 325
    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->o:I

    .line 326
    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 327
    :cond_6f
    iget v1, v0, Lk/e/a/g;->c:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_70

    iget v1, v0, Lk/e/a/g;->a:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-ge v1, v2, :cond_70

    .line 328
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 329
    :cond_70
    iget v1, v0, Lk/e/a/g;->p:I

    if-eqz v1, :cond_71

    .line 330
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v2, v28

    .line 331
    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v1, 0x2

    .line 332
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v2, v0, Lk/e/a/g;->p:I

    .line 333
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_2c

    :cond_71
    const/4 v1, 0x2

    .line 334
    :goto_2c
    iget v2, v0, Lk/e/a/g;->q:I

    if-eqz v2, :cond_72

    .line 335
    iget-object v2, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v4, v29

    .line 336
    invoke-virtual {v2, v4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 337
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->q:I

    .line 338
    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 339
    :cond_72
    iget-object v1, v0, Lk/e/a/g;->r:Lk/e/a/c;

    if-eqz v1, :cond_73

    .line 340
    iget v1, v1, Lk/e/a/c;->b:I

    .line 341
    iget-object v2, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v4, v31

    .line 342
    invoke-virtual {v2, v4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 343
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget-object v2, v0, Lk/e/a/g;->r:Lk/e/a/c;

    iget-object v2, v2, Lk/e/a/c;->a:[B

    const/4 v4, 0x0

    .line 344
    invoke-virtual {v6, v2, v4, v1}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    goto :goto_2d

    :cond_73
    const/4 v4, 0x0

    .line 345
    :goto_2d
    iget v1, v0, Lk/e/a/g;->c:I

    and-int v1, v1, v30

    if-eqz v1, :cond_74

    .line 346
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {v6, v4}, Lk/e/a/c;->c(I)Lk/e/a/c;

    .line 347
    :cond_74
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    iget-object v2, v0, Lk/e/a/g;->s:Lk/e/a/a;

    iget-object v4, v0, Lk/e/a/g;->t:Lk/e/a/a;

    iget-object v5, v0, Lk/e/a/g;->u:Lk/e/a/a;

    iget-object v7, v0, Lk/e/a/g;->v:Lk/e/a/a;

    move-object/from16 v36, v1

    move-object/from16 v37, v2

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v40, v7

    move-object/from16 v41, v6

    invoke-static/range {v36 .. v41}, Lk/e/a/a;->a(Lk/e/a/x;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/a;Lk/e/a/c;)V

    .line 348
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    .line 349
    iget-object v2, v1, Lk/e/a/x;->j:Lk/e/a/c;

    if-eqz v2, :cond_75

    move-object/from16 v2, v35

    .line 350
    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/x;->j:Lk/e/a/c;

    iget v2, v2, Lk/e/a/c;->b:I

    const/4 v4, 0x2

    add-int/2addr v2, v4

    .line 351
    invoke-virtual {v6, v2}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v2, v1, Lk/e/a/x;->i:I

    .line 352
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v1, v1, Lk/e/a/x;->j:Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/c;->a:[B

    iget v1, v1, Lk/e/a/c;->b:I

    const/4 v4, 0x0

    .line 353
    invoke-virtual {v6, v2, v4, v1}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 354
    :cond_75
    iget-object v1, v0, Lk/e/a/g;->w:Lk/e/a/u;

    if-eqz v1, :cond_77

    .line 355
    iget-object v2, v1, Lk/e/a/u;->f:Lk/e/a/c;

    iget v2, v2, Lk/e/a/c;->b:I

    const/16 v4, 0x10

    add-int/2addr v2, v4

    iget-object v4, v1, Lk/e/a/u;->h:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/2addr v2, v4

    iget-object v4, v1, Lk/e/a/u;->j:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/2addr v2, v4

    iget-object v4, v1, Lk/e/a/u;->l:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/2addr v2, v4

    iget-object v4, v1, Lk/e/a/u;->n:Lk/e/a/c;

    iget v4, v4, Lk/e/a/c;->b:I

    add-int/2addr v2, v4

    .line 356
    iget-object v4, v1, Lk/e/a/u;->a:Lk/e/a/x;

    const-string v5, "Module"

    .line 357
    invoke-virtual {v4, v5}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 358
    invoke-virtual {v6, v2}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->b:I

    .line 359
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->c:I

    .line 360
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->d:I

    .line 361
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->e:I

    .line 362
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/u;->f:Lk/e/a/c;

    iget-object v4, v2, Lk/e/a/c;->a:[B

    iget v2, v2, Lk/e/a/c;->b:I

    const/4 v5, 0x0

    .line 363
    invoke-virtual {v6, v4, v5, v2}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->g:I

    .line 364
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/u;->h:Lk/e/a/c;

    iget-object v4, v2, Lk/e/a/c;->a:[B

    iget v2, v2, Lk/e/a/c;->b:I

    .line 365
    invoke-virtual {v6, v4, v5, v2}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->i:I

    .line 366
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/u;->j:Lk/e/a/c;

    iget-object v4, v2, Lk/e/a/c;->a:[B

    iget v2, v2, Lk/e/a/c;->b:I

    .line 367
    invoke-virtual {v6, v4, v5, v2}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->k:I

    .line 368
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/u;->l:Lk/e/a/c;

    iget-object v4, v2, Lk/e/a/c;->a:[B

    iget v2, v2, Lk/e/a/c;->b:I

    .line 369
    invoke-virtual {v6, v4, v5, v2}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->m:I

    .line 370
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/u;->n:Lk/e/a/c;

    iget-object v4, v2, Lk/e/a/c;->a:[B

    iget v2, v2, Lk/e/a/c;->b:I

    .line 371
    invoke-virtual {v6, v4, v5, v2}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 372
    iget v2, v1, Lk/e/a/u;->o:I

    if-lez v2, :cond_76

    .line 373
    iget-object v2, v1, Lk/e/a/u;->a:Lk/e/a/x;

    const-string v4, "ModulePackages"

    .line 374
    invoke-virtual {v2, v4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/u;->p:Lk/e/a/c;

    iget v2, v2, Lk/e/a/c;->b:I

    const/4 v4, 0x2

    add-int/2addr v2, v4

    .line 375
    invoke-virtual {v6, v2}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v2, v1, Lk/e/a/u;->o:I

    .line 376
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/u;->p:Lk/e/a/c;

    iget-object v4, v2, Lk/e/a/c;->a:[B

    iget v2, v2, Lk/e/a/c;->b:I

    const/4 v5, 0x0

    .line 377
    invoke-virtual {v6, v4, v5, v2}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 378
    :cond_76
    iget v2, v1, Lk/e/a/u;->q:I

    if-lez v2, :cond_77

    .line 379
    iget-object v2, v1, Lk/e/a/u;->a:Lk/e/a/x;

    const-string v4, "ModuleMainClass"

    .line 380
    invoke-virtual {v2, v4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v2, 0x2

    .line 381
    invoke-virtual {v6, v2}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v1, v1, Lk/e/a/u;->q:I

    .line 382
    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 383
    :cond_77
    iget v1, v0, Lk/e/a/g;->x:I

    if-eqz v1, :cond_78

    .line 384
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    const-string v2, "NestHost"

    .line 385
    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v1, 0x2

    .line 386
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->x:I

    .line 387
    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 388
    :cond_78
    iget-object v1, v0, Lk/e/a/g;->z:Lk/e/a/c;

    if-eqz v1, :cond_79

    .line 389
    iget-object v1, v0, Lk/e/a/g;->b:Lk/e/a/x;

    const-string v2, "NestMembers"

    .line 390
    invoke-virtual {v1, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v1, v0, Lk/e/a/g;->z:Lk/e/a/c;

    iget v1, v1, Lk/e/a/c;->b:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 391
    invoke-virtual {v6, v1}, Lk/e/a/c;->c(I)Lk/e/a/c;

    iget v1, v0, Lk/e/a/g;->y:I

    .line 392
    invoke-virtual {v6, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    iget-object v1, v0, Lk/e/a/g;->z:Lk/e/a/c;

    iget-object v2, v1, Lk/e/a/c;->a:[B

    iget v1, v1, Lk/e/a/c;->b:I

    const/4 v4, 0x0

    .line 393
    invoke-virtual {v6, v2, v4, v1}, Lk/e/a/c;->a([BII)Lk/e/a/c;

    .line 394
    :cond_79
    iget-object v1, v0, Lk/e/a/g;->A:Lk/e/a/b;

    if-eqz v1, :cond_7a

    .line 395
    iget-object v2, v0, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v1, v2, v6}, Lk/e/a/b;->a(Lk/e/a/x;Lk/e/a/c;)V

    :cond_7a
    if-eqz v3, :cond_7b

    .line 396
    iget-object v1, v6, Lk/e/a/c;->a:[B

    invoke-virtual {v0, v1, v13}, Lk/e/a/g;->a([BZ)[B

    move-result-object v1

    return-object v1

    .line 397
    :cond_7b
    iget-object v1, v6, Lk/e/a/c;->a:[B

    return-object v1

    .line 398
    :cond_7c
    new-instance v1, Lk/e/a/e;

    iget-object v2, v0, Lk/e/a/g;->b:Lk/e/a/x;

    .line 399
    iget-object v2, v2, Lk/e/a/x;->d:Ljava/lang/String;

    .line 400
    invoke-direct {v1, v2, v6}, Lk/e/a/e;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public final a([BZ)[B
    .locals 57

    move-object/from16 v7, p0

    .line 401
    new-instance v0, Lk/e/a/b$a;

    invoke-direct {v0}, Lk/e/a/b$a;-><init>()V

    .line 402
    iget-object v1, v7, Lk/e/a/g;->A:Lk/e/a/b;

    invoke-virtual {v0, v1}, Lk/e/a/b$a;->a(Lk/e/a/b;)V

    .line 403
    iget-object v1, v7, Lk/e/a/g;->h:Lk/e/a/m;

    :goto_0
    if-eqz v1, :cond_0

    .line 404
    iget-object v2, v1, Lk/e/a/m;->l:Lk/e/a/b;

    invoke-virtual {v0, v2}, Lk/e/a/b$a;->a(Lk/e/a/b;)V

    .line 405
    iget-object v1, v1, Lk/e/a/l;->a:Lk/e/a/l;

    check-cast v1, Lk/e/a/m;

    goto :goto_0

    .line 406
    :cond_0
    iget-object v1, v7, Lk/e/a/g;->j:Lk/e/a/t;

    :goto_1
    if-eqz v1, :cond_1

    .line 407
    iget-object v2, v1, Lk/e/a/t;->M:Lk/e/a/b;

    invoke-virtual {v0, v2}, Lk/e/a/b$a;->a(Lk/e/a/b;)V

    .line 408
    iget-object v2, v1, Lk/e/a/t;->x:Lk/e/a/b;

    invoke-virtual {v0, v2}, Lk/e/a/b$a;->a(Lk/e/a/b;)V

    .line 409
    iget-object v1, v1, Lk/e/a/s;->b:Lk/e/a/s;

    check-cast v1, Lk/e/a/t;

    goto :goto_1

    .line 410
    :cond_1
    iget v1, v0, Lk/e/a/b$a;->a:I

    new-array v2, v1, [Lk/e/a/b;

    .line 411
    iget-object v0, v0, Lk/e/a/b$a;->b:[Lk/e/a/b;

    const/4 v6, 0x0

    invoke-static {v0, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    .line 412
    iput-object v5, v7, Lk/e/a/g;->h:Lk/e/a/m;

    .line 413
    iput-object v5, v7, Lk/e/a/g;->i:Lk/e/a/m;

    .line 414
    iput-object v5, v7, Lk/e/a/g;->j:Lk/e/a/t;

    .line 415
    iput-object v5, v7, Lk/e/a/g;->k:Lk/e/a/t;

    .line 416
    iput-object v5, v7, Lk/e/a/g;->s:Lk/e/a/a;

    .line 417
    iput-object v5, v7, Lk/e/a/g;->t:Lk/e/a/a;

    .line 418
    iput-object v5, v7, Lk/e/a/g;->u:Lk/e/a/a;

    .line 419
    iput-object v5, v7, Lk/e/a/g;->v:Lk/e/a/a;

    .line 420
    iput-object v5, v7, Lk/e/a/g;->w:Lk/e/a/u;

    .line 421
    iput v6, v7, Lk/e/a/g;->x:I

    .line 422
    iput v6, v7, Lk/e/a/g;->y:I

    .line 423
    iput-object v5, v7, Lk/e/a/g;->z:Lk/e/a/c;

    .line 424
    iput-object v5, v7, Lk/e/a/g;->A:Lk/e/a/b;

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 425
    :goto_2
    iput v0, v7, Lk/e/a/g;->B:I

    .line 426
    new-instance v4, Lk/e/a/d;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v6, v6}, Lk/e/a/d;-><init>([BIZ)V

    const/16 v0, 0x8

    if-eqz p2, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    or-int/lit16 v3, v1, 0x100

    .line 427
    new-instance v1, Lk/e/a/i;

    invoke-direct {v1}, Lk/e/a/i;-><init>()V

    .line 428
    iput-object v2, v1, Lk/e/a/i;->a:[Lk/e/a/b;

    .line 429
    iput v3, v1, Lk/e/a/i;->b:I

    .line 430
    iget v8, v4, Lk/e/a/d;->f:I

    new-array v15, v8, [C

    iput-object v15, v1, Lk/e/a/i;->c:[C

    .line 431
    iget v8, v4, Lk/e/a/d;->g:I

    .line 432
    invoke-virtual {v4, v8}, Lk/e/a/d;->e(I)I

    move-result v9

    add-int/lit8 v10, v8, 0x2

    .line 433
    invoke-virtual {v4, v10, v15}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v10, v8, 0x4

    .line 434
    invoke-virtual {v4, v10, v15}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v10, v8, 0x6

    .line 435
    invoke-virtual {v4, v10}, Lk/e/a/d;->e(I)I

    move-result v10

    new-array v14, v10, [Ljava/lang/String;

    add-int/2addr v8, v0

    move v0, v8

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_4

    .line 436
    invoke-virtual {v4, v0, v15}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v8

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 437
    :cond_4
    invoke-virtual {v4}, Lk/e/a/d;->a()I

    move-result v8

    add-int/lit8 v10, v8, -0x2

    .line 438
    invoke-virtual {v4, v10}, Lk/e/a/d;->e(I)I

    move-result v10

    move-object v11, v5

    move-object v12, v11

    move-object/from16 v18, v12

    move-object/from16 v20, v18

    move-object/from16 v22, v20

    move v13, v9

    move/from16 v19, v10

    move-object/from16 p1, v14

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v10, v22

    :goto_5
    const-string v14, "RuntimeInvisibleTypeAnnotations"

    move-object/from16 p2, v12

    const-string v12, "RuntimeInvisibleAnnotations"

    const/high16 v30, 0x20000

    move-object/from16 v31, v11

    const-string v11, "Synthetic"

    move-object/from16 v32, v10

    const-string v10, "Deprecated"

    move/from16 v33, v9

    const-string v9, "RuntimeVisibleTypeAnnotations"

    const-string v7, "RuntimeVisibleAnnotations"

    const-string v6, "Signature"

    if-lez v19, :cond_16

    .line 439
    invoke-virtual {v4, v8, v15}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v5

    move/from16 v34, v0

    add-int/lit8 v0, v8, 0x2

    .line 440
    invoke-virtual {v4, v0}, Lk/e/a/d;->b(I)I

    move-result v0

    add-int/lit8 v8, v8, 0x6

    move-object/from16 v35, v1

    const-string v1, "SourceFile"

    .line 441
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 442
    invoke-virtual {v4, v8, v15}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v10, v32

    move/from16 v9, v33

    goto/16 :goto_9

    :cond_5
    const-string v1, "InnerClasses"

    .line 443
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move/from16 v29, v8

    goto :goto_6

    :cond_6
    const-string v1, "EnclosingMethod"

    .line 444
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v23, v8

    goto :goto_6

    :cond_7
    const-string v1, "NestHost"

    .line 445
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 446
    invoke-virtual {v4, v8, v15}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v22

    :goto_6
    move/from16 v9, v33

    goto/16 :goto_7

    :cond_8
    const-string v1, "NestMembers"

    .line 447
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v28, v8

    goto :goto_6

    .line 448
    :cond_9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 449
    invoke-virtual {v4, v8, v15}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    .line 450
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move/from16 v24, v8

    goto :goto_6

    .line 451
    :cond_b
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v26, v8

    goto :goto_6

    .line 452
    :cond_c
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int v13, v13, v30

    goto :goto_6

    .line 453
    :cond_d
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit16 v13, v13, 0x1000

    goto :goto_6

    :cond_e
    const-string v1, "SourceDebugExtension"

    .line 454
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 455
    new-array v1, v0, [C

    .line 456
    invoke-virtual {v4, v8, v0, v1}, Lk/e/a/d;->a(II[C)Ljava/lang/String;

    move-result-object v10

    move/from16 v9, v33

    goto :goto_8

    .line 457
    :cond_f
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move/from16 v25, v8

    goto :goto_6

    .line 458
    :cond_10
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move/from16 v27, v8

    goto :goto_6

    :cond_11
    const-string v1, "Module"

    .line 459
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v9, v8

    goto :goto_7

    :cond_12
    const-string v1, "ModuleMainClass"

    .line 460
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 461
    invoke-virtual {v4, v8, v15}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v20

    goto :goto_6

    :cond_13
    const-string v1, "ModulePackages"

    .line 462
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move/from16 v21, v8

    goto/16 :goto_6

    :goto_7
    move-object/from16 v10, v32

    :goto_8
    move-object/from16 v11, v31

    :goto_9
    move-object/from16 v32, p1

    move-object/from16 v12, p2

    move v6, v8

    move-object v7, v15

    goto :goto_b

    :cond_14
    const-string v1, "BootstrapMethods"

    .line 463
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v14, -0x1

    const/4 v1, 0x0

    move v6, v8

    move-object v8, v4

    move/from16 v7, v33

    move-object v9, v2

    move-object/from16 v12, v32

    move-object v10, v5

    move-object/from16 v5, v31

    move v11, v6

    move-object/from16 v36, p2

    move-object/from16 v37, v12

    move v12, v0

    move/from16 v31, v13

    move-object v13, v15

    move-object/from16 v32, p1

    move-object v7, v15

    move-object v15, v1

    .line 464
    invoke-virtual/range {v8 .. v15}, Lk/e/a/d;->a([Lk/e/a/b;Ljava/lang/String;II[CI[Lk/e/a/q;)Lk/e/a/b;

    move-result-object v12

    move-object/from16 v8, v36

    .line 465
    iput-object v8, v12, Lk/e/a/b;->c:Lk/e/a/b;

    goto :goto_a

    :cond_15
    move v6, v8

    move-object v7, v15

    move-object/from16 v5, v31

    move-object/from16 v37, v32

    move-object/from16 v32, p1

    move-object/from16 v8, p2

    move/from16 v31, v13

    move-object v12, v8

    :goto_a
    move-object v11, v5

    move/from16 v13, v31

    move/from16 v9, v33

    move-object/from16 v10, v37

    :goto_b
    add-int v8, v6, v0

    add-int/lit8 v19, v19, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v15, v7

    move-object/from16 p1, v32

    move/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v7, p0

    goto/16 :goto_5

    :cond_16
    move-object/from16 v8, p2

    move/from16 v34, v0

    move-object/from16 v35, v1

    move-object/from16 v5, v31

    move-object/from16 v37, v32

    move-object/from16 v32, p1

    move/from16 v31, v13

    move-object v13, v7

    move-object v7, v15

    move/from16 v15, v33

    .line 466
    iget-object v0, v4, Lk/e/a/d;->b:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    const/4 v1, 0x7

    sub-int/2addr v0, v1

    .line 467
    invoke-virtual {v4, v0}, Lk/e/a/d;->b(I)I

    move-result v19

    move-object/from16 v36, v8

    move/from16 v8, v34

    move-object/from16 v0, p0

    move-object/from16 p1, v13

    move-object/from16 p2, v14

    move-object/from16 v13, v35

    const/4 v14, 0x7

    move/from16 v1, v19

    move/from16 v2, v31

    move/from16 v19, v3

    move-object/from16 v3, v16

    move-object v14, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v12

    move-object v12, v5

    move-object/from16 v5, v17

    move-object/from16 v38, v6

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v6, v32

    .line 468
    invoke-virtual/range {v0 .. v6}, Lk/e/a/f;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    and-int/lit8 v0, v19, 0x2

    if-nez v0, :cond_17

    move-object/from16 v5, v37

    if-nez v12, :cond_18

    if-eqz v5, :cond_17

    goto :goto_c

    :cond_17
    move-object/from16 v6, p0

    move-object/from16 v4, p1

    goto :goto_d

    :cond_18
    :goto_c
    move-object/from16 v6, p0

    move-object/from16 v4, p1

    if-eqz v12, :cond_19

    .line 469
    iget-object v0, v6, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v0, v12}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lk/e/a/g;->q:I

    :cond_19
    if-eqz v5, :cond_1a

    .line 470
    new-instance v0, Lk/e/a/c;

    invoke-direct {v0}, Lk/e/a/c;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v5, v9, v1}, Lk/e/a/c;->a(Ljava/lang/String;II)Lk/e/a/c;

    iput-object v0, v6, Lk/e/a/g;->r:Lk/e/a/c;

    :cond_1a
    :goto_d
    if-eqz v15, :cond_2d

    .line 471
    iget-object v0, v13, Lk/e/a/i;->c:[C

    .line 472
    iget-object v1, v14, Lk/e/a/d;->b:[I

    invoke-virtual {v14, v15}, Lk/e/a/d;->e(I)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v14, v1, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v15, 0x2

    .line 473
    invoke-virtual {v14, v2}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v3, v15, 0x4

    .line 474
    invoke-virtual {v14, v3, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v15, 0x6

    .line 475
    new-instance v12, Lk/e/a/u;

    iget-object v15, v6, Lk/e/a/g;->b:Lk/e/a/x;

    const/16 v9, 0x13

    .line 476
    invoke-virtual {v15, v9, v1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 477
    iget v1, v1, Lk/e/a/w;->a:I

    if-nez v3, :cond_1b

    const/4 v3, 0x0

    goto :goto_e

    :cond_1b
    iget-object v9, v6, Lk/e/a/g;->b:Lk/e/a/x;

    .line 478
    invoke-virtual {v9, v3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v3

    :goto_e
    invoke-direct {v12, v15, v1, v2, v3}, Lk/e/a/u;-><init>(Lk/e/a/x;III)V

    iput-object v12, v6, Lk/e/a/g;->w:Lk/e/a/u;

    move-object/from16 v1, v20

    if-eqz v1, :cond_1c

    .line 479
    iget-object v2, v12, Lk/e/a/u;->a:Lk/e/a/x;

    const/4 v3, 0x7

    .line 480
    invoke-virtual {v2, v3, v1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 481
    iget v1, v1, Lk/e/a/w;->a:I

    iput v1, v12, Lk/e/a/u;->q:I

    :cond_1c
    const/16 v1, 0x14

    move/from16 v2, v21

    if-eqz v2, :cond_1d

    .line 482
    invoke-virtual {v14, v2}, Lk/e/a/d;->e(I)I

    move-result v3

    add-int/lit8 v21, v2, 0x2

    move/from16 v2, v21

    :goto_f
    add-int/lit8 v9, v3, -0x1

    if-lez v3, :cond_1d

    .line 483
    invoke-virtual {v14, v2, v0}, Lk/e/a/d;->d(I[C)Ljava/lang/String;

    move-result-object v3

    .line 484
    iget-object v15, v12, Lk/e/a/u;->p:Lk/e/a/c;

    move/from16 v19, v9

    iget-object v9, v12, Lk/e/a/u;->a:Lk/e/a/x;

    .line 485
    invoke-virtual {v9, v1, v3}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v3

    .line 486
    iget v3, v3, Lk/e/a/w;->a:I

    invoke-virtual {v15, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 487
    iget v3, v12, Lk/e/a/u;->o:I

    const/4 v15, 0x1

    add-int/2addr v3, v15

    iput v3, v12, Lk/e/a/u;->o:I

    add-int/lit8 v2, v2, 0x2

    move/from16 v3, v19

    goto :goto_f

    :cond_1d
    const/4 v15, 0x1

    .line 488
    invoke-virtual {v14, v5}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v5, v5, 0x2

    :goto_10
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1f

    .line 489
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->c(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v9, v5, 0x2

    .line 490
    invoke-virtual {v14, v9}, Lk/e/a/d;->e(I)I

    move-result v9

    add-int/lit8 v1, v5, 0x4

    .line 491
    invoke-virtual {v14, v1, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x6

    .line 492
    iget-object v15, v12, Lk/e/a/u;->f:Lk/e/a/c;

    move/from16 v20, v3

    iget-object v3, v12, Lk/e/a/u;->a:Lk/e/a/x;

    move-object/from16 v21, v4

    const/16 v4, 0x13

    .line 493
    invoke-virtual {v3, v4, v2}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v2

    .line 494
    iget v2, v2, Lk/e/a/w;->a:I

    invoke-virtual {v15, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 495
    invoke-virtual {v15, v9}, Lk/e/a/c;->d(I)Lk/e/a/c;

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_11

    :cond_1e
    iget-object v2, v12, Lk/e/a/u;->a:Lk/e/a/x;

    .line 496
    invoke-virtual {v2, v1}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v1

    :goto_11
    invoke-virtual {v15, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 497
    iget v1, v12, Lk/e/a/u;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v12, Lk/e/a/u;->e:I

    move/from16 v2, v20

    move-object/from16 v4, v21

    const/16 v1, 0x14

    const/4 v15, 0x1

    goto :goto_10

    :cond_1f
    move-object/from16 v21, v4

    .line 498
    invoke-virtual {v14, v5}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v5, v5, 0x2

    :goto_12
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_24

    .line 499
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->d(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v5, 0x2

    .line 500
    invoke-virtual {v14, v3}, Lk/e/a/d;->e(I)I

    move-result v3

    add-int/lit8 v4, v5, 0x4

    .line 501
    invoke-virtual {v14, v4}, Lk/e/a/d;->e(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x6

    if-eqz v4, :cond_20

    .line 502
    new-array v9, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_13
    if-ge v15, v4, :cond_21

    .line 503
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->c(I[C)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v9, v15

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    :cond_20
    const/4 v9, 0x0

    .line 504
    :cond_21
    iget-object v4, v12, Lk/e/a/u;->h:Lk/e/a/c;

    iget-object v15, v12, Lk/e/a/u;->a:Lk/e/a/x;

    move/from16 p1, v2

    const/16 v2, 0x14

    .line 505
    invoke-virtual {v15, v2, v1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 506
    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {v4, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {v4, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    if-nez v9, :cond_22

    .line 507
    iget-object v1, v12, Lk/e/a/u;->h:Lk/e/a/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_15

    .line 508
    :cond_22
    iget-object v1, v12, Lk/e/a/u;->h:Lk/e/a/c;

    array-length v2, v9

    invoke-virtual {v1, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 509
    array-length v1, v9

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_23

    aget-object v3, v9, v2

    .line 510
    iget-object v4, v12, Lk/e/a/u;->h:Lk/e/a/c;

    iget-object v15, v12, Lk/e/a/u;->a:Lk/e/a/x;

    invoke-virtual {v15, v3}, Lk/e/a/x;->b(Ljava/lang/String;)Lk/e/a/w;

    move-result-object v3

    iget v3, v3, Lk/e/a/w;->a:I

    invoke-virtual {v4, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 511
    :cond_23
    :goto_15
    iget v1, v12, Lk/e/a/u;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v12, Lk/e/a/u;->g:I

    move/from16 v1, p1

    goto :goto_12

    .line 512
    :cond_24
    invoke-virtual {v14, v5}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v5, v5, 0x2

    :goto_16
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_29

    .line 513
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->d(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v5, 0x2

    .line 514
    invoke-virtual {v14, v3}, Lk/e/a/d;->e(I)I

    move-result v3

    add-int/lit8 v4, v5, 0x4

    .line 515
    invoke-virtual {v14, v4}, Lk/e/a/d;->e(I)I

    move-result v4

    add-int/lit8 v5, v5, 0x6

    if-eqz v4, :cond_26

    .line 516
    new-array v9, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_17
    if-ge v15, v4, :cond_25

    .line 517
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->c(I[C)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v9, v15

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    :cond_25
    move v4, v5

    move-object v5, v9

    goto :goto_18

    :cond_26
    move v4, v5

    const/4 v5, 0x0

    .line 518
    :goto_18
    iget-object v9, v12, Lk/e/a/u;->j:Lk/e/a/c;

    iget-object v15, v12, Lk/e/a/u;->a:Lk/e/a/x;

    move/from16 p1, v2

    const/16 v2, 0x14

    .line 519
    invoke-virtual {v15, v2, v1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 520
    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {v9, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {v9, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    if-nez v5, :cond_27

    .line 521
    iget-object v1, v12, Lk/e/a/u;->j:Lk/e/a/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    goto :goto_1a

    .line 522
    :cond_27
    iget-object v1, v12, Lk/e/a/u;->j:Lk/e/a/c;

    array-length v3, v5

    invoke-virtual {v1, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 523
    array-length v1, v5

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_28

    aget-object v9, v5, v3

    .line 524
    iget-object v15, v12, Lk/e/a/u;->j:Lk/e/a/c;

    iget-object v2, v12, Lk/e/a/u;->a:Lk/e/a/x;

    invoke-virtual {v2, v9}, Lk/e/a/x;->b(Ljava/lang/String;)Lk/e/a/w;

    move-result-object v2

    iget v2, v2, Lk/e/a/w;->a:I

    invoke-virtual {v15, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x14

    goto :goto_19

    .line 525
    :cond_28
    :goto_1a
    iget v1, v12, Lk/e/a/u;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v12, Lk/e/a/u;->i:I

    move/from16 v1, p1

    move v5, v4

    goto :goto_16

    .line 526
    :cond_29
    invoke-virtual {v14, v5}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v5, v5, 0x2

    :goto_1b
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2a

    .line 527
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v1

    .line 528
    iget-object v3, v12, Lk/e/a/u;->l:Lk/e/a/c;

    iget-object v4, v12, Lk/e/a/u;->a:Lk/e/a/x;

    const/4 v9, 0x7

    .line 529
    invoke-virtual {v4, v9, v1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 530
    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {v3, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 531
    iget v1, v12, Lk/e/a/u;->k:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v12, Lk/e/a/u;->k:I

    add-int/lit8 v5, v5, 0x2

    move v1, v2

    goto :goto_1b

    .line 532
    :cond_2a
    invoke-virtual {v14, v5}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v5, v5, 0x2

    :goto_1c
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2e

    .line 533
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v5, 0x2

    .line 534
    invoke-virtual {v14, v3}, Lk/e/a/d;->e(I)I

    move-result v3

    add-int/lit8 v5, v5, 0x4

    .line 535
    new-array v4, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v3, :cond_2b

    .line 536
    invoke-virtual {v14, v5, v0}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v9

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 537
    :cond_2b
    iget-object v9, v12, Lk/e/a/u;->n:Lk/e/a/c;

    iget-object v15, v12, Lk/e/a/u;->a:Lk/e/a/x;

    move-object/from16 v19, v0

    const/4 v0, 0x7

    .line 538
    invoke-virtual {v15, v0, v1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 539
    iget v0, v1, Lk/e/a/w;->a:I

    invoke-virtual {v9, v0}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 540
    iget-object v0, v12, Lk/e/a/u;->n:Lk/e/a/c;

    invoke-virtual {v0, v3}, Lk/e/a/c;->d(I)Lk/e/a/c;

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v3, :cond_2c

    .line 541
    aget-object v1, v4, v0

    .line 542
    iget-object v9, v12, Lk/e/a/u;->n:Lk/e/a/c;

    iget-object v15, v12, Lk/e/a/u;->a:Lk/e/a/x;

    invoke-virtual {v15, v1}, Lk/e/a/x;->a(Ljava/lang/String;)Lk/e/a/w;

    move-result-object v1

    iget v1, v1, Lk/e/a/w;->a:I

    invoke-virtual {v9, v1}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 543
    :cond_2c
    iget v0, v12, Lk/e/a/u;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v12, Lk/e/a/u;->m:I

    move v1, v2

    move-object/from16 v0, v19

    goto :goto_1c

    :cond_2d
    move-object/from16 v21, v4

    :cond_2e
    move-object/from16 v5, v22

    if-eqz v5, :cond_2f

    .line 544
    iget-object v0, v6, Lk/e/a/g;->b:Lk/e/a/x;

    const/4 v1, 0x7

    .line 545
    invoke-virtual {v0, v1, v5}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v0

    .line 546
    iget v0, v0, Lk/e/a/w;->a:I

    iput v0, v6, Lk/e/a/g;->x:I

    :cond_2f
    move/from16 v0, v23

    if-eqz v0, :cond_32

    .line 547
    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 548
    invoke-virtual {v14, v0}, Lk/e/a/d;->e(I)I

    move-result v0

    if-nez v0, :cond_30

    const/4 v5, 0x0

    goto :goto_1f

    .line 549
    :cond_30
    iget-object v2, v14, Lk/e/a/d;->b:[I

    aget v2, v2, v0

    invoke-virtual {v14, v2, v7}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v5

    :goto_1f
    if-nez v0, :cond_31

    const/4 v0, 0x0

    goto :goto_20

    .line 550
    :cond_31
    iget-object v2, v14, Lk/e/a/d;->b:[I

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_20
    iget-object v2, v6, Lk/e/a/g;->b:Lk/e/a/x;

    const/4 v3, 0x7

    .line 552
    invoke-virtual {v2, v3, v1}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v1

    .line 553
    iget v1, v1, Lk/e/a/w;->a:I

    iput v1, v6, Lk/e/a/g;->n:I

    if-eqz v5, :cond_32

    if-eqz v0, :cond_32

    .line 554
    iget-object v1, v6, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v1, v5, v0}, Lk/e/a/x;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lk/e/a/g;->o:I

    :cond_32
    move/from16 v0, v24

    if-eqz v0, :cond_33

    .line 555
    invoke-virtual {v14, v0}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v24, v0, 0x2

    move/from16 v0, v24

    :goto_21
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_33

    .line 556
    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x1

    .line 557
    invoke-virtual {v6, v1, v3}, Lk/e/a/f;->a(Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v1

    .line 558
    invoke-virtual {v14, v1, v0, v3, v7}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_21

    :cond_33
    move/from16 v0, v25

    if-eqz v0, :cond_34

    .line 559
    invoke-virtual {v14, v0}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v25, v0, 0x2

    move/from16 v0, v25

    :goto_22
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_34

    .line 560
    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    .line 561
    invoke-virtual {v6, v1, v3}, Lk/e/a/f;->a(Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v1

    const/4 v3, 0x1

    .line 562
    invoke-virtual {v14, v1, v0, v3, v7}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_22

    :cond_34
    move/from16 v0, v26

    if-eqz v0, :cond_35

    .line 563
    invoke-virtual {v14, v0}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v26, v0, 0x2

    move/from16 v0, v26

    :goto_23
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_35

    .line 564
    invoke-virtual {v14, v13, v0}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v0

    .line 565
    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 566
    iget v3, v13, Lk/e/a/i;->h:I

    iget-object v4, v13, Lk/e/a/i;->i:Lk/e/a/z;

    const/4 v5, 0x1

    .line 567
    invoke-virtual {v6, v3, v4, v1, v5}, Lk/e/a/f;->a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v1

    .line 568
    invoke-virtual {v14, v1, v0, v5, v7}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_23

    :cond_35
    move/from16 v0, v27

    if-eqz v0, :cond_36

    .line 569
    invoke-virtual {v14, v0}, Lk/e/a/d;->e(I)I

    move-result v1

    add-int/lit8 v27, v0, 0x2

    move/from16 v0, v27

    :goto_24
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_36

    .line 570
    invoke-virtual {v14, v13, v0}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v0

    .line 571
    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    .line 572
    iget v3, v13, Lk/e/a/i;->h:I

    iget-object v4, v13, Lk/e/a/i;->i:Lk/e/a/z;

    const/4 v5, 0x0

    .line 573
    invoke-virtual {v6, v3, v4, v1, v5}, Lk/e/a/f;->a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v1

    const/4 v3, 0x1

    .line 574
    invoke-virtual {v14, v1, v0, v3, v7}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v0

    move v1, v2

    goto :goto_24

    :cond_36
    const/4 v5, 0x0

    move-object/from16 v12, v36

    :goto_25
    if-eqz v12, :cond_37

    .line 575
    iget-object v0, v12, Lk/e/a/b;->c:Lk/e/a/b;

    const/4 v1, 0x0

    .line 576
    iput-object v1, v12, Lk/e/a/b;->c:Lk/e/a/b;

    .line 577
    iget-object v2, v6, Lk/e/a/g;->A:Lk/e/a/b;

    iput-object v2, v12, Lk/e/a/b;->c:Lk/e/a/b;

    .line 578
    iput-object v12, v6, Lk/e/a/g;->A:Lk/e/a/b;

    move-object v12, v0

    goto :goto_25

    :cond_37
    move/from16 v0, v28

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 579
    invoke-virtual {v14, v0}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v28, v0, 0x2

    move/from16 v0, v28

    :goto_26
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_39

    .line 580
    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v2

    .line 581
    iget-object v4, v6, Lk/e/a/g;->z:Lk/e/a/c;

    if-nez v4, :cond_38

    .line 582
    new-instance v4, Lk/e/a/c;

    invoke-direct {v4}, Lk/e/a/c;-><init>()V

    iput-object v4, v6, Lk/e/a/g;->z:Lk/e/a/c;

    .line 583
    :cond_38
    iget v4, v6, Lk/e/a/g;->y:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v6, Lk/e/a/g;->y:I

    .line 584
    iget-object v4, v6, Lk/e/a/g;->z:Lk/e/a/c;

    iget-object v9, v6, Lk/e/a/g;->b:Lk/e/a/x;

    const/4 v12, 0x7

    .line 585
    invoke-virtual {v9, v12, v2}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v2

    .line 586
    iget v2, v2, Lk/e/a/w;->a:I

    invoke-virtual {v4, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v0, v0, 0x2

    move v2, v3

    goto :goto_26

    :cond_39
    move/from16 v0, v29

    if-eqz v0, :cond_3e

    .line 587
    invoke-virtual {v14, v0}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v29, v0, 0x2

    move/from16 v0, v29

    :goto_27
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_3e

    .line 588
    invoke-virtual {v14, v0, v7}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v0, 0x2

    .line 589
    invoke-virtual {v14, v4, v7}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v0, 0x4

    .line 590
    invoke-virtual {v14, v9, v7}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v12, v0, 0x6

    .line 591
    invoke-virtual {v14, v12}, Lk/e/a/d;->e(I)I

    move-result v12

    .line 592
    iget-object v15, v6, Lk/e/a/g;->m:Lk/e/a/c;

    if-nez v15, :cond_3a

    .line 593
    new-instance v15, Lk/e/a/c;

    invoke-direct {v15}, Lk/e/a/c;-><init>()V

    iput-object v15, v6, Lk/e/a/g;->m:Lk/e/a/c;

    .line 594
    :cond_3a
    iget-object v15, v6, Lk/e/a/g;->b:Lk/e/a/x;

    const/4 v1, 0x7

    .line 595
    invoke-virtual {v15, v1, v2}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v2

    .line 596
    iget v1, v2, Lk/e/a/w;->g:I

    if-nez v1, :cond_3d

    .line 597
    iget v1, v6, Lk/e/a/g;->l:I

    const/4 v15, 0x1

    add-int/2addr v1, v15

    iput v1, v6, Lk/e/a/g;->l:I

    .line 598
    iget-object v1, v6, Lk/e/a/g;->m:Lk/e/a/c;

    iget v5, v2, Lk/e/a/w;->a:I

    invoke-virtual {v1, v5}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 599
    iget-object v1, v6, Lk/e/a/g;->m:Lk/e/a/c;

    if-nez v4, :cond_3b

    const/4 v4, 0x0

    const/4 v15, 0x7

    goto :goto_28

    :cond_3b
    iget-object v5, v6, Lk/e/a/g;->b:Lk/e/a/x;

    const/4 v15, 0x7

    .line 600
    invoke-virtual {v5, v15, v4}, Lk/e/a/x;->a(ILjava/lang/String;)Lk/e/a/w;

    move-result-object v4

    .line 601
    iget v4, v4, Lk/e/a/w;->a:I

    :goto_28
    invoke-virtual {v1, v4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 602
    iget-object v1, v6, Lk/e/a/g;->m:Lk/e/a/c;

    if-nez v9, :cond_3c

    const/4 v4, 0x0

    goto :goto_29

    :cond_3c
    iget-object v4, v6, Lk/e/a/g;->b:Lk/e/a/x;

    invoke-virtual {v4, v9}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v4

    :goto_29
    invoke-virtual {v1, v4}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 603
    iget-object v1, v6, Lk/e/a/g;->m:Lk/e/a/c;

    invoke-virtual {v1, v12}, Lk/e/a/c;->d(I)Lk/e/a/c;

    .line 604
    iget v1, v6, Lk/e/a/g;->l:I

    iput v1, v2, Lk/e/a/w;->g:I

    goto :goto_2a

    :cond_3d
    const/4 v15, 0x7

    :goto_2a
    add-int/lit8 v0, v0, 0x8

    move v2, v3

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_27

    .line 605
    :cond_3e
    invoke-virtual {v14, v8}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 v1, v8, 0x2

    :goto_2b
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4f

    .line 606
    iget-object v0, v13, Lk/e/a/i;->c:[C

    .line 607
    invoke-virtual {v14, v1}, Lk/e/a/d;->e(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x2

    .line 608
    invoke-virtual {v14, v4, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v25

    add-int/lit8 v4, v1, 0x4

    .line 609
    invoke-virtual {v14, v4, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v26

    add-int/lit8 v1, v1, 0x6

    .line 610
    invoke-virtual {v14, v1}, Lk/e/a/d;->e(I)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    move v9, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_2c
    add-int/lit8 v16, v4, -0x1

    if-lez v4, :cond_48

    .line 611
    invoke-virtual {v14, v1, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v8, v1, 0x2

    .line 612
    invoke-virtual {v14, v8}, Lk/e/a/d;->b(I)I

    move-result v19

    add-int/lit8 v1, v1, 0x6

    const-string v8, "ConstantValue"

    .line 613
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 614
    invoke-virtual {v14, v1}, Lk/e/a/d;->e(I)I

    move-result v4

    if-nez v4, :cond_3f

    move-object/from16 v8, v38

    const/16 v28, 0x0

    goto :goto_2e

    .line 615
    :cond_3f
    invoke-virtual {v14, v4, v0}, Lk/e/a/d;->b(I[C)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v4

    move-object/from16 v8, v38

    goto :goto_2e

    :cond_40
    move-object/from16 v8, v38

    .line 616
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_41

    .line 617
    invoke-virtual {v14, v1, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v27

    goto :goto_2e

    .line 618
    :cond_41
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_42

    or-int v4, v9, v30

    :goto_2d
    move v9, v4

    goto :goto_2e

    .line 619
    :cond_42
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_43

    or-int/lit16 v4, v9, 0x1000

    goto :goto_2d

    :goto_2e
    move/from16 v20, v2

    move/from16 p1, v15

    move-object/from16 v15, v21

    move-object/from16 v2, p2

    goto :goto_30

    :cond_43
    move/from16 p1, v15

    move-object/from16 v15, v21

    .line 620
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_44

    move-object/from16 v44, p2

    move v3, v1

    move/from16 v20, v2

    move-object/from16 v39, v8

    move-object/from16 v21, v10

    move-object/from16 v43, v13

    move-object v4, v14

    move-object/from16 v45, v15

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    const/4 v2, 0x1

    move/from16 v15, p1

    move-object/from16 v18, v11

    goto/16 :goto_32

    :cond_44
    move/from16 v20, v2

    move-object/from16 v2, v17

    .line 621
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_45

    move v4, v1

    move-object/from16 v17, v2

    move-object/from16 v2, v18

    goto :goto_2f

    :cond_45
    move-object/from16 v17, v2

    move-object/from16 v2, v18

    .line 622
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_46

    move/from16 v4, p1

    move v7, v1

    :goto_2f
    move-object/from16 v18, v2

    move-object/from16 v2, p2

    goto :goto_31

    :cond_46
    move-object/from16 v18, v2

    move-object/from16 v2, p2

    .line 623
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_47

    move v12, v1

    :goto_30
    move/from16 v4, p1

    :goto_31
    move-object/from16 v44, v2

    move-object/from16 v39, v8

    move-object/from16 v21, v10

    move-object/from16 v43, v13

    move-object/from16 v45, v15

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    const/4 v2, 0x1

    move v15, v4

    move-object/from16 v18, v11

    move-object v4, v14

    goto :goto_32

    :cond_47
    move-object/from16 p2, v2

    .line 624
    iget-object v2, v13, Lk/e/a/i;->a:[Lk/e/a/b;

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v39, v8

    move-object v8, v14

    move-object/from16 v40, v17

    move/from16 v17, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v4

    move-object v4, v11

    move v11, v1

    move/from16 v42, v12

    move-object/from16 v41, v18

    move/from16 v12, v19

    move-object/from16 v43, v13

    move-object v13, v0

    move-object/from16 v44, p2

    move-object/from16 v18, v4

    move-object v4, v14

    move/from16 v14, v21

    move-object/from16 v21, v2

    move-object/from16 v45, v15

    const/4 v2, 0x1

    move-object/from16 v15, v22

    .line 625
    invoke-virtual/range {v8 .. v15}, Lk/e/a/d;->a([Lk/e/a/b;Ljava/lang/String;II[CI[Lk/e/a/q;)Lk/e/a/b;

    move-result-object v8

    .line 626
    iput-object v5, v8, Lk/e/a/b;->c:Lk/e/a/b;

    move/from16 v15, p1

    move-object v5, v8

    move/from16 v9, v17

    move/from16 v12, v42

    :goto_32
    add-int v1, v1, v19

    move-object v14, v4

    move/from16 v4, v16

    move-object/from16 v11, v18

    move/from16 v2, v20

    move-object/from16 v10, v21

    move-object/from16 v38, v39

    move-object/from16 v17, v40

    move-object/from16 v18, v41

    move-object/from16 v13, v43

    move-object/from16 p2, v44

    move-object/from16 v21, v45

    goto/16 :goto_2c

    :cond_48
    move-object/from16 v44, p2

    move/from16 v20, v2

    move/from16 v42, v12

    move-object/from16 v43, v13

    move-object v4, v14

    move/from16 p1, v15

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    move-object/from16 v45, v21

    move-object/from16 v39, v38

    const/4 v2, 0x1

    move/from16 v17, v9

    move-object/from16 v21, v10

    move-object/from16 v18, v11

    .line 627
    new-instance v8, Lk/e/a/m;

    iget-object v9, v6, Lk/e/a/g;->b:Lk/e/a/x;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v17

    invoke-direct/range {v22 .. v28}, Lk/e/a/m;-><init>(Lk/e/a/x;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    iget-object v9, v6, Lk/e/a/g;->h:Lk/e/a/m;

    if-nez v9, :cond_49

    .line 629
    iput-object v8, v6, Lk/e/a/g;->h:Lk/e/a/m;

    goto :goto_33

    .line 630
    :cond_49
    iget-object v9, v6, Lk/e/a/g;->i:Lk/e/a/m;

    iput-object v8, v9, Lk/e/a/l;->a:Lk/e/a/l;

    .line 631
    :goto_33
    iput-object v8, v6, Lk/e/a/g;->i:Lk/e/a/m;

    if-eqz v3, :cond_4a

    .line 632
    invoke-virtual {v4, v3}, Lk/e/a/d;->e(I)I

    move-result v9

    add-int/lit8 v3, v3, 0x2

    :goto_34
    add-int/lit8 v10, v9, -0x1

    if-lez v9, :cond_4a

    .line 633
    invoke-virtual {v4, v3, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v3, v3, 0x2

    .line 634
    invoke-virtual {v8, v9, v2}, Lk/e/a/l;->a(Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v9

    .line 635
    invoke-virtual {v4, v9, v3, v2, v0}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v3

    move v9, v10

    goto :goto_34

    :cond_4a
    if-eqz v7, :cond_4b

    .line 636
    invoke-virtual {v4, v7}, Lk/e/a/d;->e(I)I

    move-result v3

    add-int/lit8 v7, v7, 0x2

    :goto_35
    add-int/lit8 v9, v3, -0x1

    if-lez v3, :cond_4b

    .line 637
    invoke-virtual {v4, v7, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v7, 0x2

    const/4 v15, 0x0

    .line 638
    invoke-virtual {v8, v3, v15}, Lk/e/a/l;->a(Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v3

    .line 639
    invoke-virtual {v4, v3, v7, v2, v0}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v7

    move v3, v9

    goto :goto_35

    :cond_4b
    const/4 v15, 0x0

    if-eqz p1, :cond_4c

    move/from16 v3, p1

    .line 640
    invoke-virtual {v4, v3}, Lk/e/a/d;->e(I)I

    move-result v7

    add-int/lit8 v3, v3, 0x2

    :goto_36
    add-int/lit8 v9, v7, -0x1

    if-lez v7, :cond_4c

    move-object/from16 v7, v43

    .line 641
    invoke-virtual {v4, v7, v3}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v3

    .line 642
    invoke-virtual {v4, v3, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v3, v3, 0x2

    .line 643
    iget v11, v7, Lk/e/a/i;->h:I

    iget-object v12, v7, Lk/e/a/i;->i:Lk/e/a/z;

    .line 644
    invoke-virtual {v8, v11, v12, v10, v2}, Lk/e/a/l;->a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v10

    .line 645
    invoke-virtual {v4, v10, v3, v2, v0}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v3

    move v7, v9

    goto :goto_36

    :cond_4c
    move-object/from16 v7, v43

    move/from16 v12, v42

    if-eqz v12, :cond_4d

    .line 646
    invoke-virtual {v4, v12}, Lk/e/a/d;->e(I)I

    move-result v3

    add-int/lit8 v12, v12, 0x2

    :goto_37
    add-int/lit8 v9, v3, -0x1

    if-lez v3, :cond_4d

    .line 647
    invoke-virtual {v4, v7, v12}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v3

    .line 648
    invoke-virtual {v4, v3, v0}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v3, v3, 0x2

    .line 649
    iget v11, v7, Lk/e/a/i;->h:I

    iget-object v12, v7, Lk/e/a/i;->i:Lk/e/a/z;

    .line 650
    invoke-virtual {v8, v11, v12, v10, v15}, Lk/e/a/l;->a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v10

    .line 651
    invoke-virtual {v4, v10, v3, v2, v0}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v12

    move v3, v9

    goto :goto_37

    :cond_4d
    :goto_38
    if-eqz v5, :cond_4e

    .line 652
    iget-object v0, v5, Lk/e/a/b;->c:Lk/e/a/b;

    const/4 v3, 0x0

    .line 653
    iput-object v3, v5, Lk/e/a/b;->c:Lk/e/a/b;

    .line 654
    iget-object v9, v8, Lk/e/a/m;->l:Lk/e/a/b;

    iput-object v9, v5, Lk/e/a/b;->c:Lk/e/a/b;

    .line 655
    iput-object v5, v8, Lk/e/a/m;->l:Lk/e/a/b;

    move-object v5, v0

    goto :goto_38

    :cond_4e
    move-object v14, v4

    move-object v13, v7

    move-object/from16 v11, v18

    move/from16 v0, v20

    move-object/from16 v10, v21

    move-object/from16 v38, v39

    move-object/from16 v17, v40

    move-object/from16 v18, v41

    move-object/from16 p2, v44

    move-object/from16 v21, v45

    goto/16 :goto_2b

    :cond_4f
    move-object/from16 v44, p2

    move-object v7, v13

    move-object v4, v14

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    move-object/from16 v45, v21

    move-object/from16 v39, v38

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v15, 0x0

    move-object/from16 v21, v10

    move-object/from16 v18, v11

    .line 656
    invoke-virtual {v4, v1}, Lk/e/a/d;->e(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    move v5, v1

    :goto_39
    add-int/lit8 v16, v0, -0x1

    if-lez v0, :cond_77

    .line 657
    iget-object v1, v7, Lk/e/a/i;->c:[C

    .line 658
    invoke-virtual {v4, v5}, Lk/e/a/d;->e(I)I

    move-result v0

    iput v0, v7, Lk/e/a/i;->d:I

    add-int/lit8 v0, v5, 0x2

    .line 659
    invoke-virtual {v4, v0, v1}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lk/e/a/i;->e:Ljava/lang/String;

    add-int/lit8 v0, v5, 0x4

    .line 660
    invoke-virtual {v4, v0, v1}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lk/e/a/i;->f:Ljava/lang/String;

    add-int/lit8 v14, v5, 0x6

    .line 661
    invoke-virtual {v4, v14}, Lk/e/a/d;->e(I)I

    move-result v8

    add-int/lit8 v9, v14, 0x2

    move-object v13, v3

    move-object/from16 v17, v13

    move/from16 v19, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    :goto_3a
    add-int/lit8 v20, v19, -0x1

    if-lez v19, :cond_5f

    .line 662
    invoke-virtual {v4, v9, v1}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v15, v9, 0x2

    .line 663
    invoke-virtual {v4, v15}, Lk/e/a/d;->b(I)I

    move-result v19

    add-int/lit8 v15, v9, 0x6

    const-string v9, "Code"

    .line 664
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 665
    iget v3, v7, Lk/e/a/i;->b:I

    and-int/2addr v3, v2

    if-nez v3, :cond_50

    move/from16 p2, v0

    move/from16 p1, v14

    move/from16 v53, v15

    move-object/from16 v9, v21

    move-object/from16 v2, v39

    goto :goto_3d

    :cond_50
    move-object/from16 v9, v21

    move-object/from16 v2, v39

    goto :goto_3c

    :cond_51
    const-string v9, "Exceptions"

    .line 666
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 667
    invoke-virtual {v4, v15}, Lk/e/a/d;->e(I)I

    move-result v3

    new-array v9, v3, [Ljava/lang/String;

    add-int/lit8 v11, v15, 0x2

    move v2, v11

    const/4 v11, 0x0

    :goto_3b
    if-ge v11, v3, :cond_52

    .line 668
    invoke-virtual {v4, v2, v1}, Lk/e/a/d;->a(I[C)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v9, v11

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    :cond_52
    move-object/from16 v17, v9

    move/from16 p1, v14

    move v11, v15

    move-object/from16 v9, v21

    move-object/from16 v2, v39

    move-object/from16 v14, v45

    goto :goto_3e

    :cond_53
    move-object/from16 v2, v39

    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 670
    invoke-virtual {v4, v15}, Lk/e/a/d;->e(I)I

    move-result v12

    move-object/from16 v9, v21

    goto :goto_3c

    :cond_54
    move-object/from16 v9, v21

    .line 671
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_55

    .line 672
    iget v3, v7, Lk/e/a/i;->d:I

    or-int v3, v3, v30

    iput v3, v7, Lk/e/a/i;->d:I

    :goto_3c
    move/from16 p2, v0

    move/from16 p1, v14

    :goto_3d
    move-object/from16 v14, v44

    move-object/from16 v21, v45

    goto/16 :goto_41

    :cond_55
    move/from16 p1, v14

    move-object/from16 v14, v45

    .line 673
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_56

    move/from16 v46, v15

    :goto_3e
    move/from16 p2, v0

    move-object/from16 v21, v14

    goto :goto_40

    :cond_56
    move-object/from16 v21, v14

    move-object/from16 v14, v40

    .line 674
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_57

    move/from16 p2, v0

    move/from16 v49, v15

    goto :goto_3f

    :cond_57
    move/from16 p2, v0

    const-string v0, "AnnotationDefault"

    .line 675
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    move v10, v15

    :goto_3f
    move-object/from16 v40, v14

    :goto_40
    move-object/from16 v14, v44

    goto/16 :goto_41

    :cond_58
    move-object/from16 v0, v18

    .line 676
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_59

    .line 677
    iget v3, v7, Lk/e/a/i;->d:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, v7, Lk/e/a/i;->d:I

    move/from16 v6, p1

    move-object/from16 v18, v0

    move-object/from16 v24, v9

    move-object/from16 v26, v14

    move/from16 v22, v15

    move-object/from16 v27, v21

    move-object/from16 v25, v41

    move-object/from16 v21, v44

    const/16 v47, 0x1

    goto/16 :goto_42

    :cond_59
    move-object/from16 v40, v14

    move-object/from16 v14, v41

    .line 678
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5a

    move-object/from16 v18, v0

    move-object/from16 v41, v14

    move/from16 v48, v15

    goto :goto_40

    :cond_5a
    move-object/from16 v41, v14

    move-object/from16 v14, v44

    .line 679
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5b

    move-object/from16 v18, v0

    move/from16 v50, v15

    goto :goto_41

    :cond_5b
    move-object/from16 v18, v0

    const-string v0, "RuntimeVisibleParameterAnnotations"

    .line 680
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    move/from16 v51, v15

    goto :goto_41

    :cond_5c
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    .line 681
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    move/from16 v52, v15

    goto :goto_41

    :cond_5d
    const-string v0, "MethodParameters"

    .line 682
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v8, v15

    :goto_41
    move/from16 v6, p1

    move-object/from16 v24, v9

    move/from16 v22, v15

    move-object/from16 v27, v21

    move-object/from16 v26, v40

    move-object/from16 v25, v41

    move-object/from16 v21, v14

    goto :goto_42

    .line 683
    :cond_5e
    iget-object v0, v7, Lk/e/a/i;->a:[Lk/e/a/b;

    const/16 v22, -0x1

    const/16 v23, 0x0

    move/from16 v54, v8

    move-object v8, v4

    move-object/from16 v24, v9

    move-object v9, v0

    move v0, v10

    move-object v10, v3

    move v3, v11

    move v11, v15

    move/from16 v55, v12

    move/from16 v12, v19

    move-object/from16 v56, v13

    move-object v13, v1

    move/from16 v6, p1

    move-object/from16 v27, v21

    move-object/from16 v26, v40

    move-object/from16 v25, v41

    move-object/from16 v21, v14

    move/from16 v14, v22

    move/from16 v22, v15

    move-object/from16 v15, v23

    .line 684
    invoke-virtual/range {v8 .. v15}, Lk/e/a/d;->a([Lk/e/a/b;Ljava/lang/String;II[CI[Lk/e/a/q;)Lk/e/a/b;

    move-result-object v8

    move-object/from16 v10, v56

    .line 685
    iput-object v10, v8, Lk/e/a/b;->c:Lk/e/a/b;

    move v10, v0

    move v11, v3

    move-object v13, v8

    move/from16 v8, v54

    move/from16 v12, v55

    :goto_42
    add-int v9, v22, v19

    move/from16 v0, p2

    move-object/from16 v39, v2

    move v14, v6

    move/from16 v19, v20

    move-object/from16 v44, v21

    move-object/from16 v21, v24

    move-object/from16 v41, v25

    move-object/from16 v40, v26

    move-object/from16 v45, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p0

    goto/16 :goto_3a

    :cond_5f
    move/from16 p2, v0

    move/from16 v54, v8

    move v0, v10

    move v3, v11

    move/from16 v55, v12

    move-object v10, v13

    move v6, v14

    move-object/from16 v24, v21

    move-object/from16 v2, v39

    move-object/from16 v26, v40

    move-object/from16 v25, v41

    move-object/from16 v21, v44

    move-object/from16 v27, v45

    .line 686
    iget v8, v7, Lk/e/a/i;->d:I

    iget-object v11, v7, Lk/e/a/i;->e:Ljava/lang/String;

    iget-object v12, v7, Lk/e/a/i;->f:Ljava/lang/String;

    move/from16 v15, v55

    if-nez v15, :cond_60

    move v14, v0

    move-object/from16 v56, v10

    const/4 v13, 0x0

    goto :goto_43

    .line 687
    :cond_60
    invoke-virtual {v4, v15, v1}, Lk/e/a/d;->f(I[C)Ljava/lang/String;

    move-result-object v13

    move v14, v0

    move-object/from16 v56, v10

    :goto_43
    move/from16 v10, p2

    move-object/from16 v0, p0

    move/from16 p1, v14

    move-object v14, v1

    move v1, v8

    move-object/from16 v19, v2

    const/4 v8, 0x1

    move-object v2, v11

    move v11, v3

    move-object v3, v12

    move-object v12, v4

    move-object/from16 v20, v27

    move-object v4, v13

    move v13, v5

    move-object/from16 v5, v17

    .line 688
    invoke-virtual/range {v0 .. v5}, Lk/e/a/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lk/e/a/s;

    move-result-object v0

    .line 689
    move-object v1, v0

    check-cast v1, Lk/e/a/t;

    .line 690
    iget v2, v7, Lk/e/a/i;->d:I

    and-int v2, v2, v30

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    goto :goto_44

    :cond_61
    const/4 v2, 0x0

    .line 691
    :goto_44
    invoke-virtual {v12, v10}, Lk/e/a/d;->e(I)I

    move-result v3

    .line 692
    iget-object v4, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 693
    iget-object v4, v4, Lk/e/a/x;->b:Lk/e/a/d;

    if-ne v12, v4, :cond_69

    .line 694
    iget v4, v1, Lk/e/a/t;->g:I

    if-ne v3, v4, :cond_69

    iget v3, v1, Lk/e/a/t;->A:I

    if-ne v15, v3, :cond_69

    iget v3, v1, Lk/e/a/t;->d:I

    and-int v3, v3, v30

    if-eqz v3, :cond_62

    const/4 v3, 0x1

    goto :goto_45

    :cond_62
    const/4 v3, 0x0

    :goto_45
    if-eq v2, v3, :cond_63

    goto :goto_48

    .line 695
    :cond_63
    iget-object v2, v1, Lk/e/a/t;->c:Lk/e/a/x;

    .line 696
    iget v2, v2, Lk/e/a/x;->c:I

    const/16 v3, 0x31

    if-ge v2, v3, :cond_64

    .line 697
    iget v2, v1, Lk/e/a/t;->d:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_64

    move/from16 v15, v47

    const/4 v2, 0x1

    goto :goto_46

    :cond_64
    move/from16 v15, v47

    const/4 v2, 0x0

    :goto_46
    if-eq v15, v2, :cond_65

    goto :goto_48

    :cond_65
    if-nez v11, :cond_66

    .line 698
    iget v2, v1, Lk/e/a/t;->y:I

    if-eqz v2, :cond_68

    goto :goto_48

    .line 699
    :cond_66
    invoke-virtual {v12, v11}, Lk/e/a/d;->e(I)I

    move-result v2

    iget v3, v1, Lk/e/a/t;->y:I

    if-ne v2, v3, :cond_68

    add-int/lit8 v11, v11, 0x2

    const/4 v2, 0x0

    .line 700
    :goto_47
    iget v3, v1, Lk/e/a/t;->y:I

    if-ge v2, v3, :cond_68

    .line 701
    invoke-virtual {v12, v11}, Lk/e/a/d;->e(I)I

    move-result v3

    iget-object v4, v1, Lk/e/a/t;->z:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_67

    goto :goto_48

    :cond_67
    add-int/lit8 v11, v11, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_68
    const/4 v2, 0x1

    goto :goto_49

    :cond_69
    :goto_48
    const/4 v2, 0x0

    :goto_49
    if-eqz v2, :cond_6a

    sub-int v0, v9, v13

    .line 702
    iput v6, v1, Lk/e/a/t;->a0:I

    add-int/lit8 v0, v0, -0x6

    .line 703
    iput v0, v1, Lk/e/a/t;->b0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_52

    :cond_6a
    move/from16 v15, v54

    if-eqz v15, :cond_6d

    .line 704
    invoke-virtual {v12, v15}, Lk/e/a/d;->a(I)I

    move-result v2

    add-int/lit8 v3, v15, 0x1

    :goto_4a
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_6d

    .line 705
    invoke-virtual {v12, v3, v14}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v3, 0x2

    .line 706
    invoke-virtual {v12, v5}, Lk/e/a/d;->e(I)I

    move-result v5

    .line 707
    iget-object v6, v1, Lk/e/a/t;->L:Lk/e/a/c;

    if-nez v6, :cond_6b

    .line 708
    new-instance v6, Lk/e/a/c;

    invoke-direct {v6}, Lk/e/a/c;-><init>()V

    iput-object v6, v1, Lk/e/a/t;->L:Lk/e/a/c;

    .line 709
    :cond_6b
    iget v6, v1, Lk/e/a/t;->K:I

    add-int/2addr v6, v8

    iput v6, v1, Lk/e/a/t;->K:I

    .line 710
    iget-object v6, v1, Lk/e/a/t;->L:Lk/e/a/c;

    if-nez v2, :cond_6c

    const/4 v2, 0x0

    goto :goto_4b

    :cond_6c
    iget-object v10, v1, Lk/e/a/t;->c:Lk/e/a/x;

    invoke-virtual {v10, v2}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result v2

    :goto_4b
    invoke-virtual {v6, v2}, Lk/e/a/c;->d(I)Lk/e/a/c;

    invoke-virtual {v6, v5}, Lk/e/a/c;->d(I)Lk/e/a/c;

    add-int/lit8 v3, v3, 0x4

    move v2, v4

    goto :goto_4a

    :cond_6d
    if-eqz p1, :cond_6e

    .line 711
    new-instance v2, Lk/e/a/c;

    invoke-direct {v2}, Lk/e/a/c;-><init>()V

    iput-object v2, v1, Lk/e/a/t;->J:Lk/e/a/c;

    .line 712
    new-instance v3, Lk/e/a/a;

    iget-object v4, v1, Lk/e/a/t;->c:Lk/e/a/x;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v2, v5}, Lk/e/a/a;-><init>(Lk/e/a/x;ZLk/e/a/c;Lk/e/a/a;)V

    move/from16 v15, p1

    .line 713
    invoke-virtual {v12, v3, v15, v5, v14}, Lk/e/a/d;->a(Lk/e/a/a;ILjava/lang/String;[C)I

    .line 714
    invoke-virtual {v3}, Lk/e/a/a;->a()V

    goto :goto_4c

    :cond_6e
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4c
    move/from16 v15, v46

    if-eqz v15, :cond_6f

    .line 715
    invoke-virtual {v12, v15}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v46, v15, 0x2

    move/from16 v3, v46

    :goto_4d
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_6f

    .line 716
    invoke-virtual {v12, v3, v14}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x2

    .line 717
    invoke-virtual {v0, v2, v8}, Lk/e/a/s;->a(Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v2

    .line 718
    invoke-virtual {v12, v2, v3, v8, v14}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v3

    move v2, v4

    goto :goto_4d

    :cond_6f
    move/from16 v15, v48

    if-eqz v15, :cond_70

    .line 719
    invoke-virtual {v12, v15}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v48, v15, 0x2

    move/from16 v3, v48

    :goto_4e
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_70

    .line 720
    invoke-virtual {v12, v3, v14}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x2

    .line 721
    invoke-virtual {v0, v2, v6}, Lk/e/a/s;->a(Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v2

    .line 722
    invoke-virtual {v12, v2, v3, v8, v14}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v3

    move v2, v4

    goto :goto_4e

    :cond_70
    move/from16 v15, v49

    if-eqz v15, :cond_71

    .line 723
    invoke-virtual {v12, v15}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v49, v15, 0x2

    move/from16 v3, v49

    :goto_4f
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_71

    .line 724
    invoke-virtual {v12, v7, v3}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v2

    .line 725
    invoke-virtual {v12, v2, v14}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    .line 726
    iget v10, v7, Lk/e/a/i;->h:I

    iget-object v11, v7, Lk/e/a/i;->i:Lk/e/a/z;

    .line 727
    invoke-virtual {v0, v10, v11, v3, v8}, Lk/e/a/s;->b(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v3

    .line 728
    invoke-virtual {v12, v3, v2, v8, v14}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v3

    move v2, v4

    goto :goto_4f

    :cond_71
    move/from16 v15, v50

    if-eqz v15, :cond_72

    .line 729
    invoke-virtual {v12, v15}, Lk/e/a/d;->e(I)I

    move-result v2

    add-int/lit8 v50, v15, 0x2

    move/from16 v3, v50

    :goto_50
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_72

    .line 730
    invoke-virtual {v12, v7, v3}, Lk/e/a/d;->a(Lk/e/a/i;I)I

    move-result v2

    .line 731
    invoke-virtual {v12, v2, v14}, Lk/e/a/d;->e(I[C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2

    .line 732
    iget v10, v7, Lk/e/a/i;->h:I

    iget-object v11, v7, Lk/e/a/i;->i:Lk/e/a/z;

    .line 733
    invoke-virtual {v0, v10, v11, v3, v6}, Lk/e/a/s;->b(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;

    move-result-object v3

    .line 734
    invoke-virtual {v12, v3, v2, v8, v14}, Lk/e/a/d;->a(Lk/e/a/a;IZ[C)I

    move-result v3

    move v2, v4

    goto :goto_50

    :cond_72
    move/from16 v15, v51

    if-eqz v15, :cond_73

    .line 735
    invoke-virtual {v12, v0, v7, v15, v8}, Lk/e/a/d;->a(Lk/e/a/s;Lk/e/a/i;IZ)V

    :cond_73
    move/from16 v15, v52

    if-eqz v15, :cond_74

    .line 736
    invoke-virtual {v12, v0, v7, v15, v6}, Lk/e/a/d;->a(Lk/e/a/s;Lk/e/a/i;IZ)V

    :cond_74
    move-object/from16 v13, v56

    :goto_51
    if-eqz v13, :cond_75

    .line 737
    iget-object v2, v13, Lk/e/a/b;->c:Lk/e/a/b;

    .line 738
    iput-object v5, v13, Lk/e/a/b;->c:Lk/e/a/b;

    .line 739
    iget-object v3, v1, Lk/e/a/t;->M:Lk/e/a/b;

    iput-object v3, v13, Lk/e/a/b;->c:Lk/e/a/b;

    .line 740
    iput-object v13, v1, Lk/e/a/t;->M:Lk/e/a/b;

    move-object v13, v2

    goto :goto_51

    :cond_75
    move/from16 v15, v53

    if-eqz v15, :cond_76

    .line 741
    invoke-virtual {v12, v0, v7, v15}, Lk/e/a/d;->a(Lk/e/a/s;Lk/e/a/i;I)V

    :cond_76
    :goto_52
    const/4 v2, 0x1

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move-object v3, v5

    move v5, v9

    move-object v4, v12

    move/from16 v0, v16

    move-object/from16 v39, v19

    move-object/from16 v45, v20

    move-object/from16 v44, v21

    move-object/from16 v21, v24

    move-object/from16 v41, v25

    move-object/from16 v40, v26

    goto/16 :goto_39

    .line 742
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lk/e/a/g;->a()[B

    move-result-object v0

    return-object v0
.end method
