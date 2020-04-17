.class public Lk/b/a/y0;
.super Lk/b/a/m;
.source "SourceFile"


# static fields
.field public static final x:Lk/b/a/y0;

.field public static final y:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/b/a/y0;

    invoke-direct {v0}, Lk/b/a/y0;-><init>()V

    sput-object v0, Lk/b/a/y0;->x:Lk/b/a/y0;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lk/b/a/y0;->y:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk/b/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/r;Z)V
    .locals 2

    sget-object v0, Lk/b/a/y0;->y:[B

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1, v0}, Lk/b/a/r;->a(ZI[B)V

    return-void
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
