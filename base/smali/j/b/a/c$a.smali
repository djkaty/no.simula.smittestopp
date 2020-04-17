.class public Lj/b/a/c$a;
.super Ld/u/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/b/a/c;-><init>(Ld/u/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/u/b<",
        "Lj/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lj/b/a/c;Ld/u/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ld/u/b;-><init>(Ld/u/g;)V

    return-void
.end method


# virtual methods
.method public a(Ld/w/a/f/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lj/b/a/a;

    .line 2
    iget-object v0, p2, Lj/b/a/a;->a:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 5
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :goto_0
    const/4 v0, 0x2

    .line 6
    iget-wide v1, p2, Lj/b/a/a;->b:J

    .line 7
    iget-object v3, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 8
    iget-object v0, p2, Lj/b/a/a;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x4

    .line 11
    iget v1, p2, Lj/b/a/a;->d:I

    int-to-long v1, v1

    .line 12
    iget-object v3, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 13
    iget v1, p2, Lj/b/a/a;->e:I

    int-to-long v1, v1

    .line 14
    iget-object v3, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 15
    iget-boolean p2, p2, Lj/b/a/a;->f:Z

    const/4 v0, 0x6

    int-to-long v1, p2

    .line 16
    iget-object p1, p1, Ld/w/a/f/e;->x:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `BluetoothContact` (`id`,`timestamp`,`deviceId`,`rssi`,`txPower`,`isUploaded`) VALUES (?,?,?,?,?,?)"

    return-object v0
.end method
