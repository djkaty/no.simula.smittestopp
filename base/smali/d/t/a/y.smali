.class public Ld/t/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/t/a/y$a;,
        Ld/t/a/y$b;
    }
.end annotation


# instance fields
.field public final a:Ld/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/a<",
            "Ld/t/a/s$x;",
            "Ld/t/a/y$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ld/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/e<",
            "Ld/t/a/s$x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld/f/a;

    invoke-direct {v0}, Ld/f/a;-><init>()V

    iput-object v0, p0, Ld/t/a/y;->a:Ld/f/a;

    .line 3
    new-instance v0, Ld/f/e;

    invoke-direct {v0}, Ld/f/e;-><init>()V

    iput-object v0, p0, Ld/t/a/y;->b:Ld/f/e;

    return-void
.end method


# virtual methods
.method public a(Ld/t/a/s$x;)V
    .locals 6

    .line 8
    iget-object v0, p0, Ld/t/a/y;->b:Ld/f/e;

    invoke-virtual {v0}, Ld/f/e;->c()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 9
    iget-object v2, p0, Ld/t/a/y;->b:Ld/f/e;

    invoke-virtual {v2, v0}, Ld/f/e;->a(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 10
    iget-object v2, p0, Ld/t/a/y;->b:Ld/f/e;

    .line 11
    iget-object v3, v2, Ld/f/e;->z:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, Ld/f/e;->B:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    .line 12
    aput-object v5, v3, v0

    .line 13
    iput-boolean v1, v2, Ld/f/e;->x:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 14
    :cond_1
    :goto_1
    iget-object v0, p0, Ld/t/a/y;->a:Ld/f/a;

    invoke-virtual {v0, p1}, Ld/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/t/a/y$a;

    if-eqz p1, :cond_2

    .line 15
    invoke-static {p1}, Ld/t/a/y$a;->a(Ld/t/a/y$a;)V

    :cond_2
    return-void
.end method

.method public a(Ld/t/a/s$x;Ld/t/a/s$h$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/t/a/y;->a:Ld/f/a;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Ld/f/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ld/t/a/y$a;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ld/t/a/y$a;->a()Ld/t/a/y$a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ld/t/a/y;->a:Ld/f/a;

    invoke-virtual {v1, p1, v0}, Ld/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iput-object p2, v0, Ld/t/a/y$a;->b:Ld/t/a/s$h$c;

    .line 7
    iget p1, v0, Ld/t/a/y$a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Ld/t/a/y$a;->a:I

    return-void
.end method
