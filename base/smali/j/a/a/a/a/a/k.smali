.class public final Lj/a/a/a/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a/a/a/a/a/k$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lj/a/a/a/a/a/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:I

.field public B:J

.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:J

.field public I:J

.field public J:Z

.field public K:I

.field public final x:J

.field public final y:J

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj/a/a/a/a/a/k$a;

    invoke-direct {v0}, Lj/a/a/a/a/a/k$a;-><init>()V

    sput-object v0, Lj/a/a/a/a/a/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(IIJIIZIZZZJJJJLj/a/a/a/a/a/k$a;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lj/a/a/a/a/a/k;->z:I

    move v1, p2

    .line 3
    iput v1, v0, Lj/a/a/a/a/a/k;->A:I

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lj/a/a/a/a/a/k;->B:J

    move v1, p6

    .line 5
    iput v1, v0, Lj/a/a/a/a/a/k;->D:I

    move v1, p5

    .line 6
    iput v1, v0, Lj/a/a/a/a/a/k;->C:I

    move v1, p7

    .line 7
    iput-boolean v1, v0, Lj/a/a/a/a/a/k;->J:Z

    move v1, p8

    .line 8
    iput v1, v0, Lj/a/a/a/a/a/k;->K:I

    move v1, p9

    .line 9
    iput-boolean v1, v0, Lj/a/a/a/a/a/k;->E:Z

    move v1, p10

    .line 10
    iput-boolean v1, v0, Lj/a/a/a/a/a/k;->F:Z

    move v1, p11

    .line 11
    iput-boolean v1, v0, Lj/a/a/a/a/a/k;->G:Z

    const-wide/32 v1, 0xf4240

    mul-long v1, v1, p12

    .line 12
    iput-wide v1, v0, Lj/a/a/a/a/a/k;->H:J

    move-wide/from16 v1, p14

    .line 13
    iput-wide v1, v0, Lj/a/a/a/a/a/k;->I:J

    move-wide/from16 v1, p16

    .line 14
    iput-wide v1, v0, Lj/a/a/a/a/a/k;->x:J

    move-wide/from16 v1, p18

    .line 15
    iput-wide v1, v0, Lj/a/a/a/a/a/k;->y:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lj/a/a/a/a/a/k$a;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/k;->z:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/k;->A:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lj/a/a/a/a/a/k;->B:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/k;->C:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/k;->D:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lj/a/a/a/a/a/k;->J:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/k;->K:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lj/a/a/a/a/a/k;->E:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lj/a/a/a/a/a/k;->F:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lj/a/a/a/a/a/k;->x:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lj/a/a/a/a/a/k;->y:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lj/a/a/a/a/a/k;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lj/a/a/a/a/a/k;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-wide v0, p0, Lj/a/a/a/a/a/k;->B:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lj/a/a/a/a/a/k;->C:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lj/a/a/a/a/a/k;->D:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lj/a/a/a/a/a/k;->J:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lj/a/a/a/a/a/k;->K:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-boolean p2, p0, Lj/a/a/a/a/a/k;->E:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean p2, p0, Lj/a/a/a/a/a/k;->F:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-wide v0, p0, Lj/a/a/a/a/a/k;->x:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-wide v0, p0, Lj/a/a/a/a/a/k;->y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
