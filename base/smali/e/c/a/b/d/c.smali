.class public Le/c/a/b/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic x:Le/c/a/b/d/d;


# direct methods
.method public constructor <init>(Le/c/a/b/d/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/d/c;->x:Le/c/a/b/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p1, Le/c/a/b/d/a;

    .line 2
    invoke-virtual {p1}, Le/c/a/b/d/a;->getItemData()Ld/b/d/i/i;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/c/a/b/d/c;->x:Le/c/a/b/d/d;

    .line 4
    iget-object v1, v0, Le/c/a/b/d/d;->U:Ld/b/d/i/g;

    .line 5
    iget-object v0, v0, Le/c/a/b/d/d;->T:Le/c/a/b/d/e;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, p1, v0, v2}, Ld/b/d/i/g;->a(Landroid/view/MenuItem;Ld/b/d/i/m;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
