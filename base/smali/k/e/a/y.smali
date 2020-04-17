.class public final Lk/e/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lk/e/a/y;

.field public static final f:Lk/e/a/y;

.field public static final g:Lk/e/a/y;

.field public static final h:Lk/e/a/y;

.field public static final i:Lk/e/a/y;

.field public static final j:Lk/e/a/y;

.field public static final k:Lk/e/a/y;

.field public static final l:Lk/e/a/y;

.field public static final m:Lk/e/a/y;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk/e/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "VZCBSIFJD"

    invoke-direct {v0, v1, v3, v1, v2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->e:Lk/e/a/y;

    .line 2
    new-instance v0, Lk/e/a/y;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v3, v2, v1}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->f:Lk/e/a/y;

    .line 3
    new-instance v0, Lk/e/a/y;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v1, v2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->g:Lk/e/a/y;

    .line 4
    new-instance v0, Lk/e/a/y;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v3, v2, v1}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->h:Lk/e/a/y;

    .line 5
    new-instance v0, Lk/e/a/y;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v1, v2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->i:Lk/e/a/y;

    .line 6
    new-instance v0, Lk/e/a/y;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v3, v2, v1}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->j:Lk/e/a/y;

    .line 7
    new-instance v0, Lk/e/a/y;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v1, v2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->k:Lk/e/a/y;

    .line 8
    new-instance v0, Lk/e/a/y;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v3, v2, v1}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->l:Lk/e/a/y;

    .line 9
    new-instance v0, Lk/e/a/y;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v3, v1, v2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lk/e/a/y;->m:Lk/e/a/y;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lk/e/a/y;->a:I

    .line 3
    iput-object p2, p0, Lk/e/a/y;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lk/e/a/y;->c:I

    .line 5
    iput p4, p0, Lk/e/a/y;->d:I

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 5

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 33
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 34
    invoke-static {v4, v0}, Lk/e/a/y;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lk/e/a/y;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;II)Lk/e/a/y;
    .locals 2

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_8

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    const/16 v1, 0x56

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 13
    :pswitch_0
    sget-object p0, Lk/e/a/y;->m:Lk/e/a/y;

    return-object p0

    .line 14
    :pswitch_1
    sget-object p0, Lk/e/a/y;->g:Lk/e/a/y;

    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Lk/e/a/y;->h:Lk/e/a/y;

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lk/e/a/y;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1, p2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 17
    :cond_1
    sget-object p0, Lk/e/a/y;->f:Lk/e/a/y;

    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lk/e/a/y;->l:Lk/e/a/y;

    return-object p0

    .line 19
    :cond_3
    sget-object p0, Lk/e/a/y;->j:Lk/e/a/y;

    return-object p0

    .line 20
    :cond_4
    sget-object p0, Lk/e/a/y;->e:Lk/e/a/y;

    return-object p0

    .line 21
    :cond_5
    sget-object p0, Lk/e/a/y;->i:Lk/e/a/y;

    return-object p0

    .line 22
    :cond_6
    new-instance v0, Lk/e/a/y;

    const/16 v1, 0xa

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    return-object v0

    .line 23
    :cond_7
    sget-object p0, Lk/e/a/y;->k:Lk/e/a/y;

    return-object p0

    .line 24
    :cond_8
    new-instance v0, Lk/e/a/y;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0, p1, p2}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const/16 p0, 0x49

    goto :goto_1

    .line 43
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const/16 p0, 0x56

    goto :goto_1

    .line 44
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const/16 p0, 0x5a

    goto :goto_1

    .line 45
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const/16 p0, 0x42

    goto :goto_1

    .line 46
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const/16 p0, 0x43

    goto :goto_1

    .line 47
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/16 p0, 0x53

    goto :goto_1

    .line 48
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const/16 p0, 0x44

    goto :goto_1

    .line 49
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const/16 p0, 0x46

    goto :goto_1

    .line 50
    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    const/16 p0, 0x4a

    .line 51
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 52
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_a
    const/16 v0, 0x4c

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public static a(Ljava/lang/String;)[Lk/e/a/y;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    const/16 v6, 0x4c

    const/16 v7, 0x5b

    const/16 v8, 0x29

    if-eq v4, v8, :cond_2

    .line 2
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    .line 4
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_2

    :cond_1
    move v2, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-array v2, v3, [Lk/e/a/y;

    const/4 v3, 0x1

    .line 6
    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_5

    move v4, v3

    .line 7
    :goto_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v4, 0x1

    .line 8
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 9
    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v9, v4, 0x1

    :cond_4
    add-int/lit8 v4, v0, 0x1

    .line 10
    invoke-static {p0, v3, v9}, Lk/e/a/y;->a(Ljava/lang/String;II)Lk/e/a/y;

    move-result-object v3

    aput-object v3, v2, v0

    move v0, v4

    move v3, v9

    goto :goto_3

    :cond_5
    return-object v2
.end method

.method public static b(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x29

    const/16 v5, 0x44

    const/16 v6, 0x4a

    if-eq v1, v4, :cond_4

    if-eq v1, v6, :cond_3

    if-ne v1, v5, :cond_0

    goto :goto_2

    .line 26
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_2

    const/16 v2, 0x3b

    .line 28
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    .line 29
    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_4
    add-int/2addr v2, v0

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x56

    const/4 v2, 0x2

    if-ne p0, v1, :cond_5

    shl-int/lit8 p0, v3, 0x2

    return p0

    :cond_5
    if-eq p0, v6, :cond_6

    if-ne p0, v5, :cond_7

    :cond_6
    const/4 v0, 0x2

    :cond_7
    shl-int/lit8 p0, v3, 0x2

    or-int/2addr p0, v0

    return p0
.end method

.method public static b(Ljava/lang/Class;)Lk/e/a/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lk/e/a/y;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 3
    sget-object p0, Lk/e/a/y;->j:Lk/e/a/y;

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 5
    sget-object p0, Lk/e/a/y;->e:Lk/e/a/y;

    return-object p0

    .line 6
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 7
    sget-object p0, Lk/e/a/y;->f:Lk/e/a/y;

    return-object p0

    .line 8
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 9
    sget-object p0, Lk/e/a/y;->h:Lk/e/a/y;

    return-object p0

    .line 10
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 11
    sget-object p0, Lk/e/a/y;->g:Lk/e/a/y;

    return-object p0

    .line 12
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 13
    sget-object p0, Lk/e/a/y;->i:Lk/e/a/y;

    return-object p0

    .line 14
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 15
    sget-object p0, Lk/e/a/y;->m:Lk/e/a/y;

    return-object p0

    .line 16
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 17
    sget-object p0, Lk/e/a/y;->k:Lk/e/a/y;

    return-object p0

    .line 18
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 19
    sget-object p0, Lk/e/a/y;->l:Lk/e/a/y;

    return-object p0

    .line 20
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-static {p0, v0}, Lk/e/a/y;->a(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lk/e/a/y;->a(Ljava/lang/String;II)Lk/e/a/y;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lk/e/a/y;
    .locals 4

    .line 1
    new-instance v0, Lk/e/a/y;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v2, p0, v1, v3}, Lk/e/a/y;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2

    .line 2
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_1

    const/16 v1, 0x3b

    .line 4
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    add-int/2addr v1, v0

    return v1
.end method

.method public static e(Ljava/lang/String;)Lk/e/a/y;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lk/e/a/y;->a(Ljava/lang/String;II)Lk/e/a/y;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 26
    iget v0, p0, Lk/e/a/y;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lk/e/a/y;->b:Ljava/lang/String;

    iget v1, p0, Lk/e/a/y;->c:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lk/e/a/y;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/e/a/y;->b:Ljava/lang/String;

    iget v2, p0, Lk/e/a/y;->c:I

    iget v3, p0, Lk/e/a/y;->d:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lk/e/a/y;->b:Ljava/lang/String;

    iget v1, p0, Lk/e/a/y;->c:I

    iget v2, p0, Lk/e/a/y;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/e/a/y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lk/e/a/y;

    .line 3
    iget v1, p0, Lk/e/a/y;->a:I

    const/16 v3, 0xa

    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    const/16 v1, 0xa

    :cond_2
    iget v5, p1, Lk/e/a/y;->a:I

    if-ne v5, v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    if-eq v1, v3, :cond_4

    return v2

    .line 4
    :cond_4
    iget v1, p0, Lk/e/a/y;->c:I

    .line 5
    iget v3, p0, Lk/e/a/y;->d:I

    .line 6
    iget v4, p1, Lk/e/a/y;->c:I

    .line 7
    iget v5, p1, Lk/e/a/y;->d:I

    sub-int v6, v3, v1

    sub-int/2addr v5, v4

    if-eq v6, v5, :cond_5

    return v2

    :cond_5
    :goto_1
    if-ge v1, v3, :cond_7

    .line 8
    iget-object v5, p0, Lk/e/a/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p1, Lk/e/a/y;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lk/e/a/y;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    :cond_0
    mul-int/lit8 v0, v0, 0xd

    .line 2
    iget v1, p0, Lk/e/a/y;->a:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 3
    iget v1, p0, Lk/e/a/y;->c:I

    iget v2, p0, Lk/e/a/y;->d:I

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    iget-object v3, p0, Lk/e/a/y;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v3, v0

    mul-int/lit8 v0, v3, 0x11

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/e/a/y;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
