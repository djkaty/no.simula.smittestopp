.class public Lk/b/g/e$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/b/j/h/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public constructor <init>(Lk/b/g/e;)V
    .locals 0

    iput-object p1, p0, Lk/b/g/e$l;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/j/h/b/b;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p1, Lk/b/j/h/b/b;->c:[B

    .line 2
    instance-of v0, p1, Lk/b/a/i2/h;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/a/i2/h;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lk/b/a/i2/h;

    invoke-static {p1}, Lk/b/a/u;->a(Ljava/lang/Object;)Lk/b/a/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/i2/h;-><init>(Lk/b/a/u;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    new-instance v0, Lk/b/a/l2/s;

    new-instance v1, Lk/b/a/l2/a;

    sget-object v2, Lk/b/a/i2/e;->b:Lk/b/a/o;

    sget-object v3, Lk/b/a/y0;->x:Lk/b/a/y0;

    invoke-direct {v1, v2, v3}, Lk/b/a/l2/a;-><init>(Lk/b/a/o;Lk/b/a/e;)V

    invoke-direct {v0, v1, p1}, Lk/b/a/l2/s;-><init>(Lk/b/a/l2/a;Lk/b/a/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lk/b/g/b;

    const-string v1, "problem extracting key: "

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
