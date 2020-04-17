.class public Le/c/a/a/b/j/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public b:Le/c/a/a/b/e;


# direct methods
.method public constructor <init>(Le/c/a/a/b/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Le/c/a/a/b/j/j;->a:Landroid/util/SparseIntArray;

    .line 3
    invoke-static {p1}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/c/a/a/b/j/j;->b:Le/c/a/a/b/e;

    return-void
.end method
