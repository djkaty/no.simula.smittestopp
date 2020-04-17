.class public final Lg/d/a;
.super Lg/d/b;
.source "SourceFile"


# instance fields
.field public final c:Lg/c/g$g;

.field public final d:Lg/c/g$g;


# direct methods
.method public constructor <init>(Lg/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/d/b;-><init>(Lg/c/f;)V

    .line 2
    new-instance p1, Lg/c/g$g;

    invoke-direct {p1, p0}, Lg/c/g$g;-><init>(Lg/c/g;)V

    iput-object p1, p0, Lg/d/a;->c:Lg/c/g$g;

    .line 3
    new-instance p1, Lg/c/g$g;

    invoke-direct {p1, p0}, Lg/c/g$g;-><init>(Lg/c/g;)V

    iput-object p1, p0, Lg/d/a;->d:Lg/c/g$g;

    return-void
.end method
