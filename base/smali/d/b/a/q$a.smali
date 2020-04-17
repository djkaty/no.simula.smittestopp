.class public Ld/b/a/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/i/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic x:Ld/b/a/q;


# direct methods
.method public constructor <init>(Ld/b/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/b/a/q$a;->x:Ld/b/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/a/q$a;->x:Ld/b/a/q;

    invoke-virtual {v0, p1}, Ld/b/a/q;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
