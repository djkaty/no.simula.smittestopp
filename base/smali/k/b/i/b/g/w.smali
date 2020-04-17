.class public final Lk/b/i/b/g/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/b/i/b/g/v;

.field public final b:I

.field public final c:I

.field public final d:Lk/b/a/o;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Lk/b/i/b/g/m;


# direct methods
.method public constructor <init>(ILk/b/c/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    if-eqz p2, :cond_3

    iput p1, p0, Lk/b/i/b/g/w;->b:I

    const/4 v1, 0x2

    .line 1
    :goto_0
    iget v2, p0, Lk/b/i/b/g/w;->b:I

    if-gt v1, v2, :cond_2

    sub-int/2addr v2, v1

    rem-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 2
    iput v1, p0, Lk/b/i/b/g/w;->c:I

    invoke-interface {p2}, Lk/b/c/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/b/i/b/g/w;->f:Ljava/lang/String;

    invoke-interface {p2}, Lk/b/c/a;->a()Ljava/lang/String;

    move-result-object p2

    .line 3
    sget-object v0, Lk/b/i/b/g/f;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/o;

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lk/b/i/b/g/w;->d:Lk/b/a/o;

    new-instance p2, Lk/b/i/b/g/m;

    invoke-direct {p2, v0}, Lk/b/i/b/g/m;-><init>(Lk/b/a/o;)V

    iput-object p2, p0, Lk/b/i/b/g/w;->h:Lk/b/i/b/g/m;

    .line 5
    iget v0, p2, Lk/b/i/b/g/m;->b:I

    .line 6
    iput v0, p0, Lk/b/i/b/g/w;->g:I

    .line 7
    iget v1, p2, Lk/b/i/b/g/m;->c:I

    .line 8
    iput v1, p0, Lk/b/i/b/g/w;->e:I

    iget-object v2, p0, Lk/b/i/b/g/w;->f:Ljava/lang/String;

    .line 9
    iget p2, p2, Lk/b/i/b/g/m;->d:I

    .line 10
    invoke-static {v2, v0, v1, p2, p1}, Lk/b/i/b/g/e;->b(Ljava/lang/String;IIII)Lk/b/i/b/g/e;

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/g/w;->a:Lk/b/i/b/g/v;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized digest name: "

    invoke-static {v0, p2}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "should never happen..."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "digest == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lk/b/i/b/g/k;
    .locals 2

    new-instance v0, Lk/b/i/b/g/k;

    iget-object v1, p0, Lk/b/i/b/g/w;->h:Lk/b/i/b/g/m;

    invoke-direct {v0, v1}, Lk/b/i/b/g/k;-><init>(Lk/b/i/b/g/m;)V

    return-object v0
.end method
