.class public Lk/a/b/a/c/c1/b$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/c1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public x:Lk/a/b/a/b/n/b;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/n/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

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
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 3
    iget-object p1, p1, Lk/a/b/a/b/n/b;->h:Ljava/util/Map;

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/n/b;->g:[Lk/a/b/a/b/f;

    return-object p1

    .line 6
    :pswitch_2
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 7
    iget-object p1, p1, Lk/a/b/a/b/n/b;->f:[Lk/a/b/a/b/f;

    return-object p1

    .line 8
    :pswitch_3
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 9
    iget-object p1, p1, Lk/a/b/a/b/n/b;->e:Lk/a/b/a/b/h;

    return-object p1

    .line 10
    :pswitch_4
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 11
    iget-object p1, p1, Lk/a/b/a/b/n/b;->d:Lk/a/b/a/b/h;

    return-object p1

    .line 12
    :pswitch_5
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 13
    iget-object p1, p1, Lk/a/b/a/b/n/b;->c:Lk/a/b/a/b/h;

    return-object p1

    .line 14
    :pswitch_6
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 15
    iget-object p1, p1, Lk/a/b/a/b/n/b;->b:Lk/a/b/a/b/h;

    return-object p1

    .line 16
    :pswitch_7
    iget-object p1, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 17
    iget-object p1, p1, Lk/a/b/a/b/n/b;->a:Lk/a/b/a/b/j;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    iget-object v0, p0, Lk/a/b/a/c/c1/b$a;->x:Lk/a/b/a/b/n/b;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/n/b;->h:Ljava/util/Map;

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lk/a/b/a/b/n/b;->g:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v0, Lk/a/b/a/b/n/b;->f:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, v0, Lk/a/b/a/b/n/b;->e:Lk/a/b/a/b/h;

    if-eqz v0, :cond_3

    .line 6
    sget-object v1, Lk/a/b/a/b/h;->B:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    return v0
.end method
