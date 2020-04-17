.class public final Le/c/a/a/b/i/k/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/i/k/b$a;


# instance fields
.field public final synthetic a:Le/c/a/a/b/i/k/c;


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/i/k/n;->a:Le/c/a/a/b/i/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/n;->a:Le/c/a/a/b/i/k/c;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
