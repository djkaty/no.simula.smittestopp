.class public Le/c/a/b/m/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/b/m/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/c/a/b/m/e;


# direct methods
.method public constructor <init>(Le/c/a/b/m/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/b/m/e$a;->a:Le/c/a/b/m/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/c/a/b/m/e$a;->a:Le/c/a/b/m/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le/c/a/b/m/e$c;

    invoke-virtual {v0, p1}, Le/c/a/b/m/e;->a(Le/c/a/b/m/e$c;)V

    const/4 p1, 0x1

    return p1
.end method
