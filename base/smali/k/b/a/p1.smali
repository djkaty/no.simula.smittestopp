.class public Lk/b/a/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/b/a/u;

.field public static final b:Lk/b/a/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/b/a/r1;

    invoke-direct {v0}, Lk/b/a/r1;-><init>()V

    sput-object v0, Lk/b/a/p1;->a:Lk/b/a/u;

    new-instance v0, Lk/b/a/t1;

    invoke-direct {v0}, Lk/b/a/t1;-><init>()V

    sput-object v0, Lk/b/a/p1;->b:Lk/b/a/x;

    return-void
.end method

.method public static a(Lk/b/a/f;)Lk/b/a/u;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/f;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    sget-object p0, Lk/b/a/p1;->a:Lk/b/a/u;

    return-object p0

    :cond_0
    new-instance v0, Lk/b/a/r1;

    invoke-direct {v0, p0}, Lk/b/a/r1;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public static b(Lk/b/a/f;)Lk/b/a/x;
    .locals 2

    .line 1
    iget v0, p0, Lk/b/a/f;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    sget-object p0, Lk/b/a/p1;->b:Lk/b/a/x;

    return-object p0

    :cond_0
    new-instance v0, Lk/b/a/t1;

    invoke-direct {v0, p0}, Lk/b/a/t1;-><init>(Lk/b/a/f;)V

    return-object v0
.end method
