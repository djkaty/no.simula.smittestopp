.class public final Lk/b/i/b/g/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final x:I

.field public final y:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk/b/i/b/g/u;->x:I

    iput-object p2, p0, Lk/b/i/b/g/u;->y:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lk/b/i/b/g/u;->y:[B

    invoke-static {v0}, Lk/b/c/e/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method
