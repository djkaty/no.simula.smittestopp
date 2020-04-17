.class public final Lk/a/b/a/b/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/b/l/c;


# instance fields
.field public a:Lk/a/b/a/b/l/b;

.field public b:Lk/a/b/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/l/c$a;Lk/a/b/a/b/a;Ljava/lang/Object;)V
    .locals 5
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

    if-eqz p1, :cond_6

    .line 2
    check-cast p3, Ljava/lang/Void;

    .line 3
    sget-object p3, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    invoke-virtual {p1, p3}, Lk/a/b/a/d/g0/v;->a(Lk/a/b/a/d/g0/v$b;)V

    .line 4
    invoke-static {}, Lk/a/b/a/d/v$a;->values()[Lk/a/b/a/d/v$a;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    .line 5
    iget-object v3, p0, Lk/a/b/a/b/l/f;->b:Lk/a/b/a/b/a;

    if-nez v3, :cond_0

    move-object v3, p2

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v3}, Lk/a/b/a/b/a;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 7
    :goto_1
    iput-object v3, p1, Lk/a/b/a/d/g0/v;->i:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2}, Lk/a/b/a/d/v$a;->getCode()B

    move-result v3

    .line 9
    iget-object v4, p0, Lk/a/b/a/b/l/f;->a:Lk/a/b/a/b/l/b;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 11
    iput-object v2, p1, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    .line 12
    iget-object p2, p1, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    sget-object p3, Lk/a/b/a/d/v$b;->PN_SASL_IDLE:Lk/a/b/a/d/v$b;

    if-eq p2, p3, :cond_3

    .line 13
    sget-object p2, Lk/a/b/a/d/v$a;->PN_SASL_OK:Lk/a/b/a/d/v$a;

    if-ne v2, p2, :cond_1

    sget-object p2, Lk/a/b/a/d/v$b;->PN_SASL_PASS:Lk/a/b/a/d/v$b;

    goto :goto_2

    :cond_1
    sget-object p2, Lk/a/b/a/d/v$b;->PN_SASL_FAIL:Lk/a/b/a/d/v$b;

    .line 14
    :goto_2
    iput-object p2, p1, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p1, Lk/a/b/a/d/g0/v;->s:Z

    .line 16
    sget-object p2, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    sget-object p2, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handled outcome: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object p2, p1, Lk/a/b/a/d/g0/v;->x:Lk/a/b/a/d/w;

    if-eqz p2, :cond_5

    .line 19
    iget-object p3, p1, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-interface {p2, p1, p3}, Lk/a/b/a/d/w;->onSaslOutcome(Lk/a/b/a/d/v;Lk/a/b/a/d/c0;)V

    :cond_5
    return-void

    .line 20
    :cond_6
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SaslOutcome{_code="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/a/b/a/b/l/f;->a:Lk/a/b/a/b/l/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _additionalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/b/l/f;->b:Lk/a/b/a/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
