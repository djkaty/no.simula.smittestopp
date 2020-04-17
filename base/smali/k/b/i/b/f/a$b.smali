.class public Lk/b/i/b/f/a$b;
.super Lk/b/i/b/f/a$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/i/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public synthetic constructor <init>(Lk/b/i/b/f/a$a;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lk/b/i/b/f/a$e;-><init>(Lk/b/i/b/f/a$a;)V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/l2/s;Ljava/lang/Object;)Lk/b/c/d/a;
    .locals 0

    new-instance p2, Lk/b/i/b/b/b;

    .line 1
    iget-object p1, p1, Lk/b/a/l2/s;->y:Lk/b/a/r0;

    .line 2
    invoke-virtual {p1}, Lk/b/a/b;->j()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lk/b/i/b/b/b;-><init>([B)V

    return-object p2
.end method
