.class public Le/c/a/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/c/a/b/b/e;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/c/a/b/b/e;->a:Landroid/view/View;

    iget v1, p0, Le/c/a/b/b/e;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Le/c/a/b/b/e;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ld/i/i/n;->d(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Le/c/a/b/b/e;->a:Landroid/view/View;

    iget v1, p0, Le/c/a/b/b/e;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Le/c/a/b/b/e;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ld/i/i/n;->c(Landroid/view/View;I)V

    return-void
.end method
