.class public Lk/b/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk/b/d/a/a/b;

    const-string v1, "BC"

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lk/b/d/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk/b/d/a/a/b;

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Lk/b/d/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk/b/d/a/a/b;

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Lk/b/d/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk/b/d/a/a/b;

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Lk/b/d/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk/b/d/a/a/b;

    const-string v2, "acceptableEcCurves"

    invoke-direct {v0, v1, v2}, Lk/b/d/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lk/b/d/a/a/b;

    const-string v2, "additionalEcParameters"

    invoke-direct {v0, v1, v2}, Lk/b/d/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
