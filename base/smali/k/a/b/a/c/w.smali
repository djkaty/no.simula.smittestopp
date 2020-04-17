.class public Lk/a/b/a/c/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/q0;


# instance fields
.field public final a:Lk/a/b/a/c/s;

.field public final b:Lk/a/b/a/c/q0;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/s;Lk/a/b/a/c/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/c/w;->a:Lk/a/b/a/c/s;

    .line 3
    iput-object p2, p0, Lk/a/b/a/c/w;->b:Lk/a/b/a/c/q0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/w;->a:Lk/a/b/a/c/s;

    invoke-interface {v0}, Lk/a/b/a/c/s;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lk/a/b/a/c/w;->a:Lk/a/b/a/c/s;

    iget-object v1, p0, Lk/a/b/a/c/w;->b:Lk/a/b/a/c/q0;

    invoke-interface {v1}, Lk/a/b/a/c/q0;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lk/a/b/a/c/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lk/a/b/a/c/q;

    const-string v2, "Incorrect type used"

    invoke-direct {v1, v2, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 3
    new-instance v1, Lk/a/b/a/c/q;

    const-string v2, "Unexpected null value - mandatory field not set? ("

    invoke-static {v2}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lk/a/b/a/c/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
