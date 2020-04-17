.class public Lk/b/i/b/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public x:Lk/b/i/b/g/u;

.field public final y:I

.field public z:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk/b/i/b/g/c;->y:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/b/i/b/g/c;->B:Z

    iput-boolean p1, p0, Lk/b/i/b/g/c;->C:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-boolean v0, p0, Lk/b/i/b/g/c;->B:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lk/b/i/b/g/c;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lk/b/i/b/g/c;->z:I

    return v0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lk/b/i/b/g/c;->clone()Lk/b/i/b/g/c;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lk/b/i/b/g/c;
    .locals 2

    new-instance v0, Lk/b/i/b/g/c;

    iget v1, p0, Lk/b/i/b/g/c;->y:I

    invoke-direct {v0, v1}, Lk/b/i/b/g/c;-><init>(I)V

    iget-object v1, p0, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    iput-object v1, v0, Lk/b/i/b/g/c;->x:Lk/b/i/b/g/u;

    iget v1, p0, Lk/b/i/b/g/c;->z:I

    iput v1, v0, Lk/b/i/b/g/c;->z:I

    iget v1, p0, Lk/b/i/b/g/c;->A:I

    iput v1, v0, Lk/b/i/b/g/c;->A:I

    iget-boolean v1, p0, Lk/b/i/b/g/c;->B:Z

    iput-boolean v1, v0, Lk/b/i/b/g/c;->B:Z

    iget-boolean v1, p0, Lk/b/i/b/g/c;->C:Z

    iput-boolean v1, v0, Lk/b/i/b/g/c;->C:Z

    return-object v0
.end method
