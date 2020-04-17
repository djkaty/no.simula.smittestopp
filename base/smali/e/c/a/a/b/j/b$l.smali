.class public final Le/c/a/a/b/j/b$l;
.super Le/c/a/a/b/j/b$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/j/b$f;"
    }
.end annotation


# instance fields
.field public final synthetic g:Le/c/a/a/b/j/b;


# direct methods
.method public constructor <init>(Le/c/a/a/b/j/b;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/c/a/a/b/j/b$l;->g:Le/c/a/a/b/j/b;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Le/c/a/a/b/j/b$f;-><init>(Le/c/a/a/b/j/b;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/b/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b$l;->g:Le/c/a/a/b/j/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Le/c/a/a/b/j/b;->h:Le/c/a/a/b/j/b$c;

    invoke-interface {v0, p1}, Le/c/a/a/b/j/b$c;->a(Le/c/a/a/b/a;)V

    .line 3
    iget-object v0, p0, Le/c/a/a/b/j/b$l;->g:Le/c/a/a/b/j/b;

    if-eqz v0, :cond_0

    .line 4
    iget p1, p1, Le/c/a/a/b/a;->y:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 6
    :cond_0
    throw v1

    .line 7
    :cond_1
    throw v1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/b/j/b$l;->g:Le/c/a/a/b/j/b;

    iget-object v0, v0, Le/c/a/a/b/j/b;->h:Le/c/a/a/b/j/b$c;

    sget-object v1, Le/c/a/a/b/a;->B:Le/c/a/a/b/a;

    invoke-interface {v0, v1}, Le/c/a/a/b/j/b$c;->a(Le/c/a/a/b/a;)V

    const/4 v0, 0x1

    return v0
.end method
