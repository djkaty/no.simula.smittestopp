.class public final Le/c/a/a/b/i/k/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic x:Le/c/a/a/b/i/k/x;


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/i/k/y;->x:Le/c/a/a/b/i/k/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/y;->x:Le/c/a/a/b/i/k/x;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/x;->g:Le/c/a/a/b/i/k/a0;

    .line 3
    new-instance v1, Le/c/a/a/b/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Le/c/a/a/b/a;-><init>(I)V

    check-cast v0, Le/c/a/a/b/i/k/c$c;

    invoke-virtual {v0, v1}, Le/c/a/a/b/i/k/c$c;->b(Le/c/a/a/b/a;)V

    return-void
.end method
