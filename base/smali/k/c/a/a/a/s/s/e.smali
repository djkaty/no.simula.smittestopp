.class public Lk/c/a/a/a/s/s/e;
.super Lk/c/a/a/a/s/s/u;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lk/c/a/a/a/s/s/u;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 0

    const/16 p1, 0xe

    .line 2
    invoke-direct {p0, p1}, Lk/c/a/a/a/s/s/u;-><init>(B)V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "Disc"

    return-object v0
.end method

.method public j()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
