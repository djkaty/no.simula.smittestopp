.class public final Lk/a/b/a/b/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/l/c;


# instance fields
.field public a:Lk/a/b/a/b/f;

.field public b:Lk/a/b/a/b/a;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/l/c$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/a/b/a/b/l/c$a<",
            "TE;>;",
            "Lk/a/b/a/b/a;",
            "TE;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lk/a/b/a/d/g0/v;

    if-eqz p1, :cond_3

    .line 2
    check-cast p3, Ljava/lang/Void;

    .line 3
    iget-object p2, p1, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    iput-object p2, p1, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    .line 5
    :cond_0
    sget-object p2, Lk/a/b/a/d/g0/v$b;->SERVER:Lk/a/b/a/d/g0/v$b;

    invoke-virtual {p1, p2}, Lk/a/b/a/d/g0/v;->a(Lk/a/b/a/d/g0/v$b;)V

    .line 6
    iget-object p2, p0, Lk/a/b/a/b/l/d;->c:Ljava/lang/String;

    .line 7
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->r:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lk/a/b/a/b/l/d;->a:Lk/a/b/a/b/f;

    .line 9
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->u:Lk/a/b/a/b/f;

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p1, Lk/a/b/a/d/g0/v;->m:Z

    .line 11
    iget-object p2, p0, Lk/a/b/a/b/l/d;->b:Lk/a/b/a/b/a;

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p2}, Lk/a/b/a/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 13
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->i:Ljava/nio/ByteBuffer;

    .line 14
    :cond_1
    iget-object p2, p1, Lk/a/b/a/d/g0/v;->x:Lk/a/b/a/d/w;

    if-eqz p2, :cond_2

    .line 15
    iget-object p3, p1, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-interface {p2, p1, p3}, Lk/a/b/a/d/w;->onSaslInit(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SaslInit{mechanism="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/l/d;->a:Lk/a/b/a/b/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/l/d;->b:Lk/a/b/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/l/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
