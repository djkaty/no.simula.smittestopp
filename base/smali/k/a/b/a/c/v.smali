.class public Lk/a/b/a/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a/b/a/c/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/a<",
        "Lk/a/b/a/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk/a/b/a/c/x;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/a/b/a/c/r0;",
            "Lk/a/b/a/c/r0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/x;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a/b/a/c/v;->b:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lk/a/b/a/c/v;->a:Lk/a/b/a/c/x;

    .line 4
    iput-object p2, p0, Lk/a/b/a/c/v;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/e;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lk/a/b/a/b/e;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 0

    .line 1
    check-cast p1, Lk/a/b/a/b/e;

    invoke-virtual {p0, p1}, Lk/a/b/a/c/v;->a(Lk/a/b/a/b/e;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/a/b/a/b/e;)Lk/a/b/a/c/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/b/e;",
            ")",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/e;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lk/a/b/a/c/v;->a:Lk/a/b/a/c/x;

    invoke-interface {p1}, Lk/a/b/a/b/e;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v0

    invoke-interface {p1}, Lk/a/b/a/b/e;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lk/a/b/a/c/a;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lk/a/b/a/c/v;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/a/b/a/c/r0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lk/a/b/a/c/v$a;

    invoke-direct {v0, p0, p1}, Lk/a/b/a/c/v$a;-><init>(Lk/a/b/a/c/v;Lk/a/b/a/c/r0;)V

    .line 6
    iget-object v1, p0, Lk/a/b/a/c/v;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/e;

    .line 2
    invoke-virtual {p0, p1}, Lk/a/b/a/c/v;->a(Lk/a/b/a/b/e;)Lk/a/b/a/c/r0;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lk/a/b/a/c/r0;->c()V

    .line 4
    invoke-interface {v0, p1}, Lk/a/b/a/c/r0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
