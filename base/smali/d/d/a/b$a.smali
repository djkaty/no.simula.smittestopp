.class public Ld/d/a/b$a;
.super Lc/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/d/a/b;->a(Ld/d/a/a;)Ld/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public final synthetic b:Ld/d/a/a;


# direct methods
.method public constructor <init>(Ld/d/a/b;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Ld/d/a/b$a;->b:Ld/d/a/a;

    invoke-direct {p0}, Lc/a/a/a$a;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ld/d/a/b$a;->a:Landroid/os/Handler;

    return-void
.end method
