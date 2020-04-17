.class public final Le/c/a/a/e/g;
.super Le/c/a/a/b/i/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/a/b/i/a$a<",
        "Le/c/a/a/d/c/o;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/c/a/a/b/i/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/j/d;Ljava/lang/Object;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;)Le/c/a/a/b/i/a$f;
    .locals 7

    new-instance p4, Le/c/a/a/d/c/o;

    const-string v5, "locationServices"

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Le/c/a/a/d/c/o;-><init>(Landroid/content/Context;Landroid/os/Looper;Le/c/a/a/b/i/d$a;Le/c/a/a/b/i/d$b;Ljava/lang/String;Le/c/a/a/b/j/d;)V

    return-object p4
.end method
