.class public Ld/g/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ld/g/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/g/a/f<",
            "Ld/g/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ld/g/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/g/a/f<",
            "Ld/g/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:[Ld/g/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld/g/a/f;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ld/g/a/f;-><init>(I)V

    iput-object v0, p0, Ld/g/a/c;->a:Ld/g/a/f;

    .line 3
    new-instance v0, Ld/g/a/f;

    invoke-direct {v0, v1}, Ld/g/a/f;-><init>(I)V

    iput-object v0, p0, Ld/g/a/c;->b:Ld/g/a/f;

    const/16 v0, 0x20

    new-array v0, v0, [Ld/g/a/g;

    .line 4
    iput-object v0, p0, Ld/g/a/c;->c:[Ld/g/a/g;

    return-void
.end method
