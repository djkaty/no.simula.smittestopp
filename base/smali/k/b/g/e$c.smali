.class public Lk/b/g/e$c;
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
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lk/b/g/e;


# direct methods
.method public synthetic constructor <init>(Lk/b/g/e;Lk/b/g/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/b/g/e$c;->a:Lk/b/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/j/h/b/b;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p1, Lk/b/j/h/b/b;->c:[B

    .line 2
    invoke-static {v0}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object v0

    instance-of v1, v0, Lk/b/a/o;

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p1, Lk/b/j/h/b/b;->c:[B

    .line 4
    invoke-static {p1}, Lk/b/a/t;->a([B)Lk/b/a/t;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of p1, v0, Lk/b/a/u;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lk/b/a/m2/b;->a(Ljava/lang/Object;)Lk/b/a/m2/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lk/b/g/b;

    const-string v1, "exception extracting EC named curve: "

    invoke-static {v1}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Le/a/a/a/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/g/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method
