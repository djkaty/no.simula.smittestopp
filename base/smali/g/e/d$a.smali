.class public interface abstract Lg/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/c;->F_GETFL:Lg/a/d/c;

    invoke-virtual {v0}, Lg/a/d/c;->intValue()I

    .line 2
    sget-object v0, Lg/a/d/c;->F_SETFL:Lg/a/d/c;

    invoke-virtual {v0}, Lg/a/d/c;->intValue()I

    .line 3
    sget-object v0, Lg/a/d/d;->O_NONBLOCK:Lg/a/d/d;

    invoke-virtual {v0}, Lg/a/d/d;->intValue()I

    return-void
.end method


# virtual methods
.method public abstract a(III)I
.end method

.method public abstract a(IIILg/d/b;Lg/c/k/a;)I
.end method

.method public abstract a(IIILjava/nio/ByteBuffer;I)I
.end method

.method public abstract a(IIILjava/nio/ByteBuffer;Lg/c/k/a;)I
.end method

.method public abstract a(ILg/e/e;I)I
.end method

.method public abstract a(ILg/e/e;Lg/c/k/a;)I
.end method

.method public abstract a(I)Ljava/lang/String;
.end method

.method public abstract b(ILg/e/e;I)I
.end method

.method public abstract b(ILg/e/e;Lg/c/k/a;)I
.end method
