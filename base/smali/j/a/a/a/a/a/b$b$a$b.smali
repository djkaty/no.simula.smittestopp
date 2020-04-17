.class public Lj/a/a/a/a/a/b$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/a/a/a/a/b$b$a;->onBatchScanResults(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ljava/util/List;

.field public final synthetic y:Lj/a/a/a/a/a/b$b$a;


# direct methods
.method public constructor <init>(Lj/a/a/a/a/a/b$b$a;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/a/a/a/b$b$a$b;->y:Lj/a/a/a/a/a/b$b$a;

    iput-object p2, p0, Lj/a/a/a/a/a/b$b$a$b;->x:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lj/a/a/a/a/a/b$b$a$b;->y:Lj/a/a/a/a/a/b$b$a;

    .line 3
    iget-wide v3, v2, Lj/a/a/a/a/a/b$b$a;->a:J

    .line 4
    iget-object v5, v2, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    iget-object v5, v5, Lj/a/a/a/a/a/a$a;->g:Lj/a/a/a/a/a/k;

    .line 5
    iget-wide v5, v5, Lj/a/a/a/a/a/k;->B:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x5

    add-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    return-void

    .line 6
    :cond_0
    iput-wide v0, v2, Lj/a/a/a/a/a/b$b$a;->a:J

    .line 7
    invoke-static {}, Lj/a/a/a/a/a/a;->a()Lj/a/a/a/a/a/a;

    move-result-object v0

    check-cast v0, Lj/a/a/a/a/a/b;

    .line 8
    iget-object v1, p0, Lj/a/a/a/a/a/b$b$a$b;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Lj/a/a/a/a/a/b;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lj/a/a/a/a/a/b$b$a$b;->y:Lj/a/a/a/a/a/b$b$a;

    iget-object v1, v1, Lj/a/a/a/a/a/b$b$a;->b:Lj/a/a/a/a/a/b$b;

    invoke-virtual {v1, v0}, Lj/a/a/a/a/a/a$a;->a(Ljava/util/List;)V

    return-void
.end method
