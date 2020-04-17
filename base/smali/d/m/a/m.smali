.class public abstract Ld/m/a/m;
.super Ld/m/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ld/m/a/i;"
    }
.end annotation


# instance fields
.field public final A:Ld/m/a/p;

.field public final x:Landroid/app/Activity;

.field public final y:Landroid/content/Context;

.field public final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ld/m/a/c;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Ld/m/a/i;-><init>()V

    .line 3
    new-instance v1, Ld/m/a/r;

    invoke-direct {v1}, Ld/m/a/r;-><init>()V

    iput-object v1, p0, Ld/m/a/m;->A:Ld/m/a/p;

    .line 4
    iput-object p1, p0, Ld/m/a/m;->x:Landroid/app/Activity;

    const-string v1, "context == null"

    .line 5
    invoke-static {p1, v1}, Ld/b/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld/m/a/m;->y:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 6
    invoke-static {v0, p1}, Ld/b/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Ld/m/a/m;->z:Landroid/os/Handler;

    return-void
.end method
