.class public Lk/b/a/l2/s;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/l2/a;

.field public y:Lk/b/a/r0;


# direct methods
.method public constructor <init>(Lk/b/a/l2/a;Lk/b/a/e;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/r0;

    invoke-direct {v0, p2}, Lk/b/a/r0;-><init>(Lk/b/a/e;)V

    iput-object v0, p0, Lk/b/a/l2/s;->y:Lk/b/a/r0;

    iput-object p1, p0, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    return-void
.end method

.method public constructor <init>(Lk/b/a/l2/a;[B)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/r0;

    invoke-direct {v0, p2}, Lk/b/a/r0;-><init>([B)V

    iput-object v0, p0, Lk/b/a/l2/s;->y:Lk/b/a/r0;

    iput-object p1, p0, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 2

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lk/b/a/u;->j()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object v0

    iput-object v0, p0, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/r0;->a(Ljava/lang/Object;)Lk/b/a/r0;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/l2/s;->y:Lk/b/a/r0;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad sequence size: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/l2/s;
    .locals 1

    instance-of v0, p0, Lk/b/a/l2/s;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/l2/s;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/l2/s;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/l2/s;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    iget-object v1, p0, Lk/b/a/l2/s;->x:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/a/l2/s;->y:Lk/b/a/r0;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method

.method public f()Lk/b/a/t;
    .locals 2

    iget-object v0, p0, Lk/b/a/l2/s;->y:Lk/b/a/r0;

    .line 1
    iget v1, v0, Lk/b/a/b;->y:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lk/b/a/b;->x:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
