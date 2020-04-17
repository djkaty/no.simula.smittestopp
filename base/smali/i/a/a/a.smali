.class public Li/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/reflect/Field;

.field public b:Ljava/lang/reflect/Method;

.field public c:Ljava/lang/reflect/Method;

.field public d:I

.field public e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Li/a/a/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Li/a/a/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li/a/a/a;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit16 v1, v0, 0x88

    if-lez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 4
    iput-object p2, p0, Li/a/a/a;->a:Ljava/lang/reflect/Field;

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, 0x3

    .line 7
    new-array v3, v3, [C

    const/16 v4, 0x73

    const/4 v5, 0x0

    .line 8
    aput-char v4, v3, v5

    const/16 v6, 0x65

    .line 9
    aput-char v6, v3, v1

    const/16 v6, 0x74

    const/4 v7, 0x2

    .line 10
    aput-char v6, v3, v7

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x7a

    const/16 v9, 0x61

    if-lt v6, v9, :cond_2

    if-gt v6, v8, :cond_2

    add-int/lit8 v6, v6, -0x20

    int-to-char v6, v6

    :cond_2
    const/4 v10, 0x3

    .line 12
    aput-char v6, v3, v10

    const/4 v6, 0x1

    :goto_0
    if-lt v6, v2, :cond_b

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Li/a/a/a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 15
    :goto_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, 0x2

    .line 18
    new-array v6, v6, [C

    const/16 v10, 0x69

    .line 19
    aput-char v10, v6, v5

    .line 20
    aput-char v4, v6, v1

    .line 21
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_3

    if-gt v4, v8, :cond_3

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    .line 22
    :cond_3
    aput-char v4, v6, v7

    :goto_2
    if-lt v1, v3, :cond_4

    .line 23
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v1, 0x2

    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/c/a/a/b/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    :try_start_1
    new-array v2, v5, [Ljava/lang/Class;

    .line 26
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Li/a/a/a;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    .line 27
    :goto_4
    iget-object v1, p0, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 28
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/c/a/a/b/l/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Li/a/a/a;->c:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    nop

    .line 29
    :cond_6
    :goto_5
    iget-object p1, p0, Li/a/a/a;->a:Ljava/lang/reflect/Field;

    if-nez p1, :cond_7

    iget-object p1, p0, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    if-nez p1, :cond_7

    iget-object p1, p0, Li/a/a/a;->b:Ljava/lang/reflect/Method;

    if-nez p1, :cond_7

    return-void

    .line 30
    :cond_7
    iget-object p1, p0, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p3, p2, p1}, Li/a/a/i;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 31
    iput-object v0, p0, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    .line 32
    :cond_8
    iget-object p1, p0, Li/a/a/a;->b:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_9

    invoke-interface {p3, p2, p1}, Li/a/a/i;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 33
    iput-object v0, p0, Li/a/a/a;->b:Ljava/lang/reflect/Method;

    .line 34
    :cond_9
    iget-object p1, p0, Li/a/a/a;->c:Ljava/lang/reflect/Method;

    if-nez p1, :cond_a

    iget-object p1, p0, Li/a/a/a;->b:Ljava/lang/reflect/Method;

    if-nez p1, :cond_a

    iget-object p1, p0, Li/a/a/a;->a:Ljava/lang/reflect/Field;

    if-nez p1, :cond_a

    return-void

    .line 35
    :cond_a
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Li/a/a/a;->e:Ljava/lang/Class;

    .line 36
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    return-void

    :cond_b
    add-int/lit8 v10, v6, 0x3

    .line 37
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aput-char v11, v3, v10

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/a;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
