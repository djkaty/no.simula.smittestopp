.class public Lk/a/b/a/c/z0/k;
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
        "Lk/a/b/a/b/k/a;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/k/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;

.field public static final c:[B


# instance fields
.field public final a:Lk/a/b/a/c/z0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x24

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:accepted:list"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/k;->b:[Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lk/a/b/a/c/z0/k;->c:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x53t
        0x24t
        0x45t
    .end array-data
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/a;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/a;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/z0/k;->a:Lk/a/b/a/c/z0/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/k/a;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/k/a;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/a;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/k;->a:Lk/a/b/a/c/z0/a;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lk/a/b/a/b/k/a;

    .line 2
    iget-object p1, p0, Lk/a/b/a/c/z0/k;->a:Lk/a/b/a/c/z0/a;

    .line 3
    iget-object p1, p1, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object p1, p1, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    .line 5
    sget-object v0, Lk/a/b/a/c/z0/k;->c:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lk/a/b/a/c/y0;->a([BII)V

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
            "Lk/a/b/a/b/k/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/k;->a:Lk/a/b/a/c/z0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/k;->a:Lk/a/b/a/c/z0/a;

    .line 2
    iget-object v0, v0, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    .line 3
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 4
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    move-result v1

    const/16 v2, -0x40

    if-eq v1, v2, :cond_2

    const/16 v2, -0x30

    if-eq v1, v2, :cond_1

    const/16 v0, 0x45

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lk/a/b/a/c/q;

    const-string v2, "Incorrect type found in Accepted type encoding: "

    invoke-static {v2, v1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 7
    invoke-interface {v1}, Lk/a/b/a/c/k0;->d()I

    .line 8
    iget-object v0, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 9
    invoke-interface {v0}, Lk/a/b/a/c/k0;->d()I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 11
    invoke-interface {v1}, Lk/a/b/a/c/k0;->get()B

    .line 12
    iget-object v0, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 13
    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    .line 14
    :goto_0
    sget-object v0, Lk/a/b/a/b/k/a;->a:Lk/a/b/a/b/k/a;

    return-object v0
.end method
