.class public Lk/b/f/a/b$c;
.super Lk/b/f/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lk/b/f/a/d$c;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lk/b/f/a/b$a;-><init>(IIII)V

    iput p1, p0, Lk/b/f/a/b$c;->e:I

    iput p2, p0, Lk/b/f/a/b$c;->f:I

    iput p3, p0, Lk/b/f/a/b$c;->g:I

    iput p4, p0, Lk/b/f/a/b$c;->h:I

    new-instance p1, Lk/b/f/a/d$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lk/b/f/a/d$c;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V

    iput-object p1, p0, Lk/b/f/a/b$c;->i:Lk/b/f/a/d$c;

    invoke-virtual {p0, p5}, Lk/b/f/a/b$c;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p1

    iput-object p1, p0, Lk/b/f/a/b;->b:Lk/b/f/a/c;

    invoke-virtual {p0, p6}, Lk/b/f/a/b$c;->a(Ljava/math/BigInteger;)Lk/b/f/a/c;

    move-result-object p1

    iput-object p1, p0, Lk/b/f/a/b;->c:Lk/b/f/a/c;

    const/4 p1, 0x6

    iput p1, p0, Lk/b/f/a/b;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;)Lk/b/f/a/c;
    .locals 7

    new-instance v6, Lk/b/f/a/c$c;

    iget v1, p0, Lk/b/f/a/b$c;->e:I

    iget v2, p0, Lk/b/f/a/b$c;->f:I

    iget v3, p0, Lk/b/f/a/b$c;->g:I

    iget v4, p0, Lk/b/f/a/b$c;->h:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lk/b/f/a/c$c;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public a()Lk/b/f/a/d;
    .locals 1

    iget-object v0, p0, Lk/b/f/a/b$c;->i:Lk/b/f/a/d$c;

    return-object v0
.end method

.method public a(Lk/b/f/a/c;Lk/b/f/a/c;)Lk/b/f/a/d;
    .locals 1

    new-instance v0, Lk/b/f/a/d$c;

    invoke-direct {v0, p0, p1, p2}, Lk/b/f/a/d$c;-><init>(Lk/b/f/a/b;Lk/b/f/a/c;Lk/b/f/a/c;)V

    return-object v0
.end method
