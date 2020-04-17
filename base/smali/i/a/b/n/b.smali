.class public abstract Li/a/b/n/b;
.super Li/a/b/n/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/n/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static b:Li/a/b/n/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/n/f<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/b/n/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/a/b/n/b$a;-><init>(Li/a/b/n/e;)V

    sput-object v0, Li/a/b/n/b;->b:Li/a/b/n/f;

    return-void
.end method
