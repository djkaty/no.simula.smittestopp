.class public Lk/a/a/b/e/a;
.super Lk/a/a/b/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lk/a/a/b/e/b<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# instance fields
.field public x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public y:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lk/a/a/b/e/b;-><init>()V

    .line 2
    iput-object p1, p0, Lk/a/a/b/e/a;->x:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lk/a/a/b/e/a;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/a/b/e/a;->y:Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lk/a/a/b/e/a;->y:Ljava/lang/Object;

    return-object v0
.end method
