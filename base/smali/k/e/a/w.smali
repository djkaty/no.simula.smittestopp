.class public abstract Lk/e/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public g:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lk/e/a/w;->a:I

    .line 3
    iput p2, p0, Lk/e/a/w;->b:I

    .line 4
    iput-object p3, p0, Lk/e/a/w;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lk/e/a/w;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lk/e/a/w;->e:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lk/e/a/w;->f:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lk/e/a/w;->g:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk/e/a/w;->e:Ljava/lang/String;

    invoke-static {v0}, Lk/e/a/y;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lk/e/a/w;->g:I

    .line 3
    :cond_0
    iget v0, p0, Lk/e/a/w;->g:I

    return v0
.end method
