.class public final Lj/a/a/a/a/a/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/a/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/os/ParcelUuid;

.field public d:Landroid/os/ParcelUuid;

.field public e:Landroid/os/ParcelUuid;

.field public f:[B

.field public g:[B

.field public h:I

.field public i:[B

.field public j:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lj/a/a/a/a/a/h$b;->h:I

    return-void
.end method


# virtual methods
.method public a(I[B[B)Lj/a/a/a/a/a/h$b;
    .locals 2

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    .line 14
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    :goto_1
    iput p1, p0, Lj/a/a/a/a/a/h$b;->h:I

    .line 18
    iput-object p2, p0, Lj/a/a/a/a/a/h$b;->i:[B

    .line 19
    iput-object p3, p0, Lj/a/a/a/a/a/h$b;->j:[B

    return-object p0
.end method

.method public a(Landroid/os/ParcelUuid;)Lj/a/a/a/a/a/h$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lj/a/a/a/a/a/h$b;->c:Landroid/os/ParcelUuid;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lj/a/a/a/a/a/h$b;->d:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public a(Landroid/os/ParcelUuid;[B[B)Lj/a/a/a/a/a/h$b;
    .locals 2

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    .line 7
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for service data and service data mask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceData is null while serviceDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    :goto_1
    iput-object p1, p0, Lj/a/a/a/a/a/h$b;->e:Landroid/os/ParcelUuid;

    .line 11
    iput-object p2, p0, Lj/a/a/a/a/a/h$b;->f:[B

    .line 12
    iput-object p3, p0, Lj/a/a/a/a/a/h$b;->g:[B

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lj/a/a/a/a/a/h$b;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid device address "

    invoke-static {v1, p1}, Le/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lj/a/a/a/a/a/h$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lj/a/a/a/a/a/h;
    .locals 13

    .line 20
    new-instance v12, Lj/a/a/a/a/a/h;

    iget-object v1, p0, Lj/a/a/a/a/a/h$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lj/a/a/a/a/a/h$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lj/a/a/a/a/a/h$b;->c:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lj/a/a/a/a/a/h$b;->d:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lj/a/a/a/a/a/h$b;->e:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lj/a/a/a/a/a/h$b;->f:[B

    iget-object v7, p0, Lj/a/a/a/a/a/h$b;->g:[B

    iget v8, p0, Lj/a/a/a/a/a/h$b;->h:I

    iget-object v9, p0, Lj/a/a/a/a/a/h$b;->i:[B

    iget-object v10, p0, Lj/a/a/a/a/a/h$b;->j:[B

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lj/a/a/a/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLj/a/a/a/a/a/h$a;)V

    return-object v12
.end method
