.class public Lk/b/a/m2/c;
.super Lk/b/a/n;
.source "SourceFile"


# instance fields
.field public final x:Lk/b/a/p;


# direct methods
.method public constructor <init>(Lk/b/f/a/b;Lk/b/a/p;)V
    .locals 0

    invoke-virtual {p2}, Lk/b/a/p;->j()[B

    move-result-object p1

    .line 1
    invoke-direct {p0}, Lk/b/a/n;-><init>()V

    new-instance p2, Lk/b/a/a1;

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lk/b/a/a1;-><init>([B)V

    iput-object p2, p0, Lk/b/a/m2/c;->x:Lk/b/a/p;

    return-void
.end method


# virtual methods
.method public c()Lk/b/a/t;
    .locals 1

    iget-object v0, p0, Lk/b/a/m2/c;->x:Lk/b/a/p;

    return-object v0
.end method
