.class public Lk/b/a/l2/l;
.super Lk/b/a/n;
.source "SourceFile"

# interfaces
.implements Lk/b/a/d;


# instance fields
.field public x:Lk/b/a/e;

.field public y:I


# direct methods
.method public constructor <init>(ILk/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    iput-object p2, p0, Lk/b/a/l2/l;->x:Lk/b/a/e;

    iput p1, p0, Lk/b/a/l2/l;->y:I

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lk/b/a/l2/l;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Lk/b/a/l2/l;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lk/b/a/b0;

    if-eqz v0, :cond_2

    check-cast p0, Lk/b/a/b0;

    .line 1
    iget v0, p0, Lk/b/a/b0;->x:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag: "

    invoke-static {v1, v0}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance v2, Lk/b/a/l2/l;

    invoke-static {p0, v1}, Lk/b/a/o;->a(Lk/b/a/b0;Z)Lk/b/a/o;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lk/b/a/l2/l;-><init>(ILk/b/a/e;)V

    return-object v2

    :pswitch_1
    new-instance v2, Lk/b/a/l2/l;

    invoke-static {p0, v1}, Lk/b/a/p;->a(Lk/b/a/b0;Z)Lk/b/a/p;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lk/b/a/l2/l;-><init>(ILk/b/a/e;)V

    return-object v2

    :pswitch_2
    new-instance v1, Lk/b/a/l2/l;

    invoke-static {p0}, Lk/b/a/k2/c;->a(Lk/b/a/b0;)Lk/b/a/k2/c;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lk/b/a/l2/l;-><init>(ILk/b/a/e;)V

    return-object v1

    :pswitch_3
    new-instance v1, Lk/b/a/l2/l;

    .line 3
    invoke-virtual {p0}, Lk/b/a/b0;->j()Lk/b/a/t;

    move-result-object p0

    instance-of v2, p0, Lk/b/a/x0;

    if-eqz v2, :cond_1

    invoke-static {p0}, Lk/b/a/x0;->a(Ljava/lang/Object;)Lk/b/a/x0;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v2, Lk/b/a/x0;

    invoke-static {p0}, Lk/b/a/p;->a(Ljava/lang/Object;)Lk/b/a/p;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/p;->j()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lk/b/a/x0;-><init>([B)V

    move-object p0, v2

    .line 4
    :goto_0
    invoke-direct {v1, v0, p0}, Lk/b/a/l2/l;-><init>(ILk/b/a/e;)V

    return-object v1

    :pswitch_4
    new-instance v2, Lk/b/a/l2/l;

    invoke-static {p0, v1}, Lk/b/a/u;->a(Lk/b/a/b0;Z)Lk/b/a/u;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lk/b/a/l2/l;-><init>(ILk/b/a/e;)V

    return-object v2

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/l2/l;->a(Ljava/lang/Object;)Lk/b/a/l2/l;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1}, Le/a/a/a/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    check-cast p0, Lk/b/a/l2/l;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 4

    iget v0, p0, Lk/b/a/l2/l;->y:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lk/b/a/h1;

    iget v2, p0, Lk/b/a/l2/l;->y:I

    iget-object v3, p0, Lk/b/a/l2/l;->x:Lk/b/a/e;

    invoke-direct {v1, v0, v2, v3}, Lk/b/a/h1;-><init>(ZILk/b/a/e;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lk/b/a/l2/l;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lk/b/a/l2/l;->y:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lk/b/a/l2/l;->x:Lk/b/a/e;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk/b/a/l2/l;->x:Lk/b/a/e;

    invoke-static {v1}, Lk/b/a/k2/c;->a(Ljava/lang/Object;)Lk/b/a/k2/c;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/k2/c;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lk/b/a/l2/l;->x:Lk/b/a/e;

    invoke-static {v1}, Lk/b/a/x0;->a(Ljava/lang/Object;)Lk/b/a/x0;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/x0;->d()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
