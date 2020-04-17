.class public Ld/b/c/a/a$d;
.super Ld/b/c/a/a$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ld/y/a/a/c;


# direct methods
.method public constructor <init>(Ld/y/a/a/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ld/b/c/a/a$g;-><init>(Ld/b/c/a/a$a;)V

    .line 2
    iput-object p1, p0, Ld/b/c/a/a$d;->a:Ld/y/a/a/c;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/c/a/a$d;->a:Ld/y/a/a/c;

    invoke-virtual {v0}, Ld/y/a/a/c;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/b/c/a/a$d;->a:Ld/y/a/a/c;

    invoke-virtual {v0}, Ld/y/a/a/c;->stop()V

    return-void
.end method
