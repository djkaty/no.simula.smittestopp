.class public final Lk/a/b/a/b/k/u;
.super Lk/a/b/a/b/k/w;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/n/q;


# instance fields
.field public h:Lk/a/b/a/b/f;

.field public i:Ljava/util/Map;

.field public j:Lk/a/b/a/b/k/o;

.field public k:[Lk/a/b/a/b/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lk/a/b/a/b/k/w;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/b/k/u;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lk/a/b/a/b/k/w;-><init>(Lk/a/b/a/b/k/w;)V

    .line 2
    iget-object v0, p1, Lk/a/b/a/b/k/u;->h:Lk/a/b/a/b/f;

    iput-object v0, p0, Lk/a/b/a/b/k/u;->h:Lk/a/b/a/b/f;

    .line 3
    iget-object v0, p1, Lk/a/b/a/b/k/u;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lk/a/b/a/b/k/u;->i:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lk/a/b/a/b/k/u;->i:Ljava/util/Map;

    .line 5
    :cond_0
    iget-object v0, p1, Lk/a/b/a/b/k/u;->j:Lk/a/b/a/b/k/o;

    iput-object v0, p0, Lk/a/b/a/b/k/u;->j:Lk/a/b/a/b/k/o;

    .line 6
    iget-object p1, p1, Lk/a/b/a/b/k/u;->k:[Lk/a/b/a/b/f;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, [Lk/a/b/a/b/f;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lk/a/b/a/b/f;

    iput-object p1, p0, Lk/a/b/a/b/k/u;->k:[Lk/a/b/a/b/f;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lk/a/b/a/b/n/q;
    .locals 1

    .line 1
    new-instance v0, Lk/a/b/a/b/k/u;

    invoke-direct {v0, p0}, Lk/a/b/a/b/k/u;-><init>(Lk/a/b/a/b/k/u;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Source{address=\'"

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", durable="

    .line 3
    invoke-static {v0, v1, v2, v3}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiryPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dynamic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-boolean v1, p0, Lk/a/b/a/b/k/w;->e:Z

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicNodeProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lk/a/b/a/b/k/w;->f:Ljava/util/Map;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distributionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/k/u;->h:Lk/a/b/a/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/k/u;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultOutcome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/k/u;->j:Lk/a/b/a/b/k/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outcomes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/k/u;->k:[Lk/a/b/a/b/f;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lk/a/b/a/b/k/w;->g:[Lk/a/b/a/b/f;

    if-nez v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
