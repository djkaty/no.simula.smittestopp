.class public Ld/b/a/k$g$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/a/k$g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/a/k$g;


# direct methods
.method public constructor <init>(Ld/b/a/k$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/k$g$a;->a:Ld/b/a/k$g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld/b/a/k$g$a;->a:Ld/b/a/k$g;

    invoke-virtual {p1}, Ld/b/a/k$g;->d()V

    return-void
.end method
