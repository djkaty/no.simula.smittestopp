.class public abstract Lk/a/b/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lk/a/b/a/c/r;

.field public final b:Lk/a/b/a/c/x;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/c/r0<",
            "TM;>;",
            "Lk/a/b/a/c/r0<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/c/b;->c:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object p1, p1, Lk/a/b/a/c/x;->b:Lk/a/b/a/c/r;

    .line 5
    iput-object p1, p0, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lk/a/b/a/c/r0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/c/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/c/r0;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lk/a/b/a/c/b$a;

    invoke-direct {v0, p0, p1}, Lk/a/b/a/c/b$a;-><init>(Lk/a/b/a/c/b;Lk/a/b/a/c/r0;)V

    .line 5
    iget-object v1, p0, Lk/a/b/a/c/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public abstract b()Lk/a/b/a/b/i;
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lk/a/b/a/c/r0;->c()V

    .line 3
    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TM;"
        }
    .end annotation
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a/b/a/c/r0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
