.class public Lk/a/b/a/d/g0/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lk/a/b/a/d/g0/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lk/a/b/a/b/h;

.field public b:Ljava/lang/String;

.field public c:Lk/a/b/a/b/h;

.field public d:Lk/a/b/a/b/h;

.field public e:Lk/a/b/a/b/h;

.field public f:Lk/a/b/a/d/g0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:Lk/a/b/a/b/h;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lk/a/b/a/d/g0/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lk/a/b/a/b/h;->z:Lk/a/b/a/b/h;

    iput-object v0, p0, Lk/a/b/a/d/g0/e0;->e:Lk/a/b/a/b/h;

    .line 3
    iput-object p1, p0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 4
    iget-object p1, p1, Lk/a/b/a/d/g0/m;->L:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lk/a/b/a/d/g0/e0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/b/n/k;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lk/a/b/a/b/n/k;->f:Lk/a/b/a/b/h;

    .line 2
    iput-object p1, p0, Lk/a/b/a/d/g0/e0;->g:Lk/a/b/a/b/h;

    .line 3
    iget-object p1, p0, Lk/a/b/a/d/g0/e0;->f:Lk/a/b/a/d/g0/m;

    .line 4
    iget-object v0, p1, Lk/a/b/a/d/g0/m;->H:Lk/a/b/a/d/g0/y;

    .line 5
    iget-object v0, v0, Lk/a/b/a/d/g0/y;->H:Lk/a/b/a/d/g0/d;

    .line 6
    sget-object v1, Lk/a/b/a/d/h$b;->LINK_FLOW:Lk/a/b/a/d/h$b;

    invoke-virtual {v0, v1, p1}, Lk/a/b/a/d/g0/d;->a(Lk/a/b/a/d/h$b;Ljava/lang/Object;)Lk/a/b/a/d/g0/g;

    return-void
.end method
