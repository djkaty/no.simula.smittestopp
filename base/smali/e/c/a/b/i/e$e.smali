.class public Le/c/a/b/i/e$e;
.super Le/c/a/b/i/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/b/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic c:Le/c/a/b/i/e;


# direct methods
.method public constructor <init>(Le/c/a/b/i/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/c/a/b/i/e$e;->c:Le/c/a/b/i/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/c/a/b/i/e$f;-><init>(Le/c/a/b/i/e;Le/c/a/b/i/b;)V

    return-void
.end method
