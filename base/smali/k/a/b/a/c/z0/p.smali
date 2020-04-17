.class public Lk/a/b/a/c/z0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/a;
.implements Lk/a/b/a/c/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/a<",
        "Lk/a/b/a/b/k/j;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/k/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/z0/j;

.field public final b:Lk/a/b/a/c/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x71

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:delivery-annotations:map"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/p;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/j;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/j;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/z0/p;->a:Lk/a/b/a/c/z0/j;

    .line 3
    const-class v0, Lk/a/b/a/b/f;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lk/a/b/a/c/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object p1

    .line 5
    check-cast p1, Lk/a/b/a/c/o0;

    iput-object p1, p0, Lk/a/b/a/c/z0/p;->b:Lk/a/b/a/c/o0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/k/j;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/k/j;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/j;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/p;->a:Lk/a/b/a/c/z0/j;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/b/k/j;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/p;->a:Lk/a/b/a/c/z0/j;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v1, 0x53

    .line 6
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v1, 0x71

    .line 7
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/z0/p;->a:Lk/a/b/a/c/z0/j;

    .line 9
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 10
    iget-object v1, p1, Lk/a/b/a/b/k/j;->a:Ljava/util/Map;

    .line 11
    invoke-virtual {v0, v1}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v0

    check-cast v0, Lk/a/b/a/c/g0;

    .line 12
    iget-object v1, p0, Lk/a/b/a/c/z0/p;->b:Lk/a/b/a/c/o0;

    .line 13
    iput-object v1, v0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    const/4 v1, 0x0

    .line 14
    :try_start_0
    iget-object p1, p1, Lk/a/b/a/b/k/j;->a:Ljava/util/Map;

    .line 15
    invoke-virtual {v0, p1}, Lk/a/b/a/c/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iput-object v1, v0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    return-void

    :catchall_0
    move-exception p1

    iput-object v1, v0, Lk/a/b/a/c/g0;->d:Lk/a/b/a/c/a;

    .line 17
    throw p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/k/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/p;->a:Lk/a/b/a/c/z0/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/p;->a:Lk/a/b/a/c/z0/j;

    .line 2
    iget-object v0, v0, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    .line 3
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 4
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    move-result v2

    const/16 v3, -0x3f

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/16 v3, -0x2f

    if-eq v2, v3, :cond_1

    const/16 v0, 0x40

    if-ne v2, v0, :cond_0

    .line 5
    new-instance v0, Lk/a/b/a/b/k/j;

    invoke-direct {v0, v4}, Lk/a/b/a/b/k/j;-><init>(Ljava/util/Map;)V

    goto/16 :goto_7

    .line 6
    :cond_0
    new-instance v0, Lk/a/b/a/a;

    const-string v1, "Expected Map type but found encoding: "

    invoke-static {v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-interface {v1}, Lk/a/b/a/c/k0;->d()I

    .line 8
    invoke-interface {v1}, Lk/a/b/a/c/k0;->d()I

    move-result v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    .line 10
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 11
    :goto_0
    invoke-interface {v1}, Lk/a/b/a/c/k0;->c()I

    move-result v3

    if-gt v2, v3, :cond_c

    .line 12
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v5, 0x0

    move-object v6, v4

    .line 13
    :goto_1
    div-int/lit8 v7, v2, 0x2

    if-ge v5, v7, :cond_b

    .line 14
    invoke-virtual {v0, v4}, Lk/a/b/a/c/r;->a(Lk/a/b/a/b/f;)Lk/a/b/a/b/f;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 15
    invoke-interface {v1}, Lk/a/b/a/c/k0;->position()I

    move-result v8

    invoke-interface {v1, v8}, Lk/a/b/a/c/k0;->get(I)B

    move-result v8

    const/16 v9, -0x20

    if-eq v8, v9, :cond_3

    const/16 v9, -0x10

    if-eq v8, v9, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    :goto_2
    if-nez v6, :cond_4

    .line 16
    invoke-virtual {v0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object v6

    goto :goto_5

    .line 17
    :cond_4
    invoke-interface {v1}, Lk/a/b/a/c/k0;->position()I

    move-result v9

    invoke-interface {v1, v9}, Lk/a/b/a/c/k0;->get(I)B

    move-result v9

    if-eqz v9, :cond_7

    .line 18
    instance-of v10, v6, Lk/a/b/a/c/j0;

    if-nez v10, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    move-object v10, v6

    check-cast v10, Lk/a/b/a/c/j0;

    .line 20
    invoke-interface {v10}, Lk/a/b/a/c/j0;->g()B

    move-result v10

    if-eq v9, v10, :cond_6

    .line 21
    invoke-virtual {v0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object v6

    goto :goto_4

    .line 22
    :cond_6
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    goto :goto_4

    .line 23
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lk/a/b/a/c/r;->b()Lk/a/b/a/c/q0;

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_9

    :goto_5
    if-eqz v8, :cond_8

    .line 24
    move-object v8, v6

    check-cast v8, Lk/a/b/a/c/e$b;

    invoke-interface {v8}, Lk/a/b/a/c/e$b;->j()Ljava/lang/Object;

    move-result-object v8

    goto :goto_6

    .line 25
    :cond_8
    invoke-interface {v6}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v8

    .line 26
    :goto_6
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 27
    :cond_9
    new-instance v0, Lk/a/b/a/c/q;

    const-string v1, "Unknown constructor found in Map encoding: "

    invoke-direct {v0, v1}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_a
    new-instance v0, Lk/a/b/a/c/q;

    const-string v1, "String key in DeliveryAnnotations cannot be null"

    invoke-direct {v0, v1}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_b
    new-instance v0, Lk/a/b/a/b/k/j;

    invoke-direct {v0, v3}, Lk/a/b/a/b/k/j;-><init>(Ljava/util/Map;)V

    :goto_7
    return-object v0

    .line 30
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Map element count "

    const-string v4, " is specified to be greater than the amount of data available ("

    invoke-static {v3, v2, v4}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    invoke-interface {v1}, Lk/a/b/a/c/k0;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
