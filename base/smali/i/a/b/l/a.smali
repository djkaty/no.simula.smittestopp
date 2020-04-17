.class public Li/a/b/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Li/a/b/l/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "JSON_SMART_SIMPLE"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Li/a/b/l/a;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Li/a/b/l/a;->b:Li/a/b/l/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/a/b/l/d;

    iget v1, p0, Li/a/b/l/a;->a:I

    invoke-direct {v0, v1}, Li/a/b/l/d;-><init>(I)V

    iput-object v0, p0, Li/a/b/l/a;->b:Li/a/b/l/d;

    .line 3
    :cond_0
    iget-object v0, p0, Li/a/b/l/a;->b:Li/a/b/l/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4
    sget-object v2, Li/a/b/i;->c:Li/a/b/n/e;

    iget-object v2, v2, Li/a/b/n/e;->b:Li/a/b/n/f;

    .line 5
    iget-object v3, v2, Li/a/b/n/f;->a:Li/a/b/n/e;

    .line 6
    iput-object p1, v0, Li/a/b/l/d;->x:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, v0, Li/a/b/l/c;->w:I

    const/4 p1, -0x1

    .line 8
    iput p1, v0, Li/a/b/l/b;->f:I

    .line 9
    :try_start_0
    invoke-virtual {v0}, Li/a/b/l/b;->c()V

    .line 10
    invoke-virtual {v0, v2}, Li/a/b/l/b;->b(Li/a/b/n/f;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    iget-boolean v2, v0, Li/a/b/l/b;->l:Z

    if-eqz v2, :cond_3

    .line 12
    iget-boolean v2, v0, Li/a/b/l/b;->m:Z

    if-nez v2, :cond_1

    .line 13
    invoke-virtual {v0}, Li/a/b/l/b;->g()V

    .line 14
    :cond_1
    iget-char v2, v0, Li/a/b/l/b;->a:C

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Li/a/b/l/e;

    iget v1, v0, Li/a/b/l/b;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-char v3, v0, Li/a/b/l/b;->a:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Li/a/b/l/e;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :cond_3
    :goto_0
    iput-object v1, v0, Li/a/b/l/b;->e:Ljava/lang/String;

    .line 17
    iput-object v1, v0, Li/a/b/l/b;->d:Ljava/lang/Object;

    return-object p1

    :catch_0
    move-exception p1

    .line 18
    new-instance v1, Li/a/b/l/e;

    iget v0, v0, Li/a/b/l/b;->f:I

    invoke-direct {v1, v0, p1}, Li/a/b/l/e;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 19
    :cond_4
    throw v1
.end method
