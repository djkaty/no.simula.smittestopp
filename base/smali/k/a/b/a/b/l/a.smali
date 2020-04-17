.class public final Lk/a/b/a/b/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/l/c;


# instance fields
.field public a:Lk/a/b/a/b/a;


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

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 2
    check-cast p3, Ljava/lang/Void;

    .line 3
    sget-object p3, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    invoke-virtual {p1, p3}, Lk/a/b/a/d/g0/v;->a(Lk/a/b/a/d/g0/v$b;)V

    .line 4
    iget-object p3, p0, Lk/a/b/a/b/l/a;->a:Lk/a/b/a/b/a;

    if-nez p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Lk/a/b/a/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    :goto_0
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->i:Ljava/nio/ByteBuffer;

    .line 7
    iget-object p2, p1, Lk/a/b/a/d/g0/v;->x:Lk/a/b/a/d/w;

    if-eqz p2, :cond_1

    .line 8
    iget-object p3, p1, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-interface {p2, p1, p3}, Lk/a/b/a/d/w;->onSaslChallenge(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SaslChallenge{challenge="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/l/a;->a:Lk/a/b/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
