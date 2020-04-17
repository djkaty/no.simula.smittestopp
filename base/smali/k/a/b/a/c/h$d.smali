.class public Lk/a/b/a/c/h$d;
.super Lk/a/b/a/c/z;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/a/b/a/c/z<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lk/a/b/a/c/h$b;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lk/a/b/a/c/h;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/h;Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk/a/b/a/c/h$d;->c:Lk/a/b/a/c/h;

    .line 2
    invoke-direct {p0, p2, p3}, Lk/a/b/a/c/z;-><init>(Lk/a/b/a/c/x;Lk/a/b/a/c/r;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Lk/a/b/a/c/r0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/a/b/a/c/r0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()B
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public getType()Lk/a/b/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/h$d;->c:Lk/a/b/a/c/h;

    return-object v0
.end method

.method public getType()Lk/a/b/a/c/i0;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/h$d;->c:Lk/a/b/a/c/h;

    return-object v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
