.class public final Lk/a/b/a/b/l/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/l/c;


# instance fields
.field public a:[Lk/a/b/a/b/f;


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

    .line 3
    check-cast p1, Lk/a/b/a/d/g0/v;

    if-eqz p1, :cond_2

    .line 4
    check-cast p3, Ljava/lang/Void;

    .line 5
    iget-object p2, p1, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lk/a/b/a/d/g0/v;->a()V

    .line 7
    :cond_0
    sget-object p2, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    invoke-virtual {p1, p2}, Lk/a/b/a/d/g0/v;->a(Lk/a/b/a/d/g0/v$b;)V

    .line 8
    iget-object p2, p0, Lk/a/b/a/b/l/e;->a:[Lk/a/b/a/b/f;

    .line 9
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    .line 10
    iget-object p2, p1, Lk/a/b/a/d/g0/v;->x:Lk/a/b/a/d/w;

    if-eqz p2, :cond_1

    .line 11
    iget-object p3, p1, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-interface {p2, p1, p3}, Lk/a/b/a/d/w;->onSaslMechanisms(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1
.end method

.method public varargs a([Lk/a/b/a/b/f;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lk/a/b/a/b/l/e;->a:[Lk/a/b/a/b/f;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "the sasl-server-mechanisms field is mandatory"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SaslMechanisms{saslServerMechanisms="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/l/e;->a:[Lk/a/b/a/b/f;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
