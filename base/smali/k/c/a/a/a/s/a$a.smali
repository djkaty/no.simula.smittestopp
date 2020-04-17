.class public Lk/c/a/a/a/s/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/c/a/a/a/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public final synthetic B:Lk/c/a/a/a/s/a;

.field public x:Lk/c/a/a/a/s/a;

.field public y:Lk/c/a/a/a/q;

.field public z:Lk/c/a/a/a/s/s/d;


# direct methods
.method public constructor <init>(Lk/c/a/a/a/s/a;Lk/c/a/a/a/s/a;Lk/c/a/a/a/q;Lk/c/a/a/a/s/s/d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/c/a/a/a/s/a$a;->x:Lk/c/a/a/a/s/a;

    .line 3
    iput-object p2, p0, Lk/c/a/a/a/s/a$a;->x:Lk/c/a/a/a/s/a;

    .line 4
    iput-object p3, p0, Lk/c/a/a/a/s/a$a;->y:Lk/c/a/a/a/q;

    .line 5
    iput-object p4, p0, Lk/c/a/a/a/s/a$a;->z:Lk/c/a/a/a/s/s/d;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MQTT Con: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 8
    check-cast p1, Lk/c/a/a/a/f;

    .line 9
    iget-object p1, p1, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/c/a/a/a/s/a$a;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 3
    iget-object v1, v0, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    .line 4
    iget-object v0, v0, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const-string v2, "connectBG:run"

    const-string v3, "220"

    .line 5
    invoke-interface {v1, v0, v2, v3}, Lk/c/a/a/a/t/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 7
    iget-object v1, v1, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    .line 8
    invoke-virtual {v1}, Lk/c/a/a/a/s/f;->c()[Lk/c/a/a/a/j;

    move-result-object v1

    .line 9
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 10
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 11
    iget-object v1, v1, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    .line 12
    iget-object v2, p0, Lk/c/a/a/a/s/a$a;->y:Lk/c/a/a/a/q;

    iget-object v3, p0, Lk/c/a/a/a/s/a$a;->z:Lk/c/a/a/a/s/s/d;

    invoke-virtual {v1, v2, v3}, Lk/c/a/a/a/s/f;->a(Lk/c/a/a/a/q;Lk/c/a/a/a/s/s/u;)V

    .line 13
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 14
    iget-object v1, v1, Lk/c/a/a/a/s/a;->e:[Lk/c/a/a/a/s/i;

    .line 15
    iget-object v2, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 16
    iget v2, v2, Lk/c/a/a/a/s/a;->d:I

    .line 17
    aget-object v1, v1, v2

    .line 18
    invoke-interface {v1}, Lk/c/a/a/a/s/i;->start()V

    .line 19
    iget-object v2, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    new-instance v3, Lk/c/a/a/a/s/d;

    iget-object v4, p0, Lk/c/a/a/a/s/a$a;->x:Lk/c/a/a/a/s/a;

    iget-object v5, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 20
    iget-object v5, v5, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    .line 21
    iget-object v6, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 22
    iget-object v6, v6, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    .line 23
    invoke-interface {v1}, Lk/c/a/a/a/s/i;->b()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lk/c/a/a/a/s/d;-><init>(Lk/c/a/a/a/s/a;Lk/c/a/a/a/s/b;Lk/c/a/a/a/s/f;Ljava/io/InputStream;)V

    .line 24
    iput-object v3, v2, Lk/c/a/a/a/s/a;->f:Lk/c/a/a/a/s/d;

    .line 25
    iget-object v2, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 26
    iget-object v2, v2, Lk/c/a/a/a/s/a;->f:Lk/c/a/a/a/s/d;

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MQTT Rec: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 28
    iget-object v4, v4, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 29
    check-cast v4, Lk/c/a/a/a/f;

    .line 30
    iget-object v4, v4, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 32
    iget-object v4, v4, Lk/c/a/a/a/s/a;->r:Ljava/util/concurrent/ExecutorService;

    .line 33
    invoke-virtual {v2, v3, v4}, Lk/c/a/a/a/s/d;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 34
    iget-object v2, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    new-instance v3, Lk/c/a/a/a/s/e;

    iget-object v4, p0, Lk/c/a/a/a/s/a$a;->x:Lk/c/a/a/a/s/a;

    iget-object v5, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 35
    iget-object v5, v5, Lk/c/a/a/a/s/a;->i:Lk/c/a/a/a/s/b;

    .line 36
    iget-object v6, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 37
    iget-object v6, v6, Lk/c/a/a/a/s/a;->m:Lk/c/a/a/a/s/f;

    .line 38
    invoke-interface {v1}, Lk/c/a/a/a/s/i;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v4, v5, v6, v1}, Lk/c/a/a/a/s/e;-><init>(Lk/c/a/a/a/s/a;Lk/c/a/a/a/s/b;Lk/c/a/a/a/s/f;Ljava/io/OutputStream;)V

    .line 39
    iput-object v3, v2, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    .line 40
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 41
    iget-object v1, v1, Lk/c/a/a/a/s/a;->g:Lk/c/a/a/a/s/e;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Snd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 43
    iget-object v3, v3, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 44
    check-cast v3, Lk/c/a/a/a/f;

    .line 45
    iget-object v3, v3, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 47
    iget-object v3, v3, Lk/c/a/a/a/s/a;->r:Ljava/util/concurrent/ExecutorService;

    .line 48
    invoke-virtual {v1, v2, v3}, Lk/c/a/a/a/s/e;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 49
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 50
    iget-object v1, v1, Lk/c/a/a/a/s/a;->h:Lk/c/a/a/a/s/c;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 52
    iget-object v3, v3, Lk/c/a/a/a/s/a;->c:Lk/c/a/a/a/b;

    .line 53
    check-cast v3, Lk/c/a/a/a/f;

    .line 54
    iget-object v3, v3, Lk/c/a/a/a/f;->y:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 56
    iget-object v3, v3, Lk/c/a/a/a/s/a;->r:Ljava/util/concurrent/ExecutorService;

    .line 57
    invoke-virtual {v1, v2, v3}, Lk/c/a/a/a/s/c;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 58
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    iget-object v2, p0, Lk/c/a/a/a/s/a$a;->z:Lk/c/a/a/a/s/s/d;

    iget-object v3, p0, Lk/c/a/a/a/s/a$a;->y:Lk/c/a/a/a/q;

    invoke-virtual {v1, v2, v3}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/s/s/u;Lk/c/a/a/a/q;)V

    goto :goto_2

    .line 59
    :cond_0
    aget-object v4, v1, v3

    .line 60
    iget-object v4, v4, Lk/c/a/a/a/q;->a:Lk/c/a/a/a/s/p;

    invoke-virtual {v4, v0}, Lk/c/a/a/a/s/p;->a(Lk/c/a/a/a/k;)V
    :try_end_0
    .catch Lk/c/a/a/a/k; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 62
    iget-object v2, v1, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    .line 63
    iget-object v3, v1, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v4, "connectBG:run"

    const-string v6, "209"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v0

    .line 64
    invoke-interface/range {v1 .. v6}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.security.GeneralSecurityException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Lk/c/a/a/a/p;

    invoke-direct {v1, v0}, Lk/c/a/a/a/p;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 67
    :cond_1
    new-instance v1, Lk/c/a/a/a/k;

    invoke-direct {v1, v0}, Lk/c/a/a/a/k;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 68
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    .line 69
    iget-object v2, v1, Lk/c/a/a/a/s/a;->b:Lk/c/a/a/a/t/b;

    .line 70
    iget-object v3, v1, Lk/c/a/a/a/s/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v4, "connectBG:run"

    const-string v6, "212"

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v0

    .line 71
    invoke-interface/range {v1 .. v6}, Lk/c/a/a/a/t/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v0, :cond_2

    .line 72
    iget-object v1, p0, Lk/c/a/a/a/s/a$a;->B:Lk/c/a/a/a/s/a;

    iget-object v2, p0, Lk/c/a/a/a/s/a$a;->y:Lk/c/a/a/a/q;

    invoke-virtual {v1, v2, v0}, Lk/c/a/a/a/s/a;->a(Lk/c/a/a/a/q;Lk/c/a/a/a/k;)V

    :cond_2
    return-void
.end method
