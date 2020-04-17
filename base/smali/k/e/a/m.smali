.class public final Lk/e/a/m;
.super Lk/e/a/l;
.source "SourceFile"


# instance fields
.field public final b:Lk/e/a/x;

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:I

.field public g:I

.field public h:Lk/e/a/a;

.field public i:Lk/e/a/a;

.field public j:Lk/e/a/a;

.field public k:Lk/e/a/a;

.field public l:Lk/e/a/b;


# direct methods
.method public constructor <init>(Lk/e/a/x;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/high16 v0, 0x70000

    .line 1
    invoke-direct {p0, v0}, Lk/e/a/l;-><init>(I)V

    .line 2
    iput-object p1, p0, Lk/e/a/m;->b:Lk/e/a/x;

    .line 3
    iput p2, p0, Lk/e/a/m;->c:I

    .line 4
    invoke-virtual {p1, p3}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lk/e/a/m;->d:I

    .line 5
    invoke-virtual {p1, p4}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lk/e/a/m;->e:I

    if-eqz p5, :cond_0

    .line 6
    invoke-virtual {p1, p5}, Lk/e/a/x;->c(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lk/e/a/m;->f:I

    :cond_0
    if-eqz p6, :cond_1

    .line 7
    invoke-virtual {p1, p6}, Lk/e/a/x;->a(Ljava/lang/Object;)Lk/e/a/w;

    move-result-object p1

    iget p1, p1, Lk/e/a/w;->a:I

    iput p1, p0, Lk/e/a/m;->g:I

    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILk/e/a/z;Ljava/lang/String;Z)Lk/e/a/a;
    .locals 1

    if-eqz p4, :cond_0

    .line 5
    iget-object p4, p0, Lk/e/a/m;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/m;->j:Lk/e/a/a;

    .line 6
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/m;->j:Lk/e/a/a;

    return-object p1

    .line 7
    :cond_0
    iget-object p4, p0, Lk/e/a/m;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/m;->k:Lk/e/a/a;

    .line 8
    invoke-static {p4, p1, p2, p3, v0}, Lk/e/a/a;->a(Lk/e/a/x;ILk/e/a/z;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/m;->k:Lk/e/a/a;

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Lk/e/a/a;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lk/e/a/m;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/m;->h:Lk/e/a/a;

    .line 2
    invoke-static {p2, p1, v0}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/m;->h:Lk/e/a/a;

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lk/e/a/m;->b:Lk/e/a/x;

    iget-object v0, p0, Lk/e/a/m;->i:Lk/e/a/a;

    .line 4
    invoke-static {p2, p1, v0}, Lk/e/a/a;->a(Lk/e/a/x;Ljava/lang/String;Lk/e/a/a;)Lk/e/a/a;

    move-result-object p1

    iput-object p1, p0, Lk/e/a/m;->i:Lk/e/a/a;

    return-object p1
.end method
