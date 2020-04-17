.class public Ld/g/a/h/g;
.super Ld/g/a/h/d;
.source "SourceFile"


# instance fields
.field public k0:F

.field public l0:I

.field public m0:I

.field public n0:Ld/g/a/h/c;

.field public o0:I

.field public p0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ld/g/a/h/d;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Ld/g/a/h/g;->k0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ld/g/a/h/g;->l0:I

    .line 4
    iput v0, p0, Ld/g/a/h/g;->m0:I

    .line 5
    iget-object v0, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iput-object v0, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ld/g/a/h/g;->o0:I

    .line 7
    iput-boolean v0, p0, Ld/g/a/h/g;->p0:Z

    .line 8
    iget-object v1, p0, Ld/g/a/h/d;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v1, p0, Ld/g/a/h/d;->B:Ljava/util/ArrayList;

    iget-object v2, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 11
    iget-object v2, p0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    iget-object v3, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ld/g/a/h/c$c;)Ld/g/a/h/c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :pswitch_1
    iget v0, p0, Ld/g/a/h/g;->o0:I

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    return-object p1

    .line 4
    :pswitch_2
    iget v0, p0, Ld/g/a/h/g;->o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    return-object p1

    .line 6
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 6

    .line 38
    iget-object p1, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget v0, p0, Ld/g/a/h/g;->o0:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 40
    iget-object v0, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 41
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 42
    iget-object v5, p1, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 43
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 44
    invoke-virtual {v0, v4, v5, v3}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 45
    iget-object v0, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    .line 46
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 47
    iget-object v5, p1, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 48
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 49
    invoke-virtual {v0, v4, v5, v3}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 50
    iget v0, p0, Ld/g/a/h/g;->l0:I

    if-eq v0, v2, :cond_1

    .line 51
    iget-object v1, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 52
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 53
    iget-object v2, p1, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 54
    iget-object v2, v2, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 55
    invoke-virtual {v1, v4, v2, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 56
    iget-object v0, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    .line 57
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 58
    iget-object p1, p1, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 59
    iget-object p1, p1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 60
    iget v1, p0, Ld/g/a/h/g;->l0:I

    invoke-virtual {v0, v4, p1, v1}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    goto/16 :goto_0

    .line 61
    :cond_1
    iget v0, p0, Ld/g/a/h/g;->m0:I

    if-eq v0, v2, :cond_2

    .line 62
    iget-object v1, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 63
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 64
    iget-object v2, p1, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    .line 65
    iget-object v2, v2, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    neg-int v0, v0

    .line 66
    invoke-virtual {v1, v4, v2, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 67
    iget-object v0, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    .line 68
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 69
    iget-object p1, p1, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    .line 70
    iget-object p1, p1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 71
    iget v1, p0, Ld/g/a/h/g;->m0:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    goto/16 :goto_0

    .line 72
    :cond_2
    iget v0, p0, Ld/g/a/h/g;->k0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ld/g/a/h/d;->e()Ld/g/a/h/d$a;

    move-result-object v0

    sget-object v1, Ld/g/a/h/d$a;->FIXED:Ld/g/a/h/d$a;

    if-ne v0, v1, :cond_6

    .line 73
    iget v0, p1, Ld/g/a/h/d;->E:I

    int-to-float v0, v0

    iget v1, p0, Ld/g/a/h/g;->k0:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 74
    iget-object v1, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 75
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 76
    iget-object v2, p1, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 77
    iget-object v2, v2, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 78
    invoke-virtual {v1, v4, v2, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 79
    iget-object v1, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    .line 80
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 81
    iget-object p1, p1, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 82
    iget-object p1, p1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 83
    invoke-virtual {v1, v4, p1, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    goto/16 :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 85
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 86
    iget-object v5, p1, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 87
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 88
    invoke-virtual {v0, v4, v5, v3}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 89
    iget-object v0, p0, Ld/g/a/h/d;->u:Ld/g/a/h/c;

    .line 90
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 91
    iget-object v5, p1, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    .line 92
    iget-object v5, v5, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 93
    invoke-virtual {v0, v4, v5, v3}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 94
    iget v0, p0, Ld/g/a/h/g;->l0:I

    if-eq v0, v2, :cond_4

    .line 95
    iget-object v1, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 96
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 97
    iget-object v2, p1, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 98
    iget-object v2, v2, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 99
    invoke-virtual {v1, v4, v2, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 100
    iget-object v0, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    .line 101
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 102
    iget-object p1, p1, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 103
    iget-object p1, p1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 104
    iget v1, p0, Ld/g/a/h/g;->l0:I

    invoke-virtual {v0, v4, p1, v1}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    goto :goto_0

    .line 105
    :cond_4
    iget v0, p0, Ld/g/a/h/g;->m0:I

    if-eq v0, v2, :cond_5

    .line 106
    iget-object v1, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 107
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 108
    iget-object v2, p1, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    .line 109
    iget-object v2, v2, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    neg-int v0, v0

    .line 110
    invoke-virtual {v1, v4, v2, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 111
    iget-object v0, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    .line 112
    iget-object v0, v0, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 113
    iget-object p1, p1, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    .line 114
    iget-object p1, p1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 115
    iget v1, p0, Ld/g/a/h/g;->m0:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    goto :goto_0

    .line 116
    :cond_5
    iget v0, p0, Ld/g/a/h/g;->k0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ld/g/a/h/d;->h()Ld/g/a/h/d$a;

    move-result-object v0

    sget-object v1, Ld/g/a/h/d$a;->FIXED:Ld/g/a/h/d$a;

    if-ne v0, v1, :cond_6

    .line 117
    iget v0, p1, Ld/g/a/h/d;->F:I

    int-to-float v0, v0

    iget v1, p0, Ld/g/a/h/g;->k0:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 118
    iget-object v1, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 119
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 120
    iget-object v2, p1, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 121
    iget-object v2, v2, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 122
    invoke-virtual {v1, v4, v2, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    .line 123
    iget-object v1, p0, Ld/g/a/h/d;->v:Ld/g/a/h/c;

    .line 124
    iget-object v1, v1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 125
    iget-object p1, p1, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    .line 126
    iget-object p1, p1, Ld/g/a/h/c;->a:Ld/g/a/h/j;

    .line 127
    invoke-virtual {v1, v4, p1, v0}, Ld/g/a/h/j;->a(ILd/g/a/h/j;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Ld/g/a/e;)V
    .locals 8

    .line 7
    iget-object v0, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    .line 8
    check-cast v0, Ld/g/a/h/e;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    sget-object v1, Ld/g/a/h/c$c;->LEFT:Ld/g/a/h/c$c;

    invoke-virtual {v0, v1}, Ld/g/a/h/d;->a(Ld/g/a/h/c$c;)Ld/g/a/h/c;

    move-result-object v1

    .line 10
    sget-object v2, Ld/g/a/h/c$c;->RIGHT:Ld/g/a/h/c$c;

    invoke-virtual {v0, v2}, Ld/g/a/h/d;->a(Ld/g/a/h/c$c;)Ld/g/a/h/c;

    move-result-object v2

    .line 11
    iget-object v3, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v3, v3, v5

    sget-object v6, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 12
    :goto_0
    iget v6, p0, Ld/g/a/h/g;->o0:I

    if-nez v6, :cond_3

    .line 13
    sget-object v1, Ld/g/a/h/c$c;->TOP:Ld/g/a/h/c$c;

    invoke-virtual {v0, v1}, Ld/g/a/h/d;->a(Ld/g/a/h/c$c;)Ld/g/a/h/c;

    move-result-object v1

    .line 14
    sget-object v2, Ld/g/a/h/c$c;->BOTTOM:Ld/g/a/h/c$c;

    invoke-virtual {v0, v2}, Ld/g/a/h/d;->a(Ld/g/a/h/c$c;)Ld/g/a/h/c;

    move-result-object v2

    .line 15
    iget-object v0, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ld/g/a/h/d;->C:[Ld/g/a/h/d$a;

    aget-object v0, v0, v4

    sget-object v3, Ld/g/a/h/d$a;->WRAP_CONTENT:Ld/g/a/h/d$a;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    .line 16
    :cond_3
    iget v0, p0, Ld/g/a/h/g;->l0:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    .line 17
    iget-object v0, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    invoke-virtual {p1, v0}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v1}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v1

    .line 19
    iget v6, p0, Ld/g/a/h/g;->l0:I

    invoke-virtual {p1, v0, v1, v6, v4}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;II)Ld/g/a/b;

    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {p1, v2}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    goto :goto_2

    .line 21
    :cond_4
    iget v0, p0, Ld/g/a/h/g;->m0:I

    if-eq v0, v6, :cond_5

    .line 22
    iget-object v0, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    invoke-virtual {p1, v0}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v0

    .line 23
    invoke-virtual {p1, v2}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v2

    .line 24
    iget v6, p0, Ld/g/a/h/g;->m0:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Ld/g/a/e;->a(Ld/g/a/g;Ld/g/a/g;II)Ld/g/a/b;

    if-eqz v3, :cond_7

    .line 25
    invoke-virtual {p1, v1}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    .line 26
    invoke-virtual {p1, v2, v0, v5, v7}, Ld/g/a/e;->b(Ld/g/a/g;Ld/g/a/g;II)V

    goto :goto_2

    .line 27
    :cond_5
    iget v0, p0, Ld/g/a/h/g;->k0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_7

    .line 28
    iget-object v0, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    invoke-virtual {p1, v0}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v0

    .line 29
    invoke-virtual {p1, v1}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v1

    .line 30
    invoke-virtual {p1, v2}, Ld/g/a/e;->a(Ljava/lang/Object;)Ld/g/a/g;

    move-result-object v2

    .line 31
    iget v4, p0, Ld/g/a/h/g;->k0:F

    iget-boolean v6, p0, Ld/g/a/h/g;->p0:Z

    .line 32
    invoke-virtual {p1}, Ld/g/a/e;->b()Ld/g/a/b;

    move-result-object v7

    if-eqz v6, :cond_6

    .line 33
    invoke-virtual {v7, p1, v5}, Ld/g/a/b;->a(Ld/g/a/e;I)Ld/g/a/b;

    .line 34
    :cond_6
    iget-object v5, v7, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v5, v0, v3}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 35
    iget-object v0, v7, Ld/g/a/b;->d:Ld/g/a/a;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 36
    iget-object v0, v7, Ld/g/a/b;->d:Ld/g/a/a;

    invoke-virtual {v0, v2, v4}, Ld/g/a/a;->a(Ld/g/a/g;F)V

    .line 37
    invoke-virtual {p1, v7}, Ld/g/a/e;->a(Ld/g/a/b;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld/g/a/h/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/g/a/h/d;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ld/g/a/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    invoke-virtual {p1, v0}, Ld/g/a/e;->b(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget v0, p0, Ld/g/a/h/g;->o0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iput p1, p0, Ld/g/a/h/d;->I:I

    .line 5
    iput v2, p0, Ld/g/a/h/d;->J:I

    .line 6
    iget-object p1, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    .line 7
    invoke-virtual {p1}, Ld/g/a/h/d;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Ld/g/a/h/d;->e(I)V

    .line 8
    invoke-virtual {p0, v2}, Ld/g/a/h/d;->f(I)V

    goto :goto_0

    .line 9
    :cond_1
    iput v2, p0, Ld/g/a/h/d;->I:I

    .line 10
    iput p1, p0, Ld/g/a/h/d;->J:I

    .line 11
    iget-object p1, p0, Ld/g/a/h/d;->D:Ld/g/a/h/d;

    .line 12
    invoke-virtual {p1}, Ld/g/a/h/d;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Ld/g/a/h/d;->f(I)V

    .line 13
    invoke-virtual {p0, v2}, Ld/g/a/h/d;->e(I)V

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1
    iget v0, p0, Ld/g/a/h/g;->o0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Ld/g/a/h/g;->o0:I

    .line 3
    iget-object p1, p0, Ld/g/a/h/d;->B:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Ld/g/a/h/g;->o0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Ld/g/a/h/d;->s:Ld/g/a/h/c;

    iput-object p1, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Ld/g/a/h/d;->t:Ld/g/a/h/c;

    iput-object p1, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    .line 7
    :goto_0
    iget-object p1, p0, Ld/g/a/h/d;->B:Ljava/util/ArrayList;

    iget-object v0, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Ld/g/a/h/d;->A:[Ld/g/a/h/c;

    iget-object v2, p0, Ld/g/a/h/g;->n0:Ld/g/a/h/c;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
