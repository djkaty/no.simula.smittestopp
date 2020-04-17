.class public Ld/m/a/p$c;
.super Ld/m/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ld/m/a/p;


# direct methods
.method public constructor <init>(Ld/m/a/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/p$c;->b:Ld/m/a/p;

    invoke-direct {p0}, Ld/m/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object p1, p0, Ld/m/a/p$c;->b:Ld/m/a/p;

    iget-object p1, p1, Ld/m/a/p;->n:Ld/m/a/m;

    .line 2
    iget-object v0, p1, Ld/m/a/m;->y:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v0, p2, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_0
    throw v1
.end method
