.class public abstract Ld/d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Ld/d/a/b;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    new-instance v0, Ld/d/a/d$a;

    .line 2
    invoke-static {p2}, Lc/a/a/b$a;->a(Landroid/os/IBinder;)Lc/a/a/b;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Ld/d/a/d$a;-><init>(Ld/d/a/d;Lc/a/a/b;Landroid/content/ComponentName;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Ld/d/a/d;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Ld/d/a/b;)V

    return-void
.end method
