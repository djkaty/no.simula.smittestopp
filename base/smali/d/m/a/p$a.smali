.class public Ld/m/a/p$a;
.super Ld/a/b;
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
.field public final synthetic c:Ld/m/a/p;


# direct methods
.method public constructor <init>(Ld/m/a/p;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/m/a/p$a;->c:Ld/m/a/p;

    invoke-direct {p0, p2}, Ld/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m/a/p$a;->c:Ld/m/a/p;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ld/m/a/p;->d(Z)Z

    .line 3
    iget-object v1, v0, Ld/m/a/p;->h:Ld/a/b;

    .line 4
    iget-boolean v1, v1, Ld/a/b;->a:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ld/m/a/p;->k()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Ld/m/a/p;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    return-void
.end method
