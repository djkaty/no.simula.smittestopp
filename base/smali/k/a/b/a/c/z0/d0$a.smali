.class public final Lk/a/b/a/c/z0/d0$a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/z0/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final x:Lk/a/b/a/b/k/v;


# direct methods
.method public constructor <init>(Lk/a/b/a/b/k/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

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
    iget-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 3
    iget-object p1, p1, Lk/a/b/a/b/k/w;->g:[Lk/a/b/a/b/f;

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 5
    iget-object p1, p1, Lk/a/b/a/b/k/w;->f:Ljava/util/Map;

    return-object p1

    .line 6
    :pswitch_2
    iget-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 7
    iget-boolean p1, p1, Lk/a/b/a/b/k/w;->e:Z

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_3
    iget-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 10
    iget-object p1, p1, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    return-object p1

    .line 11
    :pswitch_4
    iget-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 12
    iget-object p1, p1, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    .line 13
    invoke-virtual {p1}, Lk/a/b/a/b/k/y;->getPolicy()Lk/a/b/a/b/f;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_5
    iget-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 15
    iget-object p1, p1, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    .line 16
    invoke-virtual {p1}, Lk/a/b/a/b/k/x;->getValue()Lk/a/b/a/b/h;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_6
    iget-object p1, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 18
    iget-object p1, p1, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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
    iget-object v0, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 2
    iget-object v1, v0, Lk/a/b/a/b/k/w;->g:[Lk/a/b/a/b/f;

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lk/a/b/a/b/k/w;->f:Ljava/util/Map;

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v1, v0, Lk/a/b/a/b/k/w;->e:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, v0, Lk/a/b/a/b/k/w;->d:Lk/a/b/a/b/h;

    if-eqz v0, :cond_3

    .line 6
    sget-object v1, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    invoke-virtual {v0, v1}, Lk/a/b/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 7
    iget-object v0, v0, Lk/a/b/a/b/k/w;->c:Lk/a/b/a/b/k/y;

    .line 8
    sget-object v1, Lk/a/b/a/b/k/y;->SESSION_END:Lk/a/b/a/b/k/y;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 9
    iget-object v0, v0, Lk/a/b/a/b/k/w;->b:Lk/a/b/a/b/k/x;

    .line 10
    sget-object v1, Lk/a/b/a/b/k/x;->NONE:Lk/a/b/a/b/k/x;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lk/a/b/a/c/z0/d0$a;->x:Lk/a/b/a/b/k/v;

    .line 11
    iget-object v0, v0, Lk/a/b/a/b/k/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
