.class public final Lk/a/b/a/b/n/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/l;


# instance fields
.field public a:Lk/a/b/a/b/j;

.field public b:Lk/a/b/a/b/h;

.field public c:Lk/a/b/a/b/h;

.field public d:Lk/a/b/a/b/h;

.field public e:Lk/a/b/a/b/h;

.field public f:[Lk/a/b/a/b/f;

.field public g:[Lk/a/b/a/b/f;

.field public h:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Lk/a/b/a/b/h;->a(I)Lk/a/b/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lk/a/b/a/b/n/b;->e:Lk/a/b/a/b/h;

    return-void
.end method


# virtual methods
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

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/a0;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 2
    check-cast p3, Ljava/lang/Integer;

    .line 3
    iget-object v0, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/d/g0/k0;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lk/a/b/a/b/n/b;->a:Lk/a/b/a/b/j;

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    if-eqz v0, :cond_1

    .line 6
    new-instance p2, Lk/a/b/a/d/g0/y;

    invoke-direct {p2, v0}, Lk/a/b/a/d/g0/y;-><init>(Lk/a/b/a/d/g0/d;)V

    .line 7
    iget-object v0, v0, Lk/a/b/a/d/g0/d;->H:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p1, p2}, Lk/a/b/a/d/g0/a0;->a(Lk/a/b/a/d/g0/y;)Lk/a/b/a/d/g0/k0;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    throw p2

    .line 10
    :cond_2
    iget-object p2, p1, Lk/a/b/a/d/g0/a0;->O:Ljava/util/Map;

    invoke-virtual {v0}, Lk/a/b/a/b/j;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lk/a/b/a/d/g0/k0;

    if-eqz v0, :cond_5

    .line 11
    iget-object p2, v0, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    .line 12
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13
    iget v2, v0, Lk/a/b/a/d/g0/k0;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 14
    iget-object v2, v0, Lk/a/b/a/d/g0/k0;->b:Lk/a/b/a/d/g0/y;

    invoke-virtual {v2}, Lk/a/b/a/d/g0/f;->w()V

    .line 15
    :cond_4
    iput v1, v0, Lk/a/b/a/d/g0/k0;->d:I

    .line 16
    sget-object v1, Lk/a/b/a/d/g;->ACTIVE:Lk/a/b/a/d/g;

    .line 17
    iput-object v1, p2, Lk/a/b/a/d/g0/f;->y:Lk/a/b/a/d/g;

    .line 18
    iget-object v1, p0, Lk/a/b/a/b/n/b;->b:Lk/a/b/a/b/h;

    .line 19
    iput-object v1, v0, Lk/a/b/a/d/g0/k0;->j:Lk/a/b/a/b/h;

    .line 20
    iget-object v1, p1, Lk/a/b/a/d/g0/a0;->N:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p1, Lk/a/b/a/d/g0/a0;->J:Lk/a/b/a/d/g0/d;

    sget-object p3, Lk/a/b/a/d/h$b;->SESSION_REMOTE_OPEN:Lk/a/b/a/d/h$b;

    invoke-virtual {p1, p3, p2}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    :goto_2
    return-void

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "uncorrelated channel: "

    invoke-static {p2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 23
    iget-object p3, p0, Lk/a/b/a/b/n/b;->a:Lk/a/b/a/b/j;

    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Begin{remoteChannel="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/n/b;->a:Lk/a/b/a/b/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextOutgoingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/b;->b:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", incomingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/b;->c:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outgoingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/b;->d:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", handleMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/b;->e:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offeredCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/b;->f:[Lk/a/b/a/b/f;

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

    const-string v1, ", desiredCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/b;->g:[Lk/a/b/a/b/f;

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/n/b;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
