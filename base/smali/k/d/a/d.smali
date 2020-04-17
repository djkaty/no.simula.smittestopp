.class public Lk/d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk/d/a/s/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lk/d/a/d;->k:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/d/a/d;->a:Z

    .line 3
    iput-boolean v0, p0, Lk/d/a/d;->b:Z

    .line 4
    iput-boolean v0, p0, Lk/d/a/d;->c:Z

    .line 5
    iput-boolean v0, p0, Lk/d/a/d;->d:Z

    .line 6
    iput-boolean v0, p0, Lk/d/a/d;->f:Z

    .line 7
    sget-object v0, Lk/d/a/d;->k:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lk/d/a/d;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
