.class public Ld/b/d/i/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/d/i/d$c;->a(Ld/b/d/i/g;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A:Ld/b/d/i/d$c;

.field public final synthetic x:Ld/b/d/i/d$d;

.field public final synthetic y:Landroid/view/MenuItem;

.field public final synthetic z:Ld/b/d/i/g;


# direct methods
.method public constructor <init>(Ld/b/d/i/d$c;Ld/b/d/i/d$d;Landroid/view/MenuItem;Ld/b/d/i/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/d/i/d$c$a;->A:Ld/b/d/i/d$c;

    iput-object p2, p0, Ld/b/d/i/d$c$a;->x:Ld/b/d/i/d$d;

    iput-object p3, p0, Ld/b/d/i/d$c$a;->y:Landroid/view/MenuItem;

    iput-object p4, p0, Ld/b/d/i/d$c$a;->z:Ld/b/d/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/b/d/i/d$c$a;->x:Ld/b/d/i/d$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ld/b/d/i/d$c$a;->A:Ld/b/d/i/d$c;

    iget-object v1, v1, Ld/b/d/i/d$c;->x:Ld/b/d/i/d;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ld/b/d/i/d;->X:Z

    .line 3
    iget-object v0, v0, Ld/b/d/i/d$d;->b:Ld/b/d/i/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/b/d/i/g;->a(Z)V

    .line 4
    iget-object v0, p0, Ld/b/d/i/d$c$a;->A:Ld/b/d/i/d$c;

    iget-object v0, v0, Ld/b/d/i/d$c;->x:Ld/b/d/i/d;

    iput-boolean v1, v0, Ld/b/d/i/d;->X:Z

    .line 5
    :cond_0
    iget-object v0, p0, Ld/b/d/i/d$c$a;->y:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/b/d/i/d$c$a;->y:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ld/b/d/i/d$c$a;->z:Ld/b/d/i/g;

    iget-object v1, p0, Ld/b/d/i/d$c$a;->y:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ld/b/d/i/g;->a(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
