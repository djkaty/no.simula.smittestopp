.class public Lg/e/h;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# instance fields
.field public transient x:Lg/e/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 2
    invoke-static {}, Lg/e/e;->e()Lg/e/e;

    move-result-object v0

    iput-object v0, p0, Lg/e/h;->x:Lg/e/e;

    .line 3
    sget-object v1, Lg/a/d/e;->PF_UNIX:Lg/a/d/e;

    invoke-virtual {v0, v1}, Lg/e/e;->a(Lg/a/d/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 5
    invoke-static {}, Lg/e/e;->e()Lg/e/e;

    move-result-object v0

    iput-object v0, p0, Lg/e/h;->x:Lg/e/e;

    .line 6
    sget-object v1, Lg/a/d/e;->PF_UNIX:Lg/a/d/e;

    invoke-virtual {v0, v1}, Lg/e/e;->a(Lg/a/d/e;)V

    .line 7
    iget-object v0, p0, Lg/e/h;->x:Lg/e/e;

    invoke-virtual {v0, p1}, Lg/e/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/h;->x:Lg/e/e;

    .line 2
    iget-object v1, v0, Lg/e/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lg/e/e;->c()Lg/c/g$i;

    move-result-object v0

    invoke-virtual {v0}, Lg/c/g$j;->c()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lg/e/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lg/e/h;

    .line 3
    iget-object v0, p0, Lg/e/h;->x:Lg/e/e;

    invoke-virtual {v0}, Lg/e/e;->a()Lg/a/d/e;

    move-result-object v0

    iget-object v2, p1, Lg/e/h;->x:Lg/e/e;

    invoke-virtual {v2}, Lg/e/e;->a()Lg/a/d/e;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lg/e/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg/e/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/h;->x:Lg/e/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[family="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg/e/h;->x:Lg/e/e;

    invoke-virtual {v1}, Lg/e/e;->a()Lg/a/d/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lg/e/h;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x40

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "]"

    .line 5
    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
