.class public abstract Lg/c/h$b;
.super Lg/c/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lg/c/h;Lg/c/j;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lg/c/h;->a:Lg/c/f;

    .line 2
    invoke-virtual {v0, p2}, Lg/c/f;->a(Lg/c/j;)Lg/c/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lg/c/h$c;-><init>(Lg/c/h;Lg/c/i;)V

    return-void
.end method
