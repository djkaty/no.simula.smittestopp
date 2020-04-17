.class public final Ld/i/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/i/a/b;->a(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic x:Landroid/app/Application;

.field public final synthetic y:Ld/i/a/b$c;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ld/i/a/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/i/a/b$b;->x:Landroid/app/Application;

    iput-object p2, p0, Ld/i/a/b$b;->y:Ld/i/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/i/a/b$b;->x:Landroid/app/Application;

    iget-object v1, p0, Ld/i/a/b$b;->y:Ld/i/a/b$c;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
