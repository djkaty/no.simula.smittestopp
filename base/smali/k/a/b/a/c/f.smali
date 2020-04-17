.class public Lk/a/b/a/c/f;
.super Lk/a/b/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/f$c;,
        Lk/a/b/a/c/f$a;,
        Lk/a/b/a/c/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/c<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/math/BigInteger;

.field public static final d:Ljava/math/BigInteger;

.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;


# instance fields
.field public a:Lk/a/b/a/c/f$b;

.field public b:Lk/a/b/a/c/f$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x80

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/f;->c:Ljava/math/BigInteger;

    const-wide/16 v0, 0x7f

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/f;->d:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/f;->e:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/c/f;->f:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/a/b/a/c/c;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/f$a;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/f$a;-><init>(Lk/a/b/a/c/f;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/f;->a:Lk/a/b/a/c/f$b;

    .line 3
    new-instance v0, Lk/a/b/a/c/f$c;

    invoke-direct {v0, p0, p1, p2}, Lk/a/b/a/c/f$c;-><init>(Lk/a/b/a/c/f;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    iput-object v0, p0, Lk/a/b/a/c/f;->b:Lk/a/b/a/c/f$b;

    .line 4
    const-class p2, Ljava/math/BigInteger;

    .line 5
    iget-object p1, p1, Lk/a/b/a/c/x;->c:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;)Lk/a/b/a/c/f$b;
    .locals 1

    .line 4
    sget-object v0, Lk/a/b/a/c/f;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lk/a/b/a/c/f;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lk/a/b/a/c/f;->b:Lk/a/b/a/c/f$b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lk/a/b/a/c/f;->a:Lk/a/b/a/c/f$b;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/j0;
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/f;->a(Ljava/math/BigInteger;)Lk/a/b/a/c/f$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 2
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/f;->a(Ljava/math/BigInteger;)Lk/a/b/a/c/f$b;

    move-result-object p1

    return-object p1
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/f;->a:Lk/a/b/a/c/f$b;

    return-object v0
.end method

.method public i()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk/a/b/a/c/f$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk/a/b/a/c/f$b;

    .line 1
    iget-object v1, p0, Lk/a/b/a/c/f;->b:Lk/a/b/a/c/f$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lk/a/b/a/c/f;->a:Lk/a/b/a/c/f$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
