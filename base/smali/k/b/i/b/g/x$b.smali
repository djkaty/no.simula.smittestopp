.class public Lk/b/i/b/g/x$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/g/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/b/i/b/g/w;

.field public b:I

.field public c:I

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:Lk/b/i/b/g/a;

.field public i:[B


# direct methods
.method public constructor <init>(Lk/b/i/b/g/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk/b/i/b/g/x$b;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lk/b/i/b/g/x$b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/i/b/g/x$b;->d:[B

    iput-object v0, p0, Lk/b/i/b/g/x$b;->e:[B

    iput-object v0, p0, Lk/b/i/b/g/x$b;->f:[B

    iput-object v0, p0, Lk/b/i/b/g/x$b;->g:[B

    iput-object v0, p0, Lk/b/i/b/g/x$b;->h:Lk/b/i/b/g/a;

    iput-object v0, p0, Lk/b/i/b/g/x$b;->i:[B

    iput-object p1, p0, Lk/b/i/b/g/x$b;->a:Lk/b/i/b/g/w;

    return-void
.end method
