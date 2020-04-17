.class public interface abstract Lg/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg/a/d/c;->F_GETFL:Lg/a/d/c;

    invoke-virtual {v0}, Lg/a/d/c;->intValue()I

    move-result v0

    sput v0, Lg/b/a/c;->a:I

    .line 2
    sget-object v0, Lg/a/d/c;->F_SETFL:Lg/a/d/c;

    invoke-virtual {v0}, Lg/a/d/c;->intValue()I

    move-result v0

    sput v0, Lg/b/a/c;->b:I

    .line 3
    sget-object v0, Lg/a/d/d;->O_NONBLOCK:Lg/a/d/d;

    invoke-virtual {v0}, Lg/a/d/d;->intValue()I

    move-result v0

    sput v0, Lg/b/a/c;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(II)I
.end method

.method public abstract a(III)I
.end method

.method public abstract a(ILg/c/e;ILg/c/e;ILg/b/a/e;)I
.end method

.method public abstract a(ILjava/nio/ByteBuffer;J)I
.end method

.method public abstract a(I[BJ)I
.end method

.method public abstract a(Ljava/nio/ByteBuffer;II)I
.end method

.method public abstract a([I)I
.end method

.method public abstract a(I)Ljava/lang/String;
.end method

.method public abstract b(I)I
.end method

.method public abstract b(ILjava/nio/ByteBuffer;J)I
.end method
