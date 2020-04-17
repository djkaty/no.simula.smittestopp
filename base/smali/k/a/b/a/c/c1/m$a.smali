.class public Lk/a/b/a/c/c1/m$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/c1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public x:Lk/a/b/a/b/n/s;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/n/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

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
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 3
    iget-boolean p1, p1, Lk/a/b/a/b/n/s;->k:Z

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 6
    iget-boolean p1, p1, Lk/a/b/a/b/n/s;->j:Z

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_2
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 9
    iget-boolean p1, p1, Lk/a/b/a/b/n/s;->i:Z

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_3
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 12
    iget-object p1, p1, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    return-object p1

    .line 13
    :pswitch_4
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 14
    iget-object p1, p1, Lk/a/b/a/b/n/s;->g:Lk/a/b/a/b/n/n;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lk/a/b/a/b/n/n;->getValue()Lk/a/b/a/b/g;

    move-result-object p1

    :goto_0
    return-object p1

    .line 16
    :pswitch_5
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 17
    iget-boolean p1, p1, Lk/a/b/a/b/n/s;->f:Z

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_6
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 20
    iget-object p1, p1, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    return-object p1

    .line 21
    :pswitch_7
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 22
    iget-object p1, p1, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    return-object p1

    .line 23
    :pswitch_8
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 24
    iget-object p1, p1, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    return-object p1

    .line 25
    :pswitch_9
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 26
    iget-object p1, p1, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    return-object p1

    .line 27
    :pswitch_a
    iget-object p1, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 28
    iget-object p1, p1, Lk/a/b/a/b/n/s;->a:Lk/a/b/a/b/h;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
    iget-object v0, p0, Lk/a/b/a/c/c1/m$a;->x:Lk/a/b/a/b/n/s;

    .line 2
    iget-boolean v1, v0, Lk/a/b/a/b/n/s;->k:Z

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, v0, Lk/a/b/a/b/n/s;->j:Z

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, v0, Lk/a/b/a/b/n/s;->i:Z

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v0, Lk/a/b/a/b/n/s;->h:Lk/a/b/a/b/n/e;

    if-eqz v1, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, v0, Lk/a/b/a/b/n/s;->g:Lk/a/b/a/b/n/n;

    if-eqz v1, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    .line 7
    :cond_4
    iget-boolean v1, v0, Lk/a/b/a/b/n/s;->f:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 8
    :cond_5
    iget-object v1, v0, Lk/a/b/a/b/n/s;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    .line 9
    :cond_6
    iget-object v1, v0, Lk/a/b/a/b/n/s;->d:Lk/a/b/a/b/h;

    if-eqz v1, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    .line 10
    :cond_7
    iget-object v1, v0, Lk/a/b/a/b/n/s;->c:Lk/a/b/a/b/a;

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_0

    .line 11
    :cond_8
    iget-object v0, v0, Lk/a/b/a/b/n/s;->b:Lk/a/b/a/b/h;

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
