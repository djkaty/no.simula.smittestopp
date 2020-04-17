.class public Lk/a/b/a/c/c1/l$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/c1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public x:Lk/a/b/a/b/n/m;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/n/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

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
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 3
    iget-object p1, p1, Lk/a/b/a/b/n/m;->j:Ljava/util/Map;

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/n/m;->i:[Lk/a/b/a/b/f;

    return-object p1

    .line 6
    :pswitch_2
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 7
    iget-object p1, p1, Lk/a/b/a/b/n/m;->h:[Lk/a/b/a/b/f;

    return-object p1

    .line 8
    :pswitch_3
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 9
    iget-object p1, p1, Lk/a/b/a/b/n/m;->g:[Lk/a/b/a/b/f;

    return-object p1

    .line 10
    :pswitch_4
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 11
    iget-object p1, p1, Lk/a/b/a/b/n/m;->f:[Lk/a/b/a/b/f;

    return-object p1

    .line 12
    :pswitch_5
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 13
    iget-object p1, p1, Lk/a/b/a/b/n/m;->e:Lk/a/b/a/b/h;

    return-object p1

    .line 14
    :pswitch_6
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 15
    iget-object p1, p1, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    return-object p1

    .line 16
    :pswitch_7
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 17
    iget-object p1, p1, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    return-object p1

    .line 18
    :pswitch_8
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 19
    iget-object p1, p1, Lk/a/b/a/b/n/m;->b:Ljava/lang/String;

    return-object p1

    .line 20
    :pswitch_9
    iget-object p1, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 21
    iget-object p1, p1, Lk/a/b/a/b/n/m;->a:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    iget-object v0, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/n/m;->j:Ljava/util/Map;

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lk/a/b/a/b/n/m;->i:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lk/a/b/a/b/n/m;->h:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, v0, Lk/a/b/a/b/n/m;->g:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, v0, Lk/a/b/a/b/n/m;->f:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    .line 7
    :cond_4
    iget-object v1, v0, Lk/a/b/a/b/n/m;->e:Lk/a/b/a/b/h;

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    .line 8
    :cond_5
    iget-object v0, v0, Lk/a/b/a/b/n/m;->d:Lk/a/b/a/b/j;

    if-eqz v0, :cond_6

    .line 9
    sget-object v1, Lk/a/b/a/b/j;->z:Lk/a/b/a/b/j;

    invoke-virtual {v0, v1}, Lk/a/b/a/b/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 10
    iget-object v0, v0, Lk/a/b/a/b/n/m;->c:Lk/a/b/a/b/h;

    if-eqz v0, :cond_7

    .line 11
    sget-object v1, Lk/a/b/a/b/h;->B:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lk/a/b/a/c/c1/l$a;->x:Lk/a/b/a/b/n/m;

    .line 12
    iget-object v0, v0, Lk/a/b/a/b/n/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
