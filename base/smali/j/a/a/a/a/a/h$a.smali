.class public final Lj/a/a/a/a/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lj/a/a/a/a/a/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lj/a/a/a/a/a/h$b;

    invoke-direct {v0}, Lj/a/a/a/a/a/h$b;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lj/a/a/a/a/a/h$b;->a:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj/a/a/a/a/a/h$b;->a(Ljava/lang/String;)Lj/a/a/a/a/a/h$b;

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 8
    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 9
    invoke-virtual {v0, v1}, Lj/a/a/a/a/a/h$b;->a(Landroid/os/ParcelUuid;)Lj/a/a/a/a/a/h$b;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 11
    const-class v3, Landroid/os/ParcelUuid;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uuid is null while uuidMask is not null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    :goto_0
    iput-object v1, v0, Lj/a/a/a/a/a/h$b;->c:Landroid/os/ParcelUuid;

    .line 16
    iput-object v3, v0, Lj/a/a/a/a/a/h$b;->d:Landroid/os/ParcelUuid;

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    .line 18
    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 21
    new-array v4, v4, [B

    .line 22
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_5

    .line 24
    iput-object v1, v0, Lj/a/a/a/a/a/h$b;->e:Landroid/os/ParcelUuid;

    .line 25
    iput-object v4, v0, Lj/a/a/a/a/a/h$b;->f:[B

    .line 26
    iput-object v3, v0, Lj/a/a/a/a/a/h$b;->g:[B

    goto :goto_1

    .line 27
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serviceDataUuid is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 29
    new-array v5, v5, [B

    .line 30
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 31
    invoke-virtual {v0, v1, v4, v5}, Lj/a/a/a/a/a/h$b;->a(Landroid/os/ParcelUuid;[B[B)Lj/a/a/a/a/a/h$b;

    .line 32
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_a

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 35
    new-array v2, v2, [B

    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_9

    if-ltz v1, :cond_8

    .line 38
    iput v1, v0, Lj/a/a/a/a/a/h$b;->h:I

    .line 39
    iput-object v2, v0, Lj/a/a/a/a/a/h$b;->i:[B

    .line 40
    iput-object v3, v0, Lj/a/a/a/a/a/h$b;->j:[B

    goto :goto_2

    .line 41
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid manufacture id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 43
    new-array v3, v3, [B

    .line 44
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lj/a/a/a/a/a/h$b;->a(I[B[B)Lj/a/a/a/a/a/h$b;

    .line 46
    :cond_a
    :goto_2
    invoke-virtual {v0}, Lj/a/a/a/a/a/h$b;->a()Lj/a/a/a/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lj/a/a/a/a/a/h;

    return-object p1
.end method
