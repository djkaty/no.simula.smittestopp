.class public Lk/b/i/a/i;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public final x:Lk/b/a/l;

.field public final y:I

.field public final z:Lk/b/a/l2/a;


# direct methods
.method public constructor <init>(ILk/b/a/l2/a;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance v0, Lk/b/a/l;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lk/b/a/l;-><init>(J)V

    iput-object v0, p0, Lk/b/i/a/i;->x:Lk/b/a/l;

    iput p1, p0, Lk/b/i/a/i;->y:I

    iput-object p2, p0, Lk/b/i/a/i;->z:Lk/b/a/l2/a;

    return-void
.end method

.method public constructor <init>(Lk/b/a/u;)V
    .locals 1

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lk/b/i/a/i;->x:Lk/b/a/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->a(Ljava/lang/Object;)Lk/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/l;->k()I

    move-result v0

    iput v0, p0, Lk/b/i/a/i;->y:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/l2/a;->a(Ljava/lang/Object;)Lk/b/a/l2/a;

    move-result-object p1

    iput-object p1, p0, Lk/b/i/a/i;->z:Lk/b/a/l2/a;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/i/a/i;
    .locals 1

    instance-of v0, p0, Lk/b/i/a/i;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/i/a/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/i/a/i;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/i/a/i;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 4

    new-instance v0, Lk/b/a/f;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lk/b/a/f;-><init>(I)V

    .line 2
    iget-object v1, p0, Lk/b/i/a/i;->x:Lk/b/a/l;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/l;

    iget v2, p0, Lk/b/i/a/i;->y:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lk/b/a/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    iget-object v1, p0, Lk/b/i/a/i;->z:Lk/b/a/l2/a;

    invoke-virtual {v0, v1}, Lk/b/a/f;->a(Lk/b/a/e;)V

    new-instance v1, Lk/b/a/e1;

    invoke-direct {v1, v0}, Lk/b/a/e1;-><init>(Lk/b/a/f;)V

    return-object v1
.end method
