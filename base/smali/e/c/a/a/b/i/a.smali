.class public final Le/c/a/a/b/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/a/a/b/i/a$f;,
        Le/c/a/a/b/i/a$b;,
        Le/c/a/a/b/i/a$g;,
        Le/c/a/a/b/i/a$c;,
        Le/c/a/a/b/i/a$d;,
        Le/c/a/a/b/i/a$a;,
        Le/c/a/a/b/i/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Le/c/a/a/b/i/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/c/a/a/b/i/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/a/a/b/i/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/c/a/a/b/i/a$a;Le/c/a/a/b/i/a$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Le/c/a/a/b/i/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Le/c/a/a/b/i/a$a<",
            "TC;TO;>;",
            "Le/c/a/a/b/i/a$g<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    .line 2
    invoke-static {p2, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    .line 3
    invoke-static {p3, v0}, Ld/b/a/r;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/c/a/a/b/i/a;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Le/c/a/a/b/i/a;->a:Le/c/a/a/b/i/a$a;

    return-void
.end method
