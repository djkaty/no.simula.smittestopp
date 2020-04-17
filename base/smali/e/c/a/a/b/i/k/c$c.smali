.class public final Le/c/a/a/b/i/k/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/i/k/a0;
.implements Le/c/a/a/b/j/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/b/i/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Le/c/a/a/b/i/a$f;

.field public final b:Le/c/a/a/b/i/k/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/k/h0<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Le/c/a/a/b/j/k;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Le/c/a/a/b/i/k/c;


# direct methods
.method public constructor <init>(Le/c/a/a/b/i/k/c;Le/c/a/a/b/i/a$f;Le/c/a/a/b/i/k/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/a/a/b/i/a$f;",
            "Le/c/a/a/b/i/k/h0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/c/a/a/b/i/k/c$c;->f:Le/c/a/a/b/i/k/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/c/a/a/b/i/k/c$c;->c:Le/c/a/a/b/j/k;

    .line 3
    iput-object p1, p0, Le/c/a/a/b/i/k/c$c;->d:Ljava/util/Set;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le/c/a/a/b/i/k/c$c;->e:Z

    .line 5
    iput-object p2, p0, Le/c/a/a/b/i/k/c$c;->a:Le/c/a/a/b/i/a$f;

    .line 6
    iput-object p3, p0, Le/c/a/a/b/i/k/c$c;->b:Le/c/a/a/b/i/k/h0;

    return-void
.end method


# virtual methods
.method public final a(Le/c/a/a/b/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/c$c;->f:Le/c/a/a/b/i/k/c;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 3
    new-instance v1, Le/c/a/a/b/i/k/s;

    invoke-direct {v1, p0, p1}, Le/c/a/a/b/i/k/s;-><init>(Le/c/a/a/b/i/k/c$c;Le/c/a/a/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Le/c/a/a/b/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/c/a/a/b/i/k/c$c;->f:Le/c/a/a/b/i/k/c;

    .line 2
    iget-object v0, v0, Le/c/a/a/b/i/k/c;->i:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Le/c/a/a/b/i/k/c$c;->b:Le/c/a/a/b/i/k/h0;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/a/a/b/i/k/c$a;

    .line 4
    iget-object v1, v0, Le/c/a/a/b/i/k/c$a;->m:Le/c/a/a/b/i/k/c;

    .line 5
    iget-object v1, v1, Le/c/a/a/b/i/k/c;->m:Landroid/os/Handler;

    .line 6
    invoke-static {v1}, Ld/b/a/r;->a(Landroid/os/Handler;)V

    .line 7
    iget-object v1, v0, Le/c/a/a/b/i/k/c$a;->b:Le/c/a/a/b/i/a$f;

    invoke-interface {v1}, Le/c/a/a/b/i/a$f;->e()V

    .line 8
    invoke-virtual {v0, p1}, Le/c/a/a/b/i/k/c$a;->a(Le/c/a/a/b/a;)V

    return-void
.end method
