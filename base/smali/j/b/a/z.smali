.class public final Lj/b/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic x:Lno/simula/corona/SplashActivity;


# direct methods
.method public constructor <init>(Lno/simula/corona/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lj/b/a/z;->x:Lno/simula/corona/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/b/a/z;->x:Lno/simula/corona/SplashActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method
