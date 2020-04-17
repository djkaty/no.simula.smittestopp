.class public Lk/a/b/a/c/z0/o;
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
        "Lk/a/b/a/b/k/e;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/k/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/z0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x75

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:data:binary"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/o;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/e;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/e;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/z0/o;->a:Lk/a/b/a/c/z0/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/k/e;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/z0/o;->a:Lk/a/b/a/c/z0/e;

    if-eqz v0, :cond_0

    .line 4
    const-class v0, Lk/a/b/a/b/k/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/e;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/o;->a:Lk/a/b/a/c/z0/e;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/b/k/e;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/o;->a:Lk/a/b/a/c/z0/e;

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

    const/16 v1, 0x75

    .line 7
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/z0/o;->a:Lk/a/b/a/c/z0/e;

    .line 9
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 10
    iget-object p1, p1, Lk/a/b/a/b/k/e;->a:Lk/a/b/a/b/a;

    .line 11
    invoke-virtual {v0, p1}, Lk/a/b/a/c/x;->a(Lk/a/b/a/b/a;)V

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
            "Lk/a/b/a/b/k/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/o;->a:Lk/a/b/a/c/z0/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/o;->a:Lk/a/b/a/c/z0/e;

    .line 2
    iget-object v0, v0, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/r;->a:Lk/a/b/a/c/k0;

    .line 4
    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v1

    const/16 v2, -0x60

    if-eq v1, v2, :cond_2

    const/16 v2, -0x50

    if-eq v1, v2, :cond_1

    const/16 v0, 0x40

    if-ne v1, v0, :cond_0

    .line 5
    new-instance v0, Lk/a/b/a/b/k/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk/a/b/a/b/k/e;-><init>(Lk/a/b/a/b/a;)V

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lk/a/b/a/a;

    const-string v2, "Expected Binary type but found encoding: "

    invoke-static {v2, v1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-interface {v0}, Lk/a/b/a/c/k0;->d()I

    move-result v1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Lk/a/b/a/c/k0;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 9
    :goto_0
    invoke-interface {v0}, Lk/a/b/a/c/k0;->c()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 10
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 11
    invoke-interface {v0, v2, v3, v1}, Lk/a/b/a/c/k0;->a([BII)Lk/a/b/a/c/k0;

    .line 12
    new-instance v0, Lk/a/b/a/b/k/e;

    new-instance v1, Lk/a/b/a/b/a;

    invoke-direct {v1, v2}, Lk/a/b/a/b/a;-><init>([B)V

    invoke-direct {v0, v1}, Lk/a/b/a/b/k/e;-><init>(Lk/a/b/a/b/a;)V

    :goto_1
    return-object v0

    .line 13
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Binary data size "

    const-string v4, " is specified to be greater than the amount of data available ("

    invoke-static {v3, v1, v4}, Le/a/a/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-interface {v0}, Lk/a/b/a/c/k0;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
