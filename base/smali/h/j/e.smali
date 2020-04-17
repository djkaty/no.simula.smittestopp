.class public final Lh/j/e;
.super Lh/k/b/h;
.source "SourceFile"

# interfaces
.implements Lh/k/a/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/k/b/h;",
        "Lh/k/a/p<",
        "Lh/j/d;",
        "Lh/j/d$a;",
        "Lh/j/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final x:Lh/j/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/j/e;

    invoke-direct {v0}, Lh/j/e;-><init>()V

    sput-object v0, Lh/j/e;->x:Lh/j/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lh/k/b/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lh/j/d;

    check-cast p2, Lh/j/d$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Lh/j/d$a;->getKey()Lh/j/d$b;

    move-result-object v0

    invoke-interface {p1, v0}, Lh/j/d;->minusKey(Lh/j/d$b;)Lh/j/d;

    move-result-object p1

    .line 3
    sget-object v0, Lh/j/f;->x:Lh/j/f;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lh/j/c;->c:Lh/j/c$a;

    invoke-interface {p1, v0}, Lh/j/d;->get(Lh/j/d$b;)Lh/j/d$a;

    move-result-object v0

    check-cast v0, Lh/j/c;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lh/j/b;

    invoke-direct {v0, p1, p2}, Lh/j/b;-><init>(Lh/j/d;Lh/j/d$a;)V

    move-object p2, v0

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lh/j/c;->c:Lh/j/c$a;

    invoke-interface {p1, v1}, Lh/j/d;->minusKey(Lh/j/d$b;)Lh/j/d;

    move-result-object p1

    .line 7
    sget-object v1, Lh/j/f;->x:Lh/j/f;

    if-ne p1, v1, :cond_2

    new-instance p1, Lh/j/b;

    invoke-direct {p1, p2, v0}, Lh/j/b;-><init>(Lh/j/d;Lh/j/d$a;)V

    move-object p2, p1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v1, Lh/j/b;

    new-instance v2, Lh/j/b;

    invoke-direct {v2, p1, p2}, Lh/j/b;-><init>(Lh/j/d;Lh/j/d$a;)V

    invoke-direct {v1, v2, v0}, Lh/j/b;-><init>(Lh/j/d;Lh/j/d$a;)V

    move-object p2, v1

    :goto_0
    return-object p2

    :cond_3
    const-string p1, "element"

    .line 9
    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "acc"

    invoke-static {p1}, Lh/k/b/g;->a(Ljava/lang/String;)V

    throw v0
.end method
