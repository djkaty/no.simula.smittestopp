.class public Lk/a/b/a/d/g0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/d/g0/u$a;
    }
.end annotation


# instance fields
.field public a:Lk/a/b/a/d/g0/t;

.field public b:Lk/a/b/a/d/g0/u$a;

.field public c:I

.field public d:Ljava/nio/ByteBuffer;

.field public final e:Lk/a/b/a/c/i;

.field public f:I

.field public g:Lk/a/b/a/d/g0/a0;


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/t;Lk/a/b/a/c/i;ILk/a/b/a/d/g0/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/b/a/d/g0/u$a;->HEADER0:Lk/a/b/a/d/g0/u$a;

    iput-object v0, p0, Lk/a/b/a/d/g0/u;->b:Lk/a/b/a/d/g0/u$a;

    .line 3
    iput-object p1, p0, Lk/a/b/a/d/g0/u;->a:Lk/a/b/a/d/g0/t;

    .line 4
    iput-object p2, p0, Lk/a/b/a/d/g0/u;->e:Lk/a/b/a/c/i;

    .line 5
    iput p3, p0, Lk/a/b/a/d/g0/u;->f:I

    .line 6
    iput-object p4, p0, Lk/a/b/a/d/g0/u;->g:Lk/a/b/a/d/g0/a0;

    return-void
.end method
