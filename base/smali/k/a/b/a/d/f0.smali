.class public Lk/a/b/a/d/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/d/f0$b;
    }
.end annotation


# static fields
.field public static final a:Lk/a/b/a/d/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lk/a/b/a/d/f0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lk/a/b/a/d/f0$b;

    sget-object v1, Lk/a/b/a/d/e0$a;->OK:Lk/a/b/a/d/e0$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lk/a/b/a/d/f0$b;-><init>(Lk/a/b/a/d/e0$a;Ljava/lang/String;Ljava/lang/Exception;Lk/a/b/a/d/f0$a;)V

    sput-object v0, Lk/a/b/a/d/f0;->a:Lk/a/b/a/d/e0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
