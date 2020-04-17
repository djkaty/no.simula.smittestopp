.class public Lk/b/i/b/g/g$b;
.super Lk/b/i/b/g/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/i/b/g/o$a<",
        "Lk/b/i/b/g/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lk/b/i/b/g/o$a;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lk/b/i/b/g/g$b;->e:I

    iput v0, p0, Lk/b/i/b/g/g$b;->f:I

    return-void
.end method


# virtual methods
.method public a()Lk/b/i/b/g/o$a;
    .locals 0

    return-object p0
.end method

.method public b()Lk/b/i/b/g/o;
    .locals 2

    new-instance v0, Lk/b/i/b/g/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk/b/i/b/g/g;-><init>(Lk/b/i/b/g/g$b;Lk/b/i/b/g/g$a;)V

    return-object v0
.end method
