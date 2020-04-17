.class public final Lk/b/i/b/g/g;
.super Lk/b/i/b/g/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/i/b/g/g$b;
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public synthetic constructor <init>(Lk/b/i/b/g/g$b;Lk/b/i/b/g/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/b/i/b/g/o;-><init>(Lk/b/i/b/g/o$a;)V

    const/4 p2, 0x0

    iput p2, p0, Lk/b/i/b/g/g;->e:I

    .line 2
    iget p2, p1, Lk/b/i/b/g/g$b;->e:I

    .line 3
    iput p2, p0, Lk/b/i/b/g/g;->f:I

    .line 4
    iget p1, p1, Lk/b/i/b/g/g$b;->f:I

    .line 5
    iput p1, p0, Lk/b/i/b/g/g;->g:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    invoke-super {p0}, Lk/b/i/b/g/o;->a()[B

    move-result-object v0

    iget v1, p0, Lk/b/i/b/g/g;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lk/b/c/e/a;->b(I[BI)V

    iget v1, p0, Lk/b/i/b/g/g;->f:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lk/b/c/e/a;->b(I[BI)V

    iget v1, p0, Lk/b/i/b/g/g;->g:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lk/b/c/e/a;->b(I[BI)V

    return-object v0
.end method
