.class public final Lj/a/a/a/a/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:J

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj/a/a/a/a/a/k$b;->a:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lj/a/a/a/a/a/k$b;->b:I

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lj/a/a/a/a/a/k$b;->c:J

    .line 5
    iput v0, p0, Lj/a/a/a/a/a/k$b;->d:I

    const/4 v3, 0x3

    .line 6
    iput v3, p0, Lj/a/a/a/a/a/k$b;->e:I

    .line 7
    iput-boolean v0, p0, Lj/a/a/a/a/a/k$b;->f:Z

    const/16 v3, 0xff

    .line 8
    iput v3, p0, Lj/a/a/a/a/a/k$b;->g:I

    .line 9
    iput-boolean v0, p0, Lj/a/a/a/a/a/k$b;->h:Z

    .line 10
    iput-boolean v0, p0, Lj/a/a/a/a/a/k$b;->i:Z

    .line 11
    iput-boolean v0, p0, Lj/a/a/a/a/a/k$b;->j:Z

    const-wide/16 v3, 0x2710

    .line 12
    iput-wide v3, p0, Lj/a/a/a/a/a/k$b;->k:J

    .line 13
    iput-wide v3, p0, Lj/a/a/a/a/a/k$b;->l:J

    .line 14
    iput-wide v1, p0, Lj/a/a/a/a/a/k$b;->m:J

    .line 15
    iput-wide v1, p0, Lj/a/a/a/a/a/k$b;->n:J

    return-void
.end method


# virtual methods
.method public a(I)Lj/a/a/a/a/a/k$b;
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lj/a/a/a/a/a/k$b;->a:I

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid scan mode "

    invoke-static {v1, p1}, Le/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lj/a/a/a/a/a/k;
    .locals 25

    move-object/from16 v0, p0

    .line 3
    iget-wide v1, v0, Lj/a/a/a/a/a/k$b;->m:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, v0, Lj/a/a/a/a/a/k$b;->n:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 4
    iget v1, v0, Lj/a/a/a/a/a/k$b;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-wide/16 v1, 0x1f4

    .line 5
    iput-wide v1, v0, Lj/a/a/a/a/a/k$b;->n:J

    const-wide/16 v1, 0x1194

    .line 6
    iput-wide v1, v0, Lj/a/a/a/a/a/k$b;->m:J

    goto :goto_0

    .line 7
    :cond_0
    iput-wide v3, v0, Lj/a/a/a/a/a/k$b;->n:J

    .line 8
    iput-wide v3, v0, Lj/a/a/a/a/a/k$b;->m:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x7d0

    .line 9
    iput-wide v1, v0, Lj/a/a/a/a/a/k$b;->n:J

    const-wide/16 v1, 0xbb8

    .line 10
    iput-wide v1, v0, Lj/a/a/a/a/a/k$b;->m:J

    .line 11
    :cond_2
    :goto_0
    new-instance v1, Lj/a/a/a/a/a/k;

    move-object v3, v1

    iget v4, v0, Lj/a/a/a/a/a/k$b;->a:I

    iget v5, v0, Lj/a/a/a/a/a/k$b;->b:I

    iget-wide v6, v0, Lj/a/a/a/a/a/k$b;->c:J

    iget v8, v0, Lj/a/a/a/a/a/k$b;->d:I

    iget v9, v0, Lj/a/a/a/a/a/k$b;->e:I

    iget-boolean v10, v0, Lj/a/a/a/a/a/k$b;->f:Z

    iget v11, v0, Lj/a/a/a/a/a/k$b;->g:I

    iget-boolean v12, v0, Lj/a/a/a/a/a/k$b;->h:Z

    iget-boolean v13, v0, Lj/a/a/a/a/a/k$b;->i:Z

    iget-boolean v14, v0, Lj/a/a/a/a/a/k$b;->j:Z

    move-object/from16 v24, v1

    iget-wide v1, v0, Lj/a/a/a/a/a/k$b;->k:J

    move-wide v15, v1

    iget-wide v1, v0, Lj/a/a/a/a/a/k$b;->l:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lj/a/a/a/a/a/k$b;->n:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lj/a/a/a/a/a/k$b;->m:J

    move-wide/from16 v21, v1

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v23}, Lj/a/a/a/a/a/k;-><init>(IIJIIZIZZZJJJJLj/a/a/a/a/a/k$a;)V

    return-object v24
.end method
