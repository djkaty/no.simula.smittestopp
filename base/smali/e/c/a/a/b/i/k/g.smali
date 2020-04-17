.class public abstract Le/c/a/a/b/i/k/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Le/c/a/a/b/i/a$b;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/c/a/a/b/i/k/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/f<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Le/c/a/a/b/c;

.field public final c:Z


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/k/f<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/c/a/a/b/i/k/g;->a:Le/c/a/a/b/i/k/f;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/c/a/a/b/i/k/g;->b:[Le/c/a/a/b/c;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le/c/a/a/b/i/k/g;->c:Z

    return-void
.end method
