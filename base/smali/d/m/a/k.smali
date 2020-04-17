.class public Ld/m/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld/m/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/m/a/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/m/a/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/m/a/m<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/m/a/k;->a:Ld/m/a/m;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/m/a/k;->a:Ld/m/a/m;

    iget-object v0, v0, Ld/m/a/m;->A:Ld/m/a/p;

    invoke-virtual {v0}, Ld/m/a/p;->j()V

    return-void
.end method
