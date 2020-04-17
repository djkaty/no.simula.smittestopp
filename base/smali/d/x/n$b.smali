.class public Ld/x/n$b;
.super Ld/x/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/x/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ld/x/n;


# direct methods
.method public constructor <init>(Ld/x/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/x/k;-><init>()V

    .line 2
    iput-object p1, p0, Ld/x/n$b;->a:Ld/x/n;

    return-void
.end method


# virtual methods
.method public c(Ld/x/h;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld/x/n$b;->a:Ld/x/n;

    iget-boolean v0, p1, Ld/x/n;->i0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ld/x/h;->d()V

    .line 3
    iget-object p1, p0, Ld/x/n$b;->a:Ld/x/n;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ld/x/n;->i0:Z

    :cond_0
    return-void
.end method

.method public d(Ld/x/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/x/n$b;->a:Ld/x/n;

    iget v1, v0, Ld/x/n;->h0:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ld/x/n;->h0:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ld/x/n;->i0:Z

    .line 3
    invoke-virtual {v0}, Ld/x/h;->a()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Ld/x/h;->b(Ld/x/h$d;)Ld/x/h;

    return-void
.end method
