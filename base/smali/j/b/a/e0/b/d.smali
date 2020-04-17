.class public final Lj/b/a/e0/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic x:Lno/simula/corona/ui/main/SettingsFragment;


# direct methods
.method public constructor <init>(Lno/simula/corona/ui/main/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lj/b/a/e0/b/d;->x:Lno/simula/corona/ui/main/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lj/b/a/e0/b/d;->x:Lno/simula/corona/ui/main/SettingsFragment;

    invoke-static {p1}, Lno/simula/corona/ui/main/SettingsFragment;->a(Lno/simula/corona/ui/main/SettingsFragment;)V

    :goto_0
    return-void
.end method
