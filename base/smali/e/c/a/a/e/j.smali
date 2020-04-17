.class public final Le/c/a/a/e/j;
.super Le/c/a/a/b/j/s/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le/c/a/a/e/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:J

.field public B:I

.field public x:Z

.field public y:J

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/e/k;

    invoke-direct {v0}, Le/c/a/a/e/k;-><init>()V

    sput-object v0, Le/c/a/a/e/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/c/a/a/e/j;->x:Z

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Le/c/a/a/e/j;->y:J

    const/4 v0, 0x0

    iput v0, p0, Le/c/a/a/e/j;->z:F

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Le/c/a/a/e/j;->A:J

    const v0, 0x7fffffff

    iput v0, p0, Le/c/a/a/e/j;->B:I

    return-void
.end method

.method public constructor <init>(ZJFJI)V
    .locals 0

    invoke-direct {p0}, Le/c/a/a/b/j/s/a;-><init>()V

    iput-boolean p1, p0, Le/c/a/a/e/j;->x:Z

    iput-wide p2, p0, Le/c/a/a/e/j;->y:J

    iput p4, p0, Le/c/a/a/e/j;->z:F

    iput-wide p5, p0, Le/c/a/a/e/j;->A:J

    iput p7, p0, Le/c/a/a/e/j;->B:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/c/a/a/e/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/c/a/a/e/j;

    iget-boolean v1, p0, Le/c/a/a/e/j;->x:Z

    iget-boolean v3, p1, Le/c/a/a/e/j;->x:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Le/c/a/a/e/j;->y:J

    iget-wide v5, p1, Le/c/a/a/e/j;->y:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Le/c/a/a/e/j;->z:F

    iget v3, p1, Le/c/a/a/e/j;->z:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget-wide v3, p0, Le/c/a/a/e/j;->A:J

    iget-wide v5, p1, Le/c/a/a/e/j;->A:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Le/c/a/a/e/j;->B:I

    iget p1, p1, Le/c/a/a/e/j;->B:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Le/c/a/a/e/j;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Le/c/a/a/e/j;->y:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Le/c/a/a/e/j;->z:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Le/c/a/a/e/j;->A:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Le/c/a/a/e/j;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string v0, "DeviceOrientationRequest[mShouldUseMag="

    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/c/a/a/e/j;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMinimumSamplingPeriodMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/c/a/a/e/j;->y:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSmallestAngleChangeRadians="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/c/a/a/e/j;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/c/a/a/e/j;->A:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, " expireIn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Le/c/a/a/e/j;->B:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/c/a/a/e/j;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ld/b/a/r;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Le/c/a/a/e/j;->x:Z

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ld/b/a/r;->a(Landroid/os/Parcel;IZ)V

    iget-wide v0, p0, Le/c/a/a/e/j;->y:J

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Ld/b/a/r;->a(Landroid/os/Parcel;IJ)V

    iget v0, p0, Le/c/a/a/e/j;->z:F

    const/4 v1, 0x4

    const/4 v2, 0x3

    .line 1
    invoke-static {p1, v2, v1}, Ld/b/a/r;->c(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget-wide v2, p0, Le/c/a/a/e/j;->A:J

    invoke-static {p1, v1, v2, v3}, Ld/b/a/r;->a(Landroid/os/Parcel;IJ)V

    iget v0, p0, Le/c/a/a/e/j;->B:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Ld/b/a/r;->a(Landroid/os/Parcel;II)V

    .line 4
    invoke-static {p1, p2}, Ld/b/a/r;->k(Landroid/os/Parcel;I)V

    return-void
.end method
