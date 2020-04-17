.class public final Lk/a/b/a/g/i/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a/b/a/g/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/b/a/g/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/a/b/a/g/g;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lk/a/b/a/g/g;->b()Lk/a/b/a/g/d;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lk/a/b/a/g/g;->p()V

    .line 3
    invoke-interface {v0, p1}, Lk/a/b/a/g/d;->a(Lk/a/b/a/g/g;)V

    return-void
.end method
