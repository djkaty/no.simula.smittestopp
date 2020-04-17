.class public Lg/c/g$i;
.super Lg/c/g$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# direct methods
.method public constructor <init>(Lg/c/g;I)V
    .locals 1

    .line 1
    sget-object v0, Lg/c/g;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lg/c/g$j;-><init>(Lg/c/g;ILjava/nio/charset/Charset;)V

    return-void
.end method
