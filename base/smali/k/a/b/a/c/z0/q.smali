.class public Lk/a/b/a/c/z0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/a;
.implements Lk/a/b/a/c/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/a/b/a/c/a<",
        "Lk/a/b/a/b/k/k;",
        ">;",
        "Lk/a/b/a/c/y<",
        "Lk/a/b/a/b/k/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/Object;


# instance fields
.field public final a:Lk/a/b/a/c/z0/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0x78

    .line 1
    invoke-static {v1, v2}, Lk/a/b/a/b/i;->a(J)Lk/a/b/a/b/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "amqp:footer:map"

    .line 2
    invoke-static {v1}, Lk/a/b/a/b/f;->a(Ljava/lang/String;)Lk/a/b/a/b/f;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lk/a/b/a/c/z0/q;->b:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk/a/b/a/c/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk/a/b/a/c/z0/u;

    invoke-direct {v0, p1}, Lk/a/b/a/c/z0/u;-><init>(Lk/a/b/a/c/x;)V

    iput-object v0, p0, Lk/a/b/a/c/z0/q;->a:Lk/a/b/a/c/z0/u;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lk/a/b/a/b/k/k;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lk/a/b/a/b/k/k;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lk/a/b/a/c/r0;
    .locals 1

    .line 1
    check-cast p1, Lk/a/b/a/b/k/k;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/q;->a:Lk/a/b/a/c/z0/u;

    invoke-virtual {v0, p1}, Lk/a/b/a/c/b;->a(Ljava/lang/Object;)Lk/a/b/a/c/r0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lk/a/b/a/b/k/k;

    .line 2
    iget-object v0, p0, Lk/a/b/a/c/z0/q;->a:Lk/a/b/a/c/z0/u;

    .line 3
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 4
    iget-object v0, v0, Lk/a/b/a/c/x;->a:Lk/a/b/a/c/y0;

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v1, 0x53

    .line 6
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    const/16 v1, 0x78

    .line 7
    invoke-interface {v0, v1}, Lk/a/b/a/c/y0;->a(B)V

    .line 8
    iget-object v0, p0, Lk/a/b/a/c/z0/q;->a:Lk/a/b/a/c/z0/u;

    .line 9
    iget-object v0, v0, Lk/a/b/a/c/b;->b:Lk/a/b/a/c/x;

    .line 10
    iget-object v1, p1, Lk/a/b/a/b/k/k;->a:Ljava/util/Map;

    .line 11
    invoke-virtual {v0, v1}, Lk/a/b/a/c/x;->a(Ljava/lang/Object;)Lk/a/b/a/c/a;

    move-result-object v0

    check-cast v0, Lk/a/b/a/c/g0;

    .line 12
    iget-object p1, p1, Lk/a/b/a/b/k/k;->a:Ljava/util/Map;

    .line 13
    invoke-virtual {v0, p1}, Lk/a/b/a/c/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lk/a/b/a/c/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/a/b/a/c/r0<",
            "Lk/a/b/a/b/k/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a/b/a/c/z0/q;->a:Lk/a/b/a/c/z0/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    throw v1
.end method

.method public k()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/a/b/a/b/k/k;

    .line 2
    iget-object v1, p0, Lk/a/b/a/c/z0/q;->a:Lk/a/b/a/c/z0/u;

    .line 3
    iget-object v1, v1, Lk/a/b/a/c/b;->a:Lk/a/b/a/c/r;

    .line 4
    invoke-virtual {v1}, Lk/a/b/a/c/r;->c()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/a/b/a/b/k/k;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
