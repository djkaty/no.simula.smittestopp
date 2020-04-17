.class public Lg/c/m/b;
.super Lg/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/c/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lg/c/m/c;


# direct methods
.method public constructor <init>(Lg/c/m/c;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/c/m/b;->j:Lg/c/m/c;

    invoke-direct {p0, p2}, Lg/c/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lg/c/b;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    iget-object p2, p0, Lg/c/m/b;->j:Lg/c/m/c;

    .line 2
    iget-object p2, p2, Lg/c/m/c;->a:Ljava/lang/String;

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lg/c/m/b;->j:Lg/c/m/c;

    .line 5
    iget-object p2, p2, Lg/c/m/c;->b:Ljava/lang/Throwable;

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    throw p1
.end method
