.class public Lk/a/b/a/d/g0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public b:Lk/a/b/a/d/g0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/n<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:Lk/a/b/a/d/g0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a/b/a/d/g0/n<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/b/a/d/g0/n;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lk/a/b/a/d/g0/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lk/a/b/a/d/g0/n<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/a/b/a/d/g0/n;

    invoke-direct {v0, p1}, Lk/a/b/a/d/g0/n;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lk/a/b/a/d/g0/n;->c:Lk/a/b/a/d/g0/n;

    .line 3
    iput-object p0, v0, Lk/a/b/a/d/g0/n;->b:Lk/a/b/a/d/g0/n;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lk/a/b/a/d/g0/n;->a(Ljava/lang/Object;)Lk/a/b/a/d/g0/n;

    move-result-object p1

    return-object p1
.end method
