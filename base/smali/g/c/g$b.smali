.class public final Lg/c/g$b;
.super Ljava/lang/Number;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final x:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 2
    iput p1, p0, Lg/c/g$b;->x:I

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .line 1
    iget v0, p0, Lg/c/g$b;->x:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 1
    iget v0, p0, Lg/c/g$b;->x:I

    int-to-float v0, v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 1
    iget v0, p0, Lg/c/g$b;->x:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 1
    iget v0, p0, Lg/c/g$b;->x:I

    int-to-long v0, v0

    return-wide v0
.end method
