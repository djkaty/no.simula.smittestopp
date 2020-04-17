.class public final Lno/simula/corona/MainActivity$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno/simula/corona/MainActivity$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic x:Lno/simula/corona/MainActivity$e;


# direct methods
.method public constructor <init>(Lno/simula/corona/MainActivity$e;)V
    .locals 0

    iput-object p1, p0, Lno/simula/corona/MainActivity$e$b;->x:Lno/simula/corona/MainActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lno/simula/corona/MainActivity$e$b;->x:Lno/simula/corona/MainActivity$e;

    iget-object p1, p1, Lno/simula/corona/MainActivity$e;->x:Lno/simula/corona/MainActivity;

    invoke-static {p1}, Lno/simula/corona/MainActivity;->a(Lno/simula/corona/MainActivity;)V

    return-void
.end method
