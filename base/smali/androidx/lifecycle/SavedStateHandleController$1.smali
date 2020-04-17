.class public final Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/o/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/SavedStateHandleController;->b(Ld/v/a;Ld/o/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/o/g;

.field public final synthetic y:Ld/v/a;


# direct methods
.method public constructor <init>(Ld/o/g;Ld/v/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->x:Ld/o/g;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->y:Ld/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/o/l;Ld/o/g$a;)V
    .locals 0

    .line 1
    sget-object p1, Ld/o/g$a;->ON_START:Ld/o/g$a;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->x:Ld/o/g;

    check-cast p1, Ld/o/m;

    .line 3
    iget-object p1, p1, Ld/o/m;->a:Ld/c/a/b/a;

    invoke-virtual {p1, p0}, Ld/c/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->y:Ld/v/a;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Ld/v/a;->a(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
