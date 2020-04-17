.class public Ld/c/a/b/b$b;
.super Ld/c/a/b/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld/c/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld/c/a/b/b$c;Ld/c/a/b/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c/a/b/b$c<",
            "TK;TV;>;",
            "Ld/c/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ld/c/a/b/b$e;-><init>(Ld/c/a/b/b$c;Ld/c/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method public b(Ld/c/a/b/b$c;)Ld/c/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c/a/b/b$c<",
            "TK;TV;>;)",
            "Ld/c/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Ld/c/a/b/b$c;->z:Ld/c/a/b/b$c;

    return-object p1
.end method

.method public c(Ld/c/a/b/b$c;)Ld/c/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/c/a/b/b$c<",
            "TK;TV;>;)",
            "Ld/c/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Ld/c/a/b/b$c;->A:Ld/c/a/b/b$c;

    return-object p1
.end method
