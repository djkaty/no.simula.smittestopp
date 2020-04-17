.class public Lk/a/b/a/c/c1/k$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/c1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public x:Lk/a/b/a/b/n/k;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/n/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

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
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 3
    iget-object p1, p1, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 5
    iget-boolean p1, p1, Lk/a/b/a/b/n/k;->j:Z

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_2
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 8
    iget-boolean p1, p1, Lk/a/b/a/b/n/k;->i:Z

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 11
    iget-object p1, p1, Lk/a/b/a/b/n/k;->h:Lk/a/b/a/b/h;

    return-object p1

    .line 12
    :pswitch_4
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 13
    iget-object p1, p1, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    return-object p1

    .line 14
    :pswitch_5
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 15
    iget-object p1, p1, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    return-object p1

    .line 16
    :pswitch_6
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 17
    iget-object p1, p1, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    return-object p1

    .line 18
    :pswitch_7
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 19
    iget-object p1, p1, Lk/a/b/a/b/n/k;->d:Lk/a/b/a/b/h;

    return-object p1

    .line 20
    :pswitch_8
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 21
    iget-object p1, p1, Lk/a/b/a/b/n/k;->c:Lk/a/b/a/b/h;

    return-object p1

    .line 22
    :pswitch_9
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 23
    iget-object p1, p1, Lk/a/b/a/b/n/k;->b:Lk/a/b/a/b/h;

    return-object p1

    .line 24
    :pswitch_a
    iget-object p1, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 25
    iget-object p1, p1, Lk/a/b/a/b/n/k;->a:Lk/a/b/a/b/h;

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
    iget-object v0, p0, Lk/a/b/a/c/c1/k$a;->x:Lk/a/b/a/b/n/k;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/n/k;->k:Ljava/util/Map;

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, v0, Lk/a/b/a/b/n/k;->j:Z

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, v0, Lk/a/b/a/b/n/k;->i:Z

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v0, Lk/a/b/a/b/n/k;->h:Lk/a/b/a/b/h;

    if-eqz v1, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, v0, Lk/a/b/a/b/n/k;->g:Lk/a/b/a/b/h;

    if-eqz v1, :cond_4

    const/4 v0, 0x7

    goto :goto_0

    .line 7
    :cond_4
    iget-object v1, v0, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    if-eqz v1, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 8
    :cond_5
    iget-object v0, v0, Lk/a/b/a/b/n/k;->e:Lk/a/b/a/b/h;

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    :goto_0
    return v0
.end method
