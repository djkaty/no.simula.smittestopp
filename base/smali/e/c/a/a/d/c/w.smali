.class public final Le/c/a/a/d/c/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/c/a/a/d/c/w<",
        "Le/c/a/a/d/c/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/c/a/a/d/c/v;


# direct methods
.method public constructor <init>(Le/c/a/a/d/c/v;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/d/c/w;->a:Le/c/a/a/d/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Le/c/a/a/d/c/w;->a:Le/c/a/a/d/c/v;

    .line 1
    invoke-virtual {v0}, Le/c/a/a/b/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic b()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Le/c/a/a/d/c/w;->a:Le/c/a/a/d/c/v;

    invoke-virtual {v0}, Le/c/a/a/b/j/b;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Le/c/a/a/d/c/g;

    return-object v0
.end method
