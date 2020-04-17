.class public final Le/c/a/a/f/d;
.super Le/c/a/a/b/i/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/i/a$a<",
        "Le/c/a/a/f/b/a;",
        "Le/c/a/a/f/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/i/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/d;Ljava/lang/Object;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)Le/c/a/a/b/i/a$f;
    .locals 6

    .line 1
    check-cast p4, Le/c/a/a/f/a;

    if-nez p4, :cond_0

    .line 2
    sget-object p4, Le/c/a/a/f/a;->i:Le/c/a/a/f/a;

    .line 3
    :cond_0
    new-instance p4, Le/c/a/a/f/b/a;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Le/c/a/a/f/b/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/d;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)V

    return-object p4
.end method
