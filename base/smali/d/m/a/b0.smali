.class public final Ld/m/a/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Ld/m/a/f0$a;

.field public final synthetic y:Landroidx/fragment/app/Fragment;

.field public final synthetic z:Ld/i/e/a;


# direct methods
.method public constructor <init>(Ld/m/a/f0$a;Landroidx/fragment/app/Fragment;Ld/i/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/b0;->x:Ld/m/a/f0$a;

    iput-object p2, p0, Ld/m/a/b0;->y:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ld/m/a/b0;->z:Ld/i/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld/m/a/b0;->x:Ld/m/a/f0$a;

    iget-object v1, p0, Ld/m/a/b0;->y:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Ld/m/a/b0;->z:Ld/i/e/a;

    check-cast v0, Ld/m/a/p$b;

    invoke-virtual {v0, v1, v2}, Ld/m/a/p$b;->a(Landroidx/fragment/app/Fragment;Ld/i/e/a;)V

    return-void
.end method
