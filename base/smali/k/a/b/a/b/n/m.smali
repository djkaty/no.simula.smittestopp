.class public final Lk/a/b/a/b/n/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lk/a/b/a/b/h;

.field public d:Lk/a/b/a/b/j;

.field public e:Lk/a/b/a/b/h;

.field public f:[Lk/a/b/a/b/f;

.field public g:[Lk/a/b/a/b/f;

.field public h:[Lk/a/b/a/b/f;

.field public i:[Lk/a/b/a/b/f;

.field public j:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v1

    iput-object v1, p0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    .line 3
    invoke-static {v0}, Lk/a/b/a/b/j;->a(S)Lk/a/b/a/b/j;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lk/a/b/a/b/n/m;->a:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the container-id field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lk/a/b/a/b/n/l$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/b/n/l$a<",
            "TE;>;",
            "Lk/a/b/a/b/a;",
            "TE;)V"
        }
    .end annotation

    .line 3
    check-cast p1, Lk/a/b/a/d/g0/a0;

    if-eqz p1, :cond_5

    .line 4
    check-cast p3, Ljava/lang/Integer;

    .line 5
    sget-object p2, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    .line 6
    iput-object p2, p1, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 7
    iget-object p3, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz p3, :cond_0

    .line 8
    iput-object p2, p3, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 9
    sget-object p2, Lk/a/b/a/d/h$b;->CONNECTION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    invoke-virtual {p3, p2, p3}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p0, p1, Lk/a/b/a/d/g0/a0;->Z:Lk/a/b/a/b/n/m;

    .line 11
    :goto_0
    iget p2, p1, Lk/a/b/a/d/g0/a0;->U:I

    .line 12
    iget-object p3, p0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    .line 13
    invoke-virtual {p3}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    .line 14
    iget-object p2, p0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    .line 15
    invoke-virtual {p2}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide p2

    long-to-int p3, p2

    iput p3, p1, Lk/a/b/a/d/g0/a0;->U:I

    .line 16
    iget-object p2, p0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    .line 17
    invoke-virtual {p2}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide p2

    const-wide/32 v0, 0x7fffffff

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 18
    :cond_1
    iget p3, p1, Lk/a/b/a/d/g0/a0;->V:I

    if-lez p3, :cond_2

    .line 19
    iget-object p2, p0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    .line 20
    invoke-virtual {p2}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide p2

    iget v0, p1, Lk/a/b/a/d/g0/a0;->V:I

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 21
    :cond_2
    iget-object p3, p1, Lk/a/b/a/d/g0/a0;->X:Lk/a/b/a/d/g0/j;

    .line 22
    iput p2, p3, Lk/a/b/a/d/g0/j;->d:I

    .line 23
    iget-object p2, p0, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    .line 24
    invoke-virtual {p2}, Lk/a/b/a/b/j;->longValue()J

    move-result-wide p2

    cmp-long v0, p2, v2

    if-lez v0, :cond_3

    .line 25
    iget-object p2, p0, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    .line 26
    invoke-virtual {p2}, Lk/a/b/a/b/j;->longValue()J

    .line 27
    :cond_3
    iget-object p2, p0, Lk/a/b/a/b/n/m;->e:Lk/a/b/a/b/h;

    if-eqz p2, :cond_4

    .line 28
    invoke-virtual {p2}, Lk/a/b/a/b/h;->longValue()J

    move-result-wide p2

    cmp-long v0, p2, v2

    if-lez v0, :cond_4

    .line 29
    iget-object p2, p0, Lk/a/b/a/b/n/m;->e:Lk/a/b/a/b/h;

    .line 30
    iget p2, p2, Lk/a/b/a/b/h;->x:I

    .line 31
    iput p2, p1, Lk/a/b/a/d/g0/a0;->o0:I

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x0

    .line 32
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Open{ containerId=\'"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/m;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", hostname=\'"

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lk/a/b/a/b/n/m;->b:Ljava/lang/String;

    const-string v3, ", maxFrameSize="

    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channelMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idleTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/m;->e:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outgoingLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/m;->f:[Lk/a/b/a/b/f;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", incomingLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/m;->g:[Lk/a/b/a/b/f;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offeredCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/m;->h:[Lk/a/b/a/b/f;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", desiredCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/m;->i:[Lk/a/b/a/b/f;

    if-nez v1, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/m;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
