.class public Lk/b/a/k2/b;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public x:Lk/b/a/x;


# direct methods
.method public constructor <init>(Lk/b/a/x;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p1, p0, Lk/b/a/k2/b;->x:Lk/b/a/x;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/k2/b;->x:Lk/b/a/x;

    return-object v0
.end method

.method public f()Lk/b/a/k2/a;
    .locals 2

    iget-object v0, p0, Lk/b/a/k2/b;->x:Lk/b/a/x;

    .line 1
    iget-object v0, v0, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    .line 3
    invoke-static {v0}, Lk/b/a/k2/a;->a(Ljava/lang/Object;)Lk/b/a/k2/a;

    move-result-object v0

    return-object v0
.end method

.method public g()[Lk/b/a/k2/a;
    .locals 4

    iget-object v0, p0, Lk/b/a/k2/b;->x:Lk/b/a/x;

    .line 1
    iget-object v0, v0, Lk/b/a/x;->x:[Lk/b/a/e;

    array-length v0, v0

    .line 2
    new-array v1, v0, [Lk/b/a/k2/a;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lk/b/a/k2/b;->x:Lk/b/a/x;

    .line 3
    iget-object v3, v3, Lk/b/a/x;->x:[Lk/b/a/e;

    aget-object v3, v3, v2

    .line 4
    invoke-static {v3}, Lk/b/a/k2/a;->a(Ljava/lang/Object;)Lk/b/a/k2/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
