.class public Lk/b/i/b/b/b;
.super Lk/b/c/d/a;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lk/b/c/d/a;-><init>(Z)V

    invoke-static {p1}, Lk/b/c/e/a;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/b/b;->a:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lk/b/i/b/b/b;->a:[B

    invoke-static {v0}, Lk/b/c/e/a;->a([B)[B

    move-result-object v0

    return-object v0
.end method
