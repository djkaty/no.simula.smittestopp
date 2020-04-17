.class public Lk/a/b/a/c/c1/a$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/c1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public x:Lk/a/b/a/b/n/a;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/n/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown index "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 3
    iget-object p1, p1, Lk/a/b/a/b/n/a;->n:Ljava/util/Map;

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/n/a;->m:[Lk/a/b/a/b/f;

    return-object p1

    .line 6
    :pswitch_2
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 7
    iget-object p1, p1, Lk/a/b/a/b/n/a;->l:[Lk/a/b/a/b/f;

    return-object p1

    .line 8
    :pswitch_3
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 9
    iget-object p1, p1, Lk/a/b/a/b/n/a;->k:Lk/a/b/a/b/i;

    return-object p1

    .line 10
    :pswitch_4
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 11
    iget-object p1, p1, Lk/a/b/a/b/n/a;->j:Lk/a/b/a/b/h;

    return-object p1

    .line 12
    :pswitch_5
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 13
    iget-boolean p1, p1, Lk/a/b/a/b/n/a;->i:Z

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_6
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 16
    iget-object p1, p1, Lk/a/b/a/b/n/a;->h:Ljava/util/Map;

    return-object p1

    .line 17
    :pswitch_7
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 18
    iget-object p1, p1, Lk/a/b/a/b/n/a;->g:Lk/a/b/a/b/n/r;

    return-object p1

    .line 19
    :pswitch_8
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 20
    iget-object p1, p1, Lk/a/b/a/b/n/a;->f:Lk/a/b/a/b/n/q;

    return-object p1

    .line 21
    :pswitch_9
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 22
    iget-object p1, p1, Lk/a/b/a/b/n/a;->e:Lk/a/b/a/b/n/n;

    .line 23
    invoke-virtual {p1}, Lk/a/b/a/b/n/n;->getValue()Lk/a/b/a/b/g;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_a
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 25
    iget-object p1, p1, Lk/a/b/a/b/n/a;->d:Lk/a/b/a/b/n/p;

    .line 26
    invoke-virtual {p1}, Lk/a/b/a/b/n/p;->getValue()Lk/a/b/a/b/g;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_b
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 28
    iget-object p1, p1, Lk/a/b/a/b/n/a;->c:Lk/a/b/a/b/n/o;

    .line 29
    invoke-virtual {p1}, Lk/a/b/a/b/n/o;->getValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_c
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 31
    iget-object p1, p1, Lk/a/b/a/b/n/a;->b:Lk/a/b/a/b/h;

    return-object p1

    .line 32
    :pswitch_d
    iget-object p1, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 33
    iget-object p1, p1, Lk/a/b/a/b/n/a;->a:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/n/a;->n:Ljava/util/Map;

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lk/a/b/a/b/n/a;->m:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lk/a/b/a/b/n/a;->l:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v0, Lk/a/b/a/b/n/a;->k:Lk/a/b/a/b/i;

    if-eqz v1, :cond_3

    const/16 v0, 0xb

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, v0, Lk/a/b/a/b/n/a;->j:Lk/a/b/a/b/h;

    if-eqz v1, :cond_4

    const/16 v0, 0xa

    goto :goto_0

    .line 7
    :cond_4
    iget-boolean v1, v0, Lk/a/b/a/b/n/a;->i:Z

    if-eqz v1, :cond_5

    const/16 v0, 0x9

    goto :goto_0

    .line 8
    :cond_5
    iget-object v1, v0, Lk/a/b/a/b/n/a;->h:Ljava/util/Map;

    if-eqz v1, :cond_6

    const/16 v0, 0x8

    goto :goto_0

    .line 9
    :cond_6
    iget-object v1, v0, Lk/a/b/a/b/n/a;->g:Lk/a/b/a/b/n/r;

    if-eqz v1, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    .line 10
    :cond_7
    iget-object v1, v0, Lk/a/b/a/b/n/a;->f:Lk/a/b/a/b/n/q;

    if-eqz v1, :cond_8

    const/4 v0, 0x6

    goto :goto_0

    .line 11
    :cond_8
    iget-object v0, v0, Lk/a/b/a/b/n/a;->e:Lk/a/b/a/b/n/n;

    if-eqz v0, :cond_9

    .line 12
    sget-object v1, Lk/a/b/a/b/n/n;->FIRST:Lk/a/b/a/b/n/n;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x5

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lk/a/b/a/c/c1/a$a;->x:Lk/a/b/a/b/n/a;

    .line 13
    iget-object v0, v0, Lk/a/b/a/b/n/a;->d:Lk/a/b/a/b/n/p;

    if-eqz v0, :cond_a

    .line 14
    sget-object v1, Lk/a/b/a/b/n/p;->MIXED:Lk/a/b/a/b/n/p;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x4

    goto :goto_0

    :cond_a
    const/4 v0, 0x3

    :goto_0
    return v0
.end method
