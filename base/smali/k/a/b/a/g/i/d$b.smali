.class public Lk/a/b/a/g/i/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/g/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lk/a/b/a/g/i/d;

.field public final b:Lk/a/b/a/g/e;


# direct methods
.method public constructor <init>(Lk/a/b/a/g/i/d;Lk/a/b/a/g/i/d;Lk/a/b/a/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk/a/b/a/g/i/d$b;->a:Lk/a/b/a/g/i/d;

    .line 3
    iput-object p3, p0, Lk/a/b/a/g/i/d$b;->b:Lk/a/b/a/g/e;

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/g/g;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lk/a/b/a/g/i/d$b;->a:Lk/a/b/a/g/i/d;

    .line 2
    iget-object p1, p1, Lk/a/b/a/g/i/d;->C:Ljava/util/Set;

    .line 3
    iget-object v0, p0, Lk/a/b/a/g/i/d$b;->b:Lk/a/b/a/g/e;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lk/a/b/a/g/i/d$b;->a:Lk/a/b/a/g/i/d;

    .line 5
    iget v0, p1, Lk/a/b/a/g/i/d;->D:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lk/a/b/a/g/i/d;->D:I

    .line 6
    iget-object p1, p0, Lk/a/b/a/g/i/d$b;->b:Lk/a/b/a/g/e;

    invoke-interface {p1}, Lk/a/b/a/g/e;->a()V

    :cond_0
    return-void
.end method
