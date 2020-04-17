.class public final Lk/e/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/e/a/q;

.field public final b:Lk/e/a/q;

.field public final c:Lk/e/a/q;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Lk/e/a/p;


# direct methods
.method public constructor <init>(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)V
    .locals 3

    .line 7
    iget-object v0, p1, Lk/e/a/p;->c:Lk/e/a/q;

    iget v1, p1, Lk/e/a/p;->d:I

    iget-object v2, p1, Lk/e/a/p;->e:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lk/e/a/p;->a:Lk/e/a/q;

    .line 10
    iput-object p3, p0, Lk/e/a/p;->b:Lk/e/a/q;

    .line 11
    iput-object v0, p0, Lk/e/a/p;->c:Lk/e/a/q;

    .line 12
    iput v1, p0, Lk/e/a/p;->d:I

    .line 13
    iput-object v2, p0, Lk/e/a/p;->e:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lk/e/a/p;->f:Lk/e/a/p;

    iput-object p1, p0, Lk/e/a/p;->f:Lk/e/a/p;

    return-void
.end method

.method public constructor <init>(Lk/e/a/q;Lk/e/a/q;Lk/e/a/q;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/e/a/p;->a:Lk/e/a/q;

    .line 3
    iput-object p2, p0, Lk/e/a/p;->b:Lk/e/a/q;

    .line 4
    iput-object p3, p0, Lk/e/a/p;->c:Lk/e/a/q;

    .line 5
    iput p4, p0, Lk/e/a/p;->d:I

    .line 6
    iput-object p5, p0, Lk/e/a/p;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)Lk/e/a/p;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lk/e/a/p;->f:Lk/e/a/p;

    invoke-static {v0, p1, p2}, Lk/e/a/p;->a(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)Lk/e/a/p;

    move-result-object v0

    iput-object v0, p0, Lk/e/a/p;->f:Lk/e/a/p;

    .line 2
    iget-object v0, p0, Lk/e/a/p;->a:Lk/e/a/q;

    iget v0, v0, Lk/e/a/q;->d:I

    .line 3
    iget-object v1, p0, Lk/e/a/p;->b:Lk/e/a/q;

    iget v1, v1, Lk/e/a/q;->d:I

    .line 4
    iget v2, p1, Lk/e/a/q;->d:I

    if-nez p2, :cond_1

    const v3, 0x7fffffff

    goto :goto_0

    .line 5
    :cond_1
    iget v3, p2, Lk/e/a/q;->d:I

    :goto_0
    if-ge v2, v1, :cond_6

    if-gt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    if-gt v2, v0, :cond_4

    if-lt v3, v1, :cond_3

    .line 6
    iget-object p0, p0, Lk/e/a/p;->f:Lk/e/a/p;

    return-object p0

    .line 7
    :cond_3
    new-instance p1, Lk/e/a/p;

    iget-object v0, p0, Lk/e/a/p;->b:Lk/e/a/q;

    invoke-direct {p1, p0, p2, v0}, Lk/e/a/p;-><init>(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)V

    return-object p1

    :cond_4
    if-lt v3, v1, :cond_5

    .line 8
    new-instance p2, Lk/e/a/p;

    iget-object v0, p0, Lk/e/a/p;->a:Lk/e/a/q;

    invoke-direct {p2, p0, v0, p1}, Lk/e/a/p;-><init>(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)V

    return-object p2

    .line 9
    :cond_5
    new-instance v0, Lk/e/a/p;

    iget-object v1, p0, Lk/e/a/p;->b:Lk/e/a/q;

    invoke-direct {v0, p0, p2, v1}, Lk/e/a/p;-><init>(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)V

    iput-object v0, p0, Lk/e/a/p;->f:Lk/e/a/p;

    .line 10
    new-instance p2, Lk/e/a/p;

    iget-object v0, p0, Lk/e/a/p;->a:Lk/e/a/q;

    invoke-direct {p2, p0, v0, p1}, Lk/e/a/p;-><init>(Lk/e/a/p;Lk/e/a/q;Lk/e/a/q;)V

    return-object p2

    :cond_6
    :goto_1
    return-object p0
.end method
