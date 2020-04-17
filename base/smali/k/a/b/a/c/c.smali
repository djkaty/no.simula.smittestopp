.class public abstract Lk/a/b/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/i0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/i0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lk/a/b/a/c/i0;->a(Ljava/lang/Object;)Lk/a/b/a/c/j0;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lk/a/b/a/c/r0;->c()V

    .line 3
    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    return-void
.end method
