.class public abstract Le/e/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Le/e/a/v/c;

.field public final x:Le/e/a/a;

.field public final y:Le/e/a/h;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/e/a/e;->D:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Le/e/a/a;Le/e/a/h;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Le/e/a/v/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/e/a/a;",
            "Le/e/a/h;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Le/e/a/v/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iput-object p1, p0, Le/e/a/e;->x:Le/e/a/a;

    .line 3
    iput-object p2, p0, Le/e/a/e;->y:Le/e/a/h;

    .line 4
    iput-object p3, p0, Le/e/a/e;->z:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le/e/a/e;->A:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Le/e/a/e;->A:Ljava/util/Set;

    :goto_0
    if-eqz p5, :cond_1

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/e/a/e;->B:Ljava/util/Map;

    goto :goto_1

    .line 8
    :cond_1
    sget-object p1, Le/e/a/e;->D:Ljava/util/Map;

    iput-object p1, p0, Le/e/a/e;->B:Ljava/util/Map;

    .line 9
    :goto_1
    iput-object p6, p0, Le/e/a/e;->C:Le/e/a/v/c;

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The algorithm \"alg\" header parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Li/a/b/d;)Le/e/a/a;
    .locals 2

    const-string v0, "alg"

    .line 4
    invoke-static {p0, v0}, Le/c/a/a/b/l/c;->d(Li/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 5
    sget-object v1, Le/e/a/a;->y:Le/e/a/a;

    .line 6
    iget-object v1, v1, Le/e/a/a;->x:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    sget-object p0, Le/e/a/a;->y:Le/e/a/a;

    return-object p0

    :cond_0
    const-string v1, "enc"

    .line 9
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 10
    sget-object p0, Le/e/a/i;->z:Le/e/a/i;

    .line 11
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 13
    sget-object p0, Le/e/a/i;->z:Le/e/a/i;

    goto/16 :goto_0

    .line 14
    :cond_1
    sget-object p0, Le/e/a/i;->A:Le/e/a/i;

    .line 15
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 17
    sget-object p0, Le/e/a/i;->A:Le/e/a/i;

    goto/16 :goto_0

    .line 18
    :cond_2
    sget-object p0, Le/e/a/i;->B:Le/e/a/i;

    .line 19
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 21
    sget-object p0, Le/e/a/i;->B:Le/e/a/i;

    goto/16 :goto_0

    .line 22
    :cond_3
    sget-object p0, Le/e/a/i;->C:Le/e/a/i;

    .line 23
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 25
    sget-object p0, Le/e/a/i;->C:Le/e/a/i;

    goto/16 :goto_0

    .line 26
    :cond_4
    sget-object p0, Le/e/a/i;->D:Le/e/a/i;

    .line 27
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 29
    sget-object p0, Le/e/a/i;->D:Le/e/a/i;

    goto/16 :goto_0

    .line 30
    :cond_5
    sget-object p0, Le/e/a/i;->E:Le/e/a/i;

    .line 31
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 33
    sget-object p0, Le/e/a/i;->E:Le/e/a/i;

    goto/16 :goto_0

    .line 34
    :cond_6
    sget-object p0, Le/e/a/i;->F:Le/e/a/i;

    .line 35
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 37
    sget-object p0, Le/e/a/i;->F:Le/e/a/i;

    goto/16 :goto_0

    .line 38
    :cond_7
    sget-object p0, Le/e/a/i;->G:Le/e/a/i;

    .line 39
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 41
    sget-object p0, Le/e/a/i;->G:Le/e/a/i;

    goto/16 :goto_0

    .line 42
    :cond_8
    sget-object p0, Le/e/a/i;->H:Le/e/a/i;

    .line 43
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 45
    sget-object p0, Le/e/a/i;->H:Le/e/a/i;

    goto/16 :goto_0

    .line 46
    :cond_9
    sget-object p0, Le/e/a/i;->I:Le/e/a/i;

    .line 47
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 49
    sget-object p0, Le/e/a/i;->I:Le/e/a/i;

    goto :goto_0

    .line 50
    :cond_a
    sget-object p0, Le/e/a/i;->J:Le/e/a/i;

    .line 51
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 53
    sget-object p0, Le/e/a/i;->J:Le/e/a/i;

    goto :goto_0

    .line 54
    :cond_b
    sget-object p0, Le/e/a/i;->K:Le/e/a/i;

    .line 55
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 57
    sget-object p0, Le/e/a/i;->K:Le/e/a/i;

    goto :goto_0

    .line 58
    :cond_c
    sget-object p0, Le/e/a/i;->L:Le/e/a/i;

    .line 59
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 61
    sget-object p0, Le/e/a/i;->L:Le/e/a/i;

    goto :goto_0

    .line 62
    :cond_d
    sget-object p0, Le/e/a/i;->M:Le/e/a/i;

    .line 63
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 65
    sget-object p0, Le/e/a/i;->M:Le/e/a/i;

    goto :goto_0

    .line 66
    :cond_e
    sget-object p0, Le/e/a/i;->N:Le/e/a/i;

    .line 67
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 69
    sget-object p0, Le/e/a/i;->N:Le/e/a/i;

    goto :goto_0

    .line 70
    :cond_f
    sget-object p0, Le/e/a/i;->O:Le/e/a/i;

    .line 71
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 73
    sget-object p0, Le/e/a/i;->O:Le/e/a/i;

    goto :goto_0

    .line 74
    :cond_10
    sget-object p0, Le/e/a/i;->P:Le/e/a/i;

    .line 75
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 77
    sget-object p0, Le/e/a/i;->P:Le/e/a/i;

    goto :goto_0

    .line 78
    :cond_11
    new-instance p0, Le/e/a/i;

    invoke-direct {p0, v0}, Le/e/a/i;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0

    .line 79
    :cond_12
    sget-object p0, Le/e/a/l;->z:Le/e/a/l;

    .line 80
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 82
    sget-object p0, Le/e/a/l;->z:Le/e/a/l;

    goto/16 :goto_1

    .line 83
    :cond_13
    sget-object p0, Le/e/a/l;->A:Le/e/a/l;

    .line 84
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 86
    sget-object p0, Le/e/a/l;->A:Le/e/a/l;

    goto/16 :goto_1

    .line 87
    :cond_14
    sget-object p0, Le/e/a/l;->B:Le/e/a/l;

    .line 88
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 90
    sget-object p0, Le/e/a/l;->B:Le/e/a/l;

    goto/16 :goto_1

    .line 91
    :cond_15
    sget-object p0, Le/e/a/l;->C:Le/e/a/l;

    .line 92
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 94
    sget-object p0, Le/e/a/l;->C:Le/e/a/l;

    goto/16 :goto_1

    .line 95
    :cond_16
    sget-object p0, Le/e/a/l;->D:Le/e/a/l;

    .line 96
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 98
    sget-object p0, Le/e/a/l;->D:Le/e/a/l;

    goto/16 :goto_1

    .line 99
    :cond_17
    sget-object p0, Le/e/a/l;->E:Le/e/a/l;

    .line 100
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 102
    sget-object p0, Le/e/a/l;->E:Le/e/a/l;

    goto/16 :goto_1

    .line 103
    :cond_18
    sget-object p0, Le/e/a/l;->F:Le/e/a/l;

    .line 104
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 106
    sget-object p0, Le/e/a/l;->F:Le/e/a/l;

    goto :goto_1

    .line 107
    :cond_19
    sget-object p0, Le/e/a/l;->G:Le/e/a/l;

    .line 108
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 110
    sget-object p0, Le/e/a/l;->G:Le/e/a/l;

    goto :goto_1

    .line 111
    :cond_1a
    sget-object p0, Le/e/a/l;->H:Le/e/a/l;

    .line 112
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 114
    sget-object p0, Le/e/a/l;->H:Le/e/a/l;

    goto :goto_1

    .line 115
    :cond_1b
    sget-object p0, Le/e/a/l;->I:Le/e/a/l;

    .line 116
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 118
    sget-object p0, Le/e/a/l;->I:Le/e/a/l;

    goto :goto_1

    .line 119
    :cond_1c
    sget-object p0, Le/e/a/l;->J:Le/e/a/l;

    .line 120
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 122
    sget-object p0, Le/e/a/l;->J:Le/e/a/l;

    goto :goto_1

    .line 123
    :cond_1d
    sget-object p0, Le/e/a/l;->K:Le/e/a/l;

    .line 124
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 126
    sget-object p0, Le/e/a/l;->K:Le/e/a/l;

    goto :goto_1

    .line 127
    :cond_1e
    sget-object p0, Le/e/a/l;->L:Le/e/a/l;

    .line 128
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 130
    sget-object p0, Le/e/a/l;->L:Le/e/a/l;

    goto :goto_1

    .line 131
    :cond_1f
    sget-object p0, Le/e/a/l;->M:Le/e/a/l;

    .line 132
    iget-object p0, p0, Le/e/a/a;->x:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 134
    sget-object p0, Le/e/a/l;->M:Le/e/a/l;

    goto :goto_1

    .line 135
    :cond_20
    new-instance p0, Le/e/a/l;

    invoke-direct {p0, v0}, Le/e/a/l;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p0

    .line 136
    :cond_21
    new-instance p0, Ljava/text/ParseException;

    const/4 v0, 0x0

    const-string v1, "Missing \"alg\" in header JSON object"

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public a()Le/e/a/v/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/e/a/e;->C:Le/e/a/v/c;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/e/a/e;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Le/e/a/v/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Le/e/a/v/c;->a([B)Le/e/a/v/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b()Li/a/b/d;
    .locals 3

    .line 1
    new-instance v0, Li/a/b/d;

    iget-object v1, p0, Le/e/a/e;->B:Ljava/util/Map;

    invoke-direct {v0, v1}, Li/a/b/d;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object v1, p0, Le/e/a/e;->x:Le/e/a/a;

    .line 3
    iget-object v1, v1, Le/e/a/a;->x:Ljava/lang/String;

    const-string v2, "alg"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/e/a/e;->y:Le/e/a/h;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Le/e/a/h;->x:Ljava/lang/String;

    const-string v2, "typ"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object v1, p0, Le/e/a/e;->z:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "cty"

    .line 9
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object v1, p0, Le/e/a/e;->A:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/e/a/e;->A:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "crit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/e/a/e;->b()Li/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Li/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
