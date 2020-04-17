.class public abstract Lg/c/g$h;
.super Lg/c/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation


# instance fields
.field public final c:Ljava/nio/charset/Charset;

.field public final d:I


# direct methods
.method public constructor <init>(Lg/c/g;IIILjava/nio/charset/Charset;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg/c/g$a;-><init>(Lg/c/g;II)V

    .line 2
    iput p4, p0, Lg/c/g$h;->d:I

    .line 3
    iput-object p5, p0, Lg/c/g$h;->c:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/c/g$h;->c()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0
.end method
