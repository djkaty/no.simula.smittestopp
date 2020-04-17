.class public Le/c/a/a/b/j/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/j/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Le/c/a/a/b/j/b;


# direct methods
.method public constructor <init>(Le/c/a/a/b/j/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c/a/a/b/j/b$d;->a:Le/c/a/a/b/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/a/a/b/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/c/a/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/c/a/a/b/j/b$d;->a:Le/c/a/a/b/j/b;

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Le/c/a/a/b/j/h;

    .line 3
    iget-object v1, v1, Le/c/a/a/b/j/h;->v:Ljava/util/Set;

    .line 4
    invoke-virtual {p1, v0, v1}, Le/c/a/a/b/j/b;->a(Le/c/a/a/b/j/k;Ljava/util/Set;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Le/c/a/a/b/j/b$d;->a:Le/c/a/a/b/j/b;

    .line 6
    iget-object v0, v0, Le/c/a/a/b/j/b;->n:Le/c/a/a/b/j/b$b;

    if-eqz v0, :cond_1

    .line 7
    check-cast v0, Le/c/a/a/b/j/w;

    .line 8
    iget-object v0, v0, Le/c/a/a/b/j/w;->a:Le/c/a/a/b/i/d$b;

    invoke-interface {v0, p1}, Le/c/a/a/b/i/d$b;->a(Le/c/a/a/b/a;)V

    :cond_1
    return-void
.end method
