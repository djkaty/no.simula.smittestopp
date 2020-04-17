.class public abstract Lk/b/a/b2;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final x:Ljava/io/InputStream;

.field public y:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lk/b/a/b2;->x:Ljava/io/InputStream;

    iput p2, p0, Lk/b/a/b2;->y:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lk/b/a/b2;->x:Ljava/io/InputStream;

    instance-of v1, v0, Lk/b/a/y1;

    if-eqz v1, :cond_0

    check-cast v0, Lk/b/a/y1;

    .line 1
    iput-boolean p1, v0, Lk/b/a/y1;->C:Z

    invoke-virtual {v0}, Lk/b/a/y1;->a()Z

    :cond_0
    return-void
.end method
