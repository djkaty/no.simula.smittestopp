.class public Lk/a/b/a/c/z0/l;
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
        "Lk/a/b/a/b/k/b;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/k/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/z0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x76

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:amqp-sequence:list"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/l;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/b;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/b;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/z0/l;->a:Lk/a/b/a/c/z0/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/k/b;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/k/b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/b;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/l;->a:Lk/a/b/a/c/z0/b;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/b/k/b;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/l;->a:Lk/a/b/a/c/z0/b;

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

    const/16 v1, 0x76

    .line 7
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/z0/l;->a:Lk/a/b/a/c/z0/b;

    .line 9
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 10
    iget-object p1, p1, Lk/a/b/a/b/k/b;->a:Ljava/util/List;

    .line 11
    invoke-virtual {v0, p1}, Lk/a/b/a/c/x;->b(Ljava/lang/Object;)V

    return-void
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
            "Lk/a/b/a/b/k/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/l;->a:Lk/a/b/a/c/z0/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lk/a/b/a/b/k/b;

    .line 2
    iget-object v1, p0, Lk/a/b/a/c/z0/l;->a:Lk/a/b/a/c/z0/b;

    .line 3
    iget-object v1, v1, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    .line 4
    iget-object v2, v1, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    invoke-interface {v2}, Lk/a/b/a/c/k0;->get()B

    move-result v2

    const/16 v3, -0x40

    if-eq v2, v3, :cond_3

    const/16 v3, -0x30

    if-eq v2, v3, :cond_2

    const/16 v1, 0x40

    if-eq v2, v1, :cond_1

    const/16 v1, 0x45

    if-ne v2, v1, :cond_0

    .line 5
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lk/a/b/a/a;

    const-string v1, "Expected List type but found encoding: "

    invoke-static {v1, v2}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, v1, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v2, 0xd0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v1, v1, Lk/a/b/a/c/r;->c:[Lk/a/b/a/c/j0;

    const/16 v2, 0xc0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 9
    :goto_0
    invoke-direct {v0, v1}, Lk/a/b/a/b/k/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method
