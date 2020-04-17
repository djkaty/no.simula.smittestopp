.class public abstract Le/c/a/a/b/j/h;
.super Le/c/a/a/b/j/b;
.source "SourceFile"

# interfaces
.implements Le/c/a/a/b/i/a$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Le/c/a/a/b/j/b<",
        "TT;>;",
        "Le/c/a/a/b/i/a$f;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILe/c/a/a/b/j/d;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)V
    .locals 9

    .line 1
    invoke-static {p1}, Le/c/a/a/b/j/i;->a(Landroid/content/Context;)Le/c/a/a/b/j/i;

    move-result-object v3

    .line 2
    sget-object v4, Le/c/a/a/b/d;->c:Le/c/a/a/b/d;

    .line 3
    invoke-static {p5}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p5, Le/c/a/a/b/i/d$a;

    .line 4
    invoke-static {p6}, Ld/b/a/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p6, Le/c/a/a/b/i/d$b;

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object v6, v0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Le/c/a/a/b/j/v;

    invoke-direct {v1, p5}, Le/c/a/a/b/j/v;-><init>(Le/c/a/a/b/i/d$a;)V

    move-object v6, v1

    :goto_0
    if-nez p6, :cond_1

    move-object v7, v0

    goto :goto_1

    .line 6
    :cond_1
    new-instance p5, Le/c/a/a/b/j/w;

    invoke-direct {p5, p6}, Le/c/a/a/b/j/w;-><init>(Le/c/a/a/b/i/d$b;)V

    move-object v7, p5

    .line 7
    :goto_1
    iget-object v8, p4, Le/c/a/a/b/j/d;->f:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 8
    invoke-direct/range {v0 .. v8}, Le/c/a/a/b/j/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/i;Le/c/a/a/b/e;ILe/c/a/a/b/j/b$a;Le/c/a/a/b/j/b$b;Ljava/lang/String;)V

    .line 9
    iget-object p1, p4, Le/c/a/a/b/j/d;->a:Landroid/accounts/Account;

    .line 10
    iput-object p1, p0, Le/c/a/a/b/j/h;->w:Landroid/accounts/Account;

    .line 11
    iget-object p1, p4, Le/c/a/a/b/j/d;->c:Ljava/util/Set;

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 13
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    iput-object p1, p0, Le/c/a/a/b/j/h;->v:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public i()I
    .locals 1

    .line 1
    sget v0, Le/c/a/a/b/e;->a:I

    return v0
.end method
