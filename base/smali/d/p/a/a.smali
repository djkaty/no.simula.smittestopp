.class public abstract Ld/p/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ld/o/l;)Ld/p/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ld/o/l;",
            ":",
            "Ld/o/f0;",
            ">(TT;)",
            "Ld/p/a/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/p/a/b;

    move-object v1, p0

    check-cast v1, Ld/o/f0;

    invoke-interface {v1}, Ld/o/f0;->getViewModelStore()Ld/o/e0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ld/p/a/b;-><init>(Ld/o/l;Ld/o/e0;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
