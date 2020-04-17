.class public Lk/b/g/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/g/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public synthetic constructor <init>(Lk/b/g/e;Lk/b/g/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/g/e$d;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lk/b/g/c;
    .locals 5

    :try_start_0
    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    .line 1
    instance-of v0, p1, Lk/b/a/j2/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/a/j2/a;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lk/b/a/j2/a;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/j2/a;-><init>(Lk/b/a/u;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 2
    :goto_0
    new-instance v0, Lk/b/a/l2/a;

    sget-object v2, Lk/b/a/m2/f;->m:Lk/b/a/o;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v3}, Lk/b/a/j2/a;->a(I)Lk/b/a/t;

    move-result-object v3

    .line 4
    invoke-direct {v0, v2, v3}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    new-instance v2, Lk/b/a/i2/f;

    .line 5
    invoke-direct {v2, v0, p1, v1, v1}, Lk/b/a/i2/f;-><init>(Lk/b/a/l2/a;Lk/b/a/e;Lk/b/a/x;[B)V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {p1, v3}, Lk/b/a/j2/a;->a(I)Lk/b/a/t;

    move-result-object v4

    check-cast v4, Lk/b/a/r0;

    if-eqz v4, :cond_2

    .line 7
    new-instance v1, Lk/b/a/l2/s;

    .line 8
    invoke-virtual {p1, v3}, Lk/b/a/j2/a;->a(I)Lk/b/a/t;

    move-result-object p1

    check-cast p1, Lk/b/a/r0;

    .line 9
    invoke-virtual {p1}, Lk/b/a/b;->j()[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;[B)V

    new-instance p1, Lk/b/g/c;

    invoke-direct {p1, v1, v2}, Lk/b/g/c;-><init>(Lk/b/a/l2/s;Lk/b/a/i2/f;)V

    return-object p1

    :cond_2
    new-instance p1, Lk/b/g/c;

    invoke-direct {p1, v1, v2}, Lk/b/g/c;-><init>(Lk/b/a/l2/s;Lk/b/a/i2/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lk/b/g/b;

    const-string v1, "problem creating EC private key: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method
