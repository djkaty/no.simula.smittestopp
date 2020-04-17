.class public Lk/a/b/a/c/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/c/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/a/b/a/c/r;->b(Z)Lk/a/b/a/c/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk/a/b/a/c/r;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lk/a/b/a/c/r$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lk/a/b/a/c/r$c;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/a/b/a/c/r$c;

    iget-object v1, p0, Lk/a/b/a/c/r$a;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lk/a/b/a/c/r$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
