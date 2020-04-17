.class public final Le/c/a/a/b/i/k/x;
.super Le/c/a/a/f/b/d;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/i/d$a;
.implements Le/c/a/a/b/i/d$b;


# static fields
.field public static h:Le/c/a/a/b/i/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$a<",
            "+",
            "Le/c/a/a/f/f;",
            "Le/c/a/a/f/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Le/c/a/a/b/i/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$a<",
            "+",
            "Le/c/a/a/f/f;",
            "Le/c/a/a/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Le/c/a/a/b/j/d;

.field public f:Le/c/a/a/f/f;

.field public g:Le/c/a/a/b/i/k/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/c/a/a/f/c;->c:Le/c/a/a/b/i/a$a;

    sput-object v0, Le/c/a/a/b/i/k/x;->h:Le/c/a/a/b/i/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Le/c/a/a/b/j/d;)V
    .locals 1

    .line 1
    sget-object v0, Le/c/a/a/b/i/k/x;->h:Le/c/a/a/b/i/a$a;

    .line 2
    invoke-direct {p0}, Le/c/a/a/f/b/d;-><init>()V

    .line 3
    iput-object p1, p0, Le/c/a/a/b/i/k/x;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/c/a/a/b/i/k/x;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 5
    invoke-static {p3, p1}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Le/c/a/a/b/i/k/x;->e:Le/c/a/a/b/j/d;

    .line 6
    iget-object p1, p3, Le/c/a/a/b/j/d;->b:Ljava/util/Set;

    .line 7
    iput-object p1, p0, Le/c/a/a/b/i/k/x;->d:Ljava/util/Set;

    .line 8
    iput-object v0, p0, Le/c/a/a/b/i/k/x;->c:Le/c/a/a/b/i/a$a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 2
    iget-object p1, p0, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    invoke-interface {p1}, Le/c/a/a/b/i/a$f;->e()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/c/a/a/b/i/k/x;->f:Le/c/a/a/f/f;

    invoke-interface {p1, p0}, Le/c/a/a/f/f;->a(Le/c/a/a/f/b/e;)V

    return-void
.end method

.method public final a(Le/c/a/a/b/a;)V
    .locals 1

    .line 3
    iget-object v0, p0, Le/c/a/a/b/i/k/x;->g:Le/c/a/a/b/i/k/a0;

    check-cast v0, Le/c/a/a/b/i/k/c$c;

    invoke-virtual {v0, p1}, Le/c/a/a/b/i/k/c$c;->b(Le/c/a/a/b/a;)V

    return-void
.end method

.method public final a(Le/c/a/a/f/b/k;)V
    .locals 2

    .line 4
    iget-object v0, p0, Le/c/a/a/b/i/k/x;->b:Landroid/os/Handler;

    new-instance v1, Le/c/a/a/b/i/k/z;

    invoke-direct {v1, p0, p1}, Le/c/a/a/b/i/k/z;-><init>(Le/c/a/a/b/i/k/x;Le/c/a/a/f/b/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
