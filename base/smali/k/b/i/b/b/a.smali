.class public Lk/b/i/b/b/a;
.super Lk/b/c/d/a;
.source "SourceFile"


# instance fields
.field public final a:[S


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lk/b/c/d/a;-><init>(Z)V

    invoke-static {p1}, Lk/b/c/e/a;->a([S)[S

    move-result-object p1

    iput-object p1, p0, Lk/b/i/b/b/a;->a:[S

    return-void
.end method


# virtual methods
.method public a()[S
    .locals 1

    iget-object v0, p0, Lk/b/i/b/b/a;->a:[S

    invoke-static {v0}, Lk/b/c/e/a;->a([S)[S

    move-result-object v0

    return-object v0
.end method
