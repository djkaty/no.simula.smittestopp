.class public final Lj/a/a/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:[B


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a/a/a/a/a/i;->b:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lj/a/a/a/a/a/i;->c:Landroid/util/SparseArray;

    .line 4
    iput-object p3, p0, Lj/a/a/a/a/a/i;->d:Ljava/util/Map;

    .line 5
    iput-object p6, p0, Lj/a/a/a/a/a/i;->f:Ljava/lang/String;

    .line 6
    iput p4, p0, Lj/a/a/a/a/a/i;->a:I

    .line 7
    iput p5, p0, Lj/a/a/a/a/a/i;->e:I

    .line 8
    iput-object p7, p0, Lj/a/a/a/a/a/i;->g:[B

    return-void
.end method

.method public static a([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_0

    .line 26
    invoke-static {p0, p1, p3}, Lj/a/a/a/a/a/i;->a([BII)[B

    move-result-object v0

    .line 27
    invoke-static {v0}, Lj/a/a/a/a/a/e;->a([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static a([B)Lj/a/a/a/a/a/i;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    const/4 v8, -0x1

    const/high16 v9, -0x80000000

    .line 1
    :goto_0
    :try_start_0
    array-length v0, p0

    if-ge v1, v0, :cond_b

    add-int/lit8 v0, v1, 0x1

    .line 2
    aget-byte v1, p0, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v0, 0x1

    .line 3
    aget-byte v0, p0, v0

    and-int/2addr v0, v2

    const/16 v4, 0x16

    const/16 v11, 0x10

    const/16 v12, 0x21

    const/16 v13, 0x20

    const/4 v14, 0x2

    if-eq v0, v4, :cond_7

    if-eq v0, v2, :cond_5

    if-eq v0, v13, :cond_7

    if-eq v0, v12, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    aget-byte v0, p0, v3

    move v9, v0

    goto/16 :goto_2

    .line 5
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-static {p0, v3, v1}, Lj/a/a/a/a/a/i;->a([BII)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    move-object v10, v0

    goto/16 :goto_2

    :pswitch_2
    if-nez v5, :cond_2

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_2
    invoke-static {p0, v3, v1, v11, v5}, Lj/a/a/a/a/a/i;->a([BIIILjava/util/List;)I

    goto :goto_2

    :pswitch_3
    if-nez v5, :cond_3

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    const/4 v0, 0x4

    .line 10
    invoke-static {p0, v3, v1, v0, v5}, Lj/a/a/a/a/a/i;->a([BIIILjava/util/List;)I

    goto :goto_2

    :pswitch_4
    if-nez v5, :cond_4

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :cond_4
    invoke-static {p0, v3, v1, v14, v5}, Lj/a/a/a/a/a/i;->a([BIIILjava/util/List;)I

    goto :goto_2

    .line 13
    :pswitch_5
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    move v8, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v3, 0x1

    .line 14
    aget-byte v0, p0, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    aget-byte v4, p0, v3

    and-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v4, v1, -0x2

    .line 15
    invoke-static {p0, v2, v4}, Lj/a/a/a/a/a/i;->a([BII)[B

    move-result-object v2

    if-nez v6, :cond_6

    .line 16
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 17
    :cond_6
    invoke-virtual {v6, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-ne v0, v13, :cond_8

    const/4 v11, 0x4

    goto :goto_1

    :cond_8
    if-ne v0, v12, :cond_9

    goto :goto_1

    :cond_9
    const/4 v11, 0x2

    .line 18
    :goto_1
    invoke-static {p0, v3, v11}, Lj/a/a/a/a/a/i;->a([BII)[B

    move-result-object v0

    .line 19
    invoke-static {v0}, Lj/a/a/a/a/a/e;->a([B)Landroid/os/ParcelUuid;

    move-result-object v0

    add-int v2, v3, v11

    sub-int v4, v1, v11

    .line 20
    invoke-static {p0, v2, v4}, Lj/a/a/a/a/a/i;->a([BII)[B

    move-result-object v2

    if-nez v7, :cond_a

    .line 21
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 22
    :cond_a
    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/2addr v1, v3

    goto/16 :goto_0

    .line 23
    :cond_b
    :goto_3
    new-instance v0, Lj/a/a/a/a/a/i;

    move-object v4, v0

    move-object v11, p0

    invoke-direct/range {v4 .. v11}, Lj/a/a/a/a/a/i;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "unable to parse scan record: "

    .line 24
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lj/a/a/a/a/a/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    move-object v2, v0

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lj/a/a/a/a/a/i;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a([BII)[B
    .locals 2

    .line 28
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 29
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lj/a/a/a/a/a/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lj/a/a/a/a/a/i;

    .line 3
    iget-object v0, p0, Lj/a/a/a/a/a/i;->g:[B

    iget-object p1, p1, Lj/a/a/a/a/a/i;->g:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-string v0, "ScanRecord [advertiseFlags="

    .line 1
    invoke-static {v0}, Le/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj/a/a/a/a/a/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/a/a/a/a/a/i;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", manufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/a/a/a/a/a/i;->c:Landroid/util/SparseArray;

    const-string v2, "="

    const/16 v3, 0x7d

    const-string v4, "{}"

    const/16 v5, 0x7b

    const-string v6, "null"

    if-nez v1, :cond_0

    move-object v1, v6

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    move-object v1, v4

    goto :goto_1

    .line 3
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    .line 5
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 6
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/a/a/a/a/a/i;->d:Ljava/util/Map;

    if-nez v1, :cond_3

    move-object v4, v6

    goto :goto_3

    .line 10
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 14
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 17
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, ", "

    .line 19
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj/a/a/a/a/a/i;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj/a/a/a/a/a/i;->f:Ljava/lang/String;

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Le/a/a/a/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
