.class public Lk/b/i/b/g/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/g/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/b/i/b/g/r;

.field public b:J

.field public c:J

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:Lk/b/i/b/g/b;

.field public i:[B

.field public j:Lk/b/i/b/g/w;


# direct methods
.method public constructor <init>(Lk/b/i/b/g/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk/b/i/b/g/s$b;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lk/b/i/b/g/s$b;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b/i/b/g/s$b;->d:[B

    iput-object v0, p0, Lk/b/i/b/g/s$b;->e:[B

    iput-object v0, p0, Lk/b/i/b/g/s$b;->f:[B

    iput-object v0, p0, Lk/b/i/b/g/s$b;->g:[B

    iput-object v0, p0, Lk/b/i/b/g/s$b;->h:Lk/b/i/b/g/b;

    iput-object v0, p0, Lk/b/i/b/g/s$b;->i:[B

    iput-object v0, p0, Lk/b/i/b/g/s$b;->j:Lk/b/i/b/g/w;

    iput-object p1, p0, Lk/b/i/b/g/s$b;->a:Lk/b/i/b/g/r;

    return-void
.end method
