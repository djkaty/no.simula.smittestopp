.class public final Lk/e/a/j;
.super Lk/e/a/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lk/e/a/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/e/a/n;-><init>(Lk/e/a/q;)V

    return-void
.end method


# virtual methods
.method public a(IILk/e/a/w;Lk/e/a/x;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lk/e/a/n;->a(IILk/e/a/w;Lk/e/a/x;)V

    .line 2
    new-instance p1, Lk/e/a/n;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lk/e/a/n;-><init>(Lk/e/a/q;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p4, p1, p2}, Lk/e/a/n;->a(Lk/e/a/x;Lk/e/a/n;I)Z

    .line 4
    iget-object p3, p1, Lk/e/a/n;->b:[I

    iput-object p3, p0, Lk/e/a/n;->b:[I

    .line 5
    iget-object p3, p1, Lk/e/a/n;->c:[I

    iput-object p3, p0, Lk/e/a/n;->c:[I

    .line 6
    iput-short p2, p0, Lk/e/a/n;->f:S

    .line 7
    iget-object p2, p1, Lk/e/a/n;->d:[I

    iput-object p2, p0, Lk/e/a/n;->d:[I

    .line 8
    iget-object p2, p1, Lk/e/a/n;->e:[I

    iput-object p2, p0, Lk/e/a/n;->e:[I

    .line 9
    iget-short p2, p1, Lk/e/a/n;->g:S

    iput-short p2, p0, Lk/e/a/n;->g:S

    .line 10
    iget p2, p1, Lk/e/a/n;->h:I

    iput p2, p0, Lk/e/a/n;->h:I

    .line 11
    iget-object p1, p1, Lk/e/a/n;->i:[I

    iput-object p1, p0, Lk/e/a/n;->i:[I

    return-void
.end method
