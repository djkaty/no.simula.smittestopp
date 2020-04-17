.class public final Lg/e/f;
.super Lg/c/g;
.source "SourceFile"


# instance fields
.field public final c:Lg/c/g$n;

.field public final d:Lg/c/g$o;

.field public final e:Lg/c/g$m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lg/c/f$a;->a:Lg/c/f;

    .line 2
    invoke-direct {p0, v0}, Lg/c/g;-><init>(Lg/c/f;)V

    .line 3
    new-instance v0, Lg/c/g$n;

    invoke-direct {v0, p0}, Lg/c/g$n;-><init>(Lg/c/g;)V

    iput-object v0, p0, Lg/e/f;->c:Lg/c/g$n;

    .line 4
    new-instance v0, Lg/c/g$o;

    invoke-direct {v0, p0}, Lg/c/g$o;-><init>(Lg/c/g;)V

    iput-object v0, p0, Lg/e/f;->d:Lg/c/g$o;

    .line 5
    new-instance v0, Lg/c/g$m;

    invoke-direct {v0, p0}, Lg/c/g$m;-><init>(Lg/c/g;)V

    iput-object v0, p0, Lg/e/f;->e:Lg/c/g$m;

    return-void
.end method
