.class public Lg/c/h$d;
.super Lg/c/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lg/c/h;)V
    .locals 2

    .line 1
    sget-object v0, Lg/c/c;->ADDRESS:Lg/c/c;

    .line 2
    iget-object v1, p1, Lg/c/h;->a:Lg/c/f;

    .line 3
    invoke-virtual {v1, v0}, Lg/c/f;->a(Lg/c/c;)Lg/c/i;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lg/c/h$c;-><init>(Lg/c/h;Lg/c/i;)V

    return-void
.end method
