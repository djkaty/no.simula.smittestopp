.class public Lk/a/b/a/d/g0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/d/v;
.implements Lk/a/b/a/b/l/c$a;
.implements Lk/a/b/a/d/g0/t;
.implements Lk/a/b/a/d/g0/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/d/g0/v$d;,
        Lk/a/b/a/d/g0/v$c;,
        Lk/a/b/a/d/g0/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/d/v;",
        "Lk/a/b/a/b/l/c$a<",
        "Ljava/lang/Void;",
        ">;",
        "Lk/a/b/a/d/g0/t;",
        "Lk/a/b/a/d/g0/d0;"
    }
.end annotation


# static fields
.field public static final y:Ljava/util/logging/Logger;


# instance fields
.field public final b:Lk/a/b/a/c/r;

.field public final c:Lk/a/b/a/c/x;

.field public final d:Lk/a/b/a/d/g0/a0;

.field public e:Z

.field public f:Z

.field public final g:I

.field public final h:Lk/a/b/a/d/g0/j;

.field public i:Ljava/nio/ByteBuffer;

.field public j:Z

.field public k:Lk/a/b/a/b/a;

.field public l:Lk/a/b/a/d/g0/u;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lk/a/b/a/d/v$a;

.field public q:Lk/a/b/a/d/v$b;

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:[Lk/a/b/a/b/f;

.field public u:Lk/a/b/a/b/f;

.field public v:Lk/a/b/a/d/g0/v$b;

.field public w:Z

.field public x:Lk/a/b/a/d/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lk/a/b/a/d/g0/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lk/a/b/a/d/g0/v;->y:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/d/g0/a0;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/r;

    invoke-direct {v0}, Lk/a/b/a/c/r;-><init>()V

    iput-object v0, p0, Lk/a/b/a/d/g0/v;->b:Lk/a/b/a/c/r;

    .line 3
    new-instance v1, Lk/a/b/a/c/x;

    invoke-direct {v1, v0}, Lk/a/b/a/c/x;-><init>(Lk/a/b/a/c/r;)V

    iput-object v1, p0, Lk/a/b/a/d/g0/v;->c:Lk/a/b/a/c/x;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lk/a/b/a/d/g0/v;->e:Z

    .line 5
    iput-boolean v0, p0, Lk/a/b/a/d/g0/v;->f:Z

    .line 6
    sget-object v0, Lk/a/b/a/d/v$a;->PN_SASL_NONE:Lk/a/b/a/d/v$a;

    iput-object v0, p0, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    .line 7
    sget-object v0, Lk/a/b/a/d/v$b;->PN_SASL_IDLE:Lk/a/b/a/d/v$b;

    iput-object v0, p0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lk/a/b/a/d/g0/v;->w:Z

    .line 9
    iput-object p1, p0, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    .line 10
    iput p2, p0, Lk/a/b/a/d/g0/v;->g:I

    .line 11
    iget-object p1, p0, Lk/a/b/a/d/g0/v;->b:Lk/a/b/a/c/r;

    invoke-static {p1, v1}, Le/c/a/a/b/l/c;->a(Lk/a/b/a/c/i;Lk/a/b/a/c/x;)V

    .line 12
    new-instance p1, Lk/a/b/a/d/g0/u;

    iget-object v1, p0, Lk/a/b/a/d/g0/v;->b:Lk/a/b/a/c/r;

    iget-object v2, p0, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-direct {p1, p0, v1, p2, v2}, Lk/a/b/a/d/g0/u;-><init>(Lk/a/b/a/d/g0/t;Lk/a/b/a/c/i;ILk/a/b/a/d/g0/a0;)V

    iput-object p1, p0, Lk/a/b/a/d/g0/v;->l:Lk/a/b/a/d/g0/u;

    .line 13
    new-instance p1, Lk/a/b/a/d/g0/j;

    iget-object v1, p0, Lk/a/b/a/d/g0/v;->c:Lk/a/b/a/c/x;

    iget-object v2, p0, Lk/a/b/a/d/g0/v;->d:Lk/a/b/a/d/g0/a0;

    invoke-direct {p1, v1, p2, v0, v2}, Lk/a/b/a/d/g0/j;-><init>(Lk/a/b/a/c/x;IBLk/a/b/a/d/g0/a0;)V

    iput-object p1, p0, Lk/a/b/a/d/g0/v;->h:Lk/a/b/a/d/g0/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 22
    sget-object v0, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    iput-object v0, p0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    .line 23
    iget-object v0, p0, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 24
    aget-object v0, v0, v1

    iput-object v0, p0, Lk/a/b/a/d/g0/v;->u:Lk/a/b/a/b/f;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 12
    invoke-virtual {p0}, Lk/a/b/a/d/g0/v;->a()V

    const-string v0, "PLAIN"

    .line 13
    invoke-static {v0}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v0

    .line 14
    iput-object v0, p0, Lk/a/b/a/d/g0/v;->u:Lk/a/b/a/b/f;

    .line 15
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 16
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 17
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 18
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    array-length p1, p1

    add-int/lit8 p1, p1, 0x2

    array-length v1, p2

    invoke-static {p2, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    new-instance p1, Lk/a/b/a/b/a;

    invoke-direct {p1, v0}, Lk/a/b/a/b/a;-><init>([B)V

    .line 21
    iput-object p1, p0, Lk/a/b/a/d/g0/v;->k:Lk/a/b/a/b/a;

    return-void
.end method

.method public final a(Lk/a/b/a/d/g0/v$b;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    if-ne p1, v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Role is "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    array-length v1, p1

    new-array v1, v1, [Lk/a/b/a/b/f;

    iput-object v1, p0, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lk/a/b/a/d/g0/v;->t:[Lk/a/b/a/b/f;

    aget-object v3, p1, v1

    .line 4
    invoke-static {v3}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v3

    .line 5
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    sget-object v2, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    if-ne v1, v2, :cond_1

    .line 7
    aget-object p1, p1, v0

    .line 8
    invoke-static {p1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lk/a/b/a/d/g0/v;->u:Lk/a/b/a/b/f;

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lk/a/b/a/d/g0/v;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    sget-object v1, Lk/a/b/a/d/g0/v$b;->CLIENT:Lk/a/b/a/d/g0/v$b;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lk/a/b/a/d/g0/v;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SaslImpl [_outcome="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/a/b/a/d/g0/v;->p:Lk/a/b/a/d/v$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/v;->q:Lk/a/b/a/d/v$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", done="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk/a/b/a/d/g0/v;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/a/b/a/d/g0/v;->v:Lk/a/b/a/d/g0/v$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;)Lk/a/b/a/d/g0/l0;
    .locals 3

    .line 1
    new-instance v0, Lk/a/b/a/d/g0/v$a;

    new-instance v1, Lk/a/b/a/d/g0/v$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lk/a/b/a/d/g0/v$d;-><init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/b0;Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/v$a;)V

    new-instance v2, Lk/a/b/a/d/g0/o;

    invoke-direct {v2, p2, p1}, Lk/a/b/a/d/g0/o;-><init>(Lk/a/b/a/d/g0/f0;Lk/a/b/a/d/g0/b0;)V

    invoke-direct {v0, p0, v1, v2}, Lk/a/b/a/d/g0/v$a;-><init>(Lk/a/b/a/d/g0/v;Lk/a/b/a/d/g0/l0;Lk/a/b/a/d/g0/l0;)V

    return-object v0
.end method
