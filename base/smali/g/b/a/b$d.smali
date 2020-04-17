.class public Lg/b/a/b$d;
.super Lg/c/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final g:Lg/c/h$i;

.field public final h:Lg/c/h$e;

.field public final i:Lg/c/h$g;


# direct methods
.method public synthetic constructor <init>(Lg/c/f;Lg/b/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/c/h;-><init>(Lg/c/f;)V

    .line 2
    new-instance p1, Lg/c/h$i;

    invoke-direct {p1, p0}, Lg/c/h$i;-><init>(Lg/c/h;)V

    iput-object p1, p0, Lg/b/a/b$d;->g:Lg/c/h$i;

    .line 3
    new-instance p1, Lg/c/h$e;

    invoke-direct {p1, p0}, Lg/c/h$e;-><init>(Lg/c/h;)V

    iput-object p1, p0, Lg/b/a/b$d;->h:Lg/c/h$e;

    .line 4
    new-instance p1, Lg/c/h$g;

    invoke-direct {p1, p0}, Lg/c/h$g;-><init>(Lg/c/h;)V

    iput-object p1, p0, Lg/b/a/b$d;->i:Lg/c/h$g;

    .line 5
    new-instance p1, Lg/c/h$h;

    invoke-direct {p1, p0}, Lg/c/h$h;-><init>(Lg/c/h;)V

    .line 6
    new-instance p1, Lg/c/h$f;

    invoke-direct {p1, p0}, Lg/c/h$f;-><init>(Lg/c/h;)V

    .line 7
    new-instance p1, Lg/c/h$d;

    invoke-direct {p1, p0}, Lg/c/h$d;-><init>(Lg/c/h;)V

    return-void
.end method
