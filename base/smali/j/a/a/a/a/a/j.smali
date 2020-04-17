.class public final Lj/a/a/a/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lj/a/a/a/a/a/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:J

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public x:Landroid/bluetooth/BluetoothDevice;

.field public y:Lj/a/a/a/a/a/i;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj/a/a/a/a/a/j$a;

    invoke-direct {v0}, Lj/a/a/a/a/a/j$a;-><init>()V

    sput-object v0, Lj/a/a/a/a/a/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILj/a/a/a/a/a/i;J)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    .line 14
    iput p2, p0, Lj/a/a/a/a/a/j;->B:I

    .line 15
    iput p3, p0, Lj/a/a/a/a/a/j;->C:I

    .line 16
    iput p4, p0, Lj/a/a/a/a/a/j;->D:I

    .line 17
    iput p5, p0, Lj/a/a/a/a/a/j;->E:I

    .line 18
    iput p6, p0, Lj/a/a/a/a/a/j;->F:I

    .line 19
    iput p7, p0, Lj/a/a/a/a/a/j;->z:I

    .line 20
    iput p8, p0, Lj/a/a/a/a/a/j;->G:I

    .line 21
    iput-object p9, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    .line 22
    iput-wide p10, p0, Lj/a/a/a/a/a/j;->A:J

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lj/a/a/a/a/a/i;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    .line 3
    iput-object p2, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    .line 4
    iput p3, p0, Lj/a/a/a/a/a/j;->z:I

    .line 5
    iput-wide p4, p0, Lj/a/a/a/a/a/j;->A:J

    const/16 p1, 0x11

    .line 6
    iput p1, p0, Lj/a/a/a/a/a/j;->B:I

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lj/a/a/a/a/a/j;->C:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lj/a/a/a/a/a/j;->D:I

    const/16 p2, 0xff

    .line 9
    iput p2, p0, Lj/a/a/a/a/a/j;->E:I

    const/16 p2, 0x7f

    .line 10
    iput p2, p0, Lj/a/a/a/a/a/j;->F:I

    .line 11
    iput p1, p0, Lj/a/a/a/a/a/j;->G:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lj/a/a/a/a/a/j$a;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object p2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lj/a/a/a/a/a/i;->a([B)Lj/a/a/a/a/a/i;

    move-result-object p2

    iput-object p2, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/j;->z:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lj/a/a/a/a/a/j;->A:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/j;->B:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/j;->C:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/j;->D:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/j;->E:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lj/a/a/a/a/a/j;->F:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lj/a/a/a/a/a/j;->G:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lj/a/a/a/a/a/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lj/a/a/a/a/a/j;

    .line 3
    iget-object v2, p0, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p1, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v3}, Le/c/a/a/b/l/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lj/a/a/a/a/a/j;->z:I

    iget v3, p1, Lj/a/a/a/a/a/j;->z:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    iget-object v3, p1, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    .line 4
    invoke-static {v2, v3}, Le/c/a/a/b/l/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lj/a/a/a/a/a/j;->A:J

    iget-wide v4, p1, Lj/a/a/a/a/a/j;->A:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lj/a/a/a/a/a/j;->B:I

    iget v3, p1, Lj/a/a/a/a/a/j;->B:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj/a/a/a/a/a/j;->C:I

    iget v3, p1, Lj/a/a/a/a/a/j;->C:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj/a/a/a/a/a/j;->D:I

    iget v3, p1, Lj/a/a/a/a/a/j;->D:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj/a/a/a/a/a/j;->E:I

    iget v3, p1, Lj/a/a/a/a/a/j;->E:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj/a/a/a/a/a/j;->F:I

    iget v3, p1, Lj/a/a/a/a/a/j;->F:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lj/a/a/a/a/a/j;->G:I

    iget p1, p1, Lj/a/a/a/a/a/j;->G:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lj/a/a/a/a/a/j;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lj/a/a/a/a/a/j;->A:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lj/a/a/a/a/a/j;->B:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lj/a/a/a/a/a/j;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lj/a/a/a/a/a/j;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lj/a/a/a/a/a/j;->E:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lj/a/a/a/a/a/j;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lj/a/a/a/a/a/j;->G:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ScanResult{device="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/j;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj/a/a/a/a/a/j;->A:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/j;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/j;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/j;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", advertisingSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/j;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/j;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", periodicAdvertisingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/j;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a/a/a/a/a/j;->x:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lj/a/a/a/a/a/j;->y:Lj/a/a/a/a/a/i;

    .line 5
    iget-object p2, p2, Lj/a/a/a/a/a/i;->g:[B

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    :goto_0
    iget p2, p0, Lj/a/a/a/a/a/j;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Lj/a/a/a/a/a/j;->A:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget p2, p0, Lj/a/a/a/a/a/j;->B:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lj/a/a/a/a/a/j;->C:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lj/a/a/a/a/a/j;->D:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lj/a/a/a/a/a/j;->E:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lj/a/a/a/a/a/j;->F:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lj/a/a/a/a/a/j;->G:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
