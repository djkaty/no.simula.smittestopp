.class public Ld/t/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/x$b;,
        Ld/t/a/x$a;
    }
.end annotation


# instance fields
.field public final a:Ld/t/a/x$b;

.field public b:Ld/t/a/x$a;


# direct methods
.method public constructor <init>(Ld/t/a/x$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/t/a/x;->a:Ld/t/a/x$b;

    .line 3
    new-instance p1, Ld/t/a/x$a;

    invoke-direct {p1}, Ld/t/a/x$a;-><init>()V

    iput-object p1, p0, Ld/t/a/x;->b:Ld/t/a/x$a;

    return-void
.end method


# virtual methods
.method public a(IIII)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Ld/t/a/x;->a:Ld/t/a/x$b;

    invoke-interface {v0}, Ld/t/a/x$b;->b()I

    move-result v0

    .line 2
    iget-object v1, p0, Ld/t/a/x;->a:Ld/t/a/x$b;

    invoke-interface {v1}, Ld/t/a/x$b;->a()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    .line 3
    iget-object v4, p0, Ld/t/a/x;->a:Ld/t/a/x$b;

    invoke-interface {v4, p1}, Ld/t/a/x$b;->a(I)Landroid/view/View;

    move-result-object v4

    .line 4
    iget-object v5, p0, Ld/t/a/x;->a:Ld/t/a/x$b;

    invoke-interface {v5, v4}, Ld/t/a/x$b;->b(Landroid/view/View;)I

    move-result v5

    .line 5
    iget-object v6, p0, Ld/t/a/x;->a:Ld/t/a/x$b;

    invoke-interface {v6, v4}, Ld/t/a/x$b;->a(Landroid/view/View;)I

    move-result v6

    .line 6
    iget-object v7, p0, Ld/t/a/x;->b:Ld/t/a/x$a;

    .line 7
    iput v0, v7, Ld/t/a/x$a;->b:I

    .line 8
    iput v1, v7, Ld/t/a/x$a;->c:I

    .line 9
    iput v5, v7, Ld/t/a/x$a;->d:I

    .line 10
    iput v6, v7, Ld/t/a/x$a;->e:I

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    .line 11
    iput v5, v7, Ld/t/a/x$a;->a:I

    or-int/lit8 v6, p3, 0x0

    .line 12
    iput v6, v7, Ld/t/a/x$a;->a:I

    .line 13
    invoke-virtual {v7}, Ld/t/a/x$a;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    .line 14
    iget-object v6, p0, Ld/t/a/x;->b:Ld/t/a/x$a;

    .line 15
    iput v5, v6, Ld/t/a/x$a;->a:I

    or-int/lit8 v5, p4, 0x0

    .line 16
    iput v5, v6, Ld/t/a/x$a;->a:I

    .line 17
    invoke-virtual {v6}, Ld/t/a/x$a;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method
