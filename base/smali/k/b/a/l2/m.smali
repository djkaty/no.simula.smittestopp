.class public Lk/b/a/l2/m;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public final x:[Lk/b/a/l2/l;


# direct methods
.method public constructor <init>(Lk/b/a/u;)V
    .locals 3

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v0

    new-array v0, v0, [Lk/b/a/l2/l;

    iput-object v0, p0, Lk/b/a/l2/m;->x:[Lk/b/a/l2/l;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lk/b/a/u;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lk/b/a/l2/m;->x:[Lk/b/a/l2/l;

    invoke-virtual {p1, v0}, Lk/b/a/u;->a(I)Lk/b/a/e;

    move-result-object v2

    invoke-static {v2}, Lk/b/a/l2/l;->a(Ljava/lang/Object;)Lk/b/a/l2/l;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/l2/m;
    .locals 1

    instance-of v0, p0, Lk/b/a/l2/m;

    if-eqz v0, :cond_0

    check-cast p0, Lk/b/a/l2/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lk/b/a/l2/m;

    invoke-static {p0}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/l2/m;-><init>(Lk/b/a/u;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lk/b/a/b0;Z)Lk/b/a/l2/m;
    .locals 1

    new-instance v0, Lk/b/a/l2/m;

    invoke-static {p0, p1}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/l2/m;-><init>(Lk/b/a/u;)V

    return-object v0
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 2

    new-instance v0, Lk/b/a/e1;

    iget-object v1, p0, Lk/b/a/l2/m;->x:[Lk/b/a/l2/l;

    invoke-direct {v0, v1}, Lk/b/a/e1;-><init>([Lk/b/a/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1
    sget-object v1, Lk/b/j/f;->a:Ljava/lang/String;

    const-string v2, "GeneralNames:"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lk/b/a/l2/m;->x:[Lk/b/a/l2/l;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lk/b/a/l2/m;->x:[Lk/b/a/l2/l;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
