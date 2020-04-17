.class public final Lno/simula/corona/MainActivity$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/MainActivity;->a(ZLh/k/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic x:I

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lno/simula/corona/MainActivity$a;->x:I

    iput-object p2, p0, Lno/simula/corona/MainActivity$a;->y:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lno/simula/corona/MainActivity$a;->x:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lno/simula/corona/MainActivity$a;->y:Ljava/lang/Object;

    check-cast p1, Lno/simula/corona/MainActivity;

    .line 2
    invoke-static {p1, p2}, Lj/b/a/a0;->c(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Lno/simula/corona/MainActivity$a;->y:Ljava/lang/Object;

    check-cast p1, Lh/k/a/a;

    invoke-interface {p1}, Lh/k/a/a;->invoke()Ljava/lang/Object;

    return-void
.end method
